/*
	CRSI Data for 'Old' Counties
	This query shows the min, max, and average CRSI for all counties broken into quartiles based
	on the percent of the population that is 70 years of age or older.
*/
SELECT
	  Quartile
	, MIN(Counties.Crsi) As MinCrsi
	, MAX(Counties.Crsi) As MaxCrsi
	, AVG(Counties.Crsi) As AvgCrsi
	, MIN(Counties.Population70AndAbovePercent) AS MinPopulation70AndAbovePercent
	, MAX(Counties.Population70AndAbovePercent) AS MaxPopulation70AndAbovePercent
	, AVG(Counties.Population70AndAbovePercent) AS AvgPopulation70AndAbovePercent
FROM (
	SELECT
		  EpaCrsi.EpaRegion
		, EpaCrsi.[UsState]
		, EpaCrsi.[County]
		, EpaCrsi.[ReportYear]
		, EpaCrsi.[Crsi]
		, GenPop.TotalPopulation
		, (GenPop.TotalPopulation_Age70to74 + GenPop.TotalPopulation_Age75to79 + GenPop.TotalPopulation_Age80to84
			+ GenPop.TotalPopulation_Age85) / GenPop.TotalPopulation
			AS Population70AndAbovePercent
		, NTILE(4) OVER
			(
				ORDER BY 
					(
						GenPop.TotalPopulation_Age70to74 + GenPop.TotalPopulation_Age75to79 + GenPop.TotalPopulation_Age80to84
						+ GenPop.TotalPopulation_Age85
					) / GenPop.TotalPopulation
			) AS Quartile
	FROM [CSCI226].[dbo].[EpaCrsi]
		INNER JOIN CSCI226.dbo.EpaCensusMap ON
			EpaCrsi.UsState = EpaCensusMap.UsState
			AND EpaCrsi.County = EpaCensusMap.County
		LEFT JOIN CSCI226.dbo.vw_GeneralPopulationsAndHousing GenPop ON
			EpaCensusMap.GEO_ID = GenPop.GEO_ID
	) Counties
GROUP BY 
	  Counties.Quartile
ORDER BY 
	Quartile ASC