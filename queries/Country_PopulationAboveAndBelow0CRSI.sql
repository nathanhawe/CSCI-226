/*
	This query shows the population totals and national percentage above and below a
	CRSI of 0.  
*/

SELECT
	  CrsiCat.CrsiCategory
	, CrsiCat.TotalPopulation As CategoryPopulation
	, CrsiCat.TotalPopulation / [National].TotalPopulation AS PercentOfNationalPopulation
FROM (
		Select
			  CASE
				WHEN EpaCrsi.Crsi < 0 THEN '<0'
				ELSE '>=0'
			  END AS CrsiCategory
			, SUM(GenPop.TotalPopulation) AS TotalPopulation
		FROM CSCI226.dbo.EpaCrsi
			INNER JOIN CSCI226.dbo.EpaCensusMap ON
				EpaCrsi.UsState = EpaCensusMap.UsState
				AND EpaCrsi.County = EpaCensusMap.County
			LEFT JOIN CSCI226.dbo.vw_GeneralPopulationsAndHousing GenPop ON
				EpaCensusMap.GEO_ID = GenPop.GEO_ID
		GROUP BY
			CASE
				WHEN EpaCrsi.Crsi < 0 THEN '<0'
				ELSE '>=0'
			  END
	) CrsiCat

	OUTER APPLY (
		SELECT
			SUM(sub_GenPop.TotalPopulation) As TotalPopulation
		FROM CSCI226.dbo.vw_GeneralPopulationsAndHousing sub_GenPop
	) [National]
