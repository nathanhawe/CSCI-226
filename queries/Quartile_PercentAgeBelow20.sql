/*
	CRSI Data for 'Young' Counties
	This query shows the min, max, and average CRSI for all counties broken into quartiles based
	on the percent of the population that is under the age of 20.
*/
SELECT
	  Quartile
	, MIN(Counties.Crsi) As MinCrsi
	, MAX(Counties.Crsi) As MaxCrsi
	, AVG(Counties.Crsi) As AvgCrsi
	, MIN(Counties.PopulationBelow20YearsPercent) AS MinPopulationBelow20YearsPercent
	, MAX(Counties.PopulationBelow20YearsPercent) AS MaxPopulationBelow20YearsPercent
	, AVG(Counties.PopulationBelow20YearsPercent) AS AvgPopulationBelow20YearsPercent
FROM (
	SELECT
		  EpaCrsi.EpaRegion
		, EpaCrsi.[UsState]
		, EpaCrsi.[County]
		, EpaCrsi.[ReportYear]
		, EpaCrsi.[Crsi]
		, GenPop.TotalPopulation
		, (GenPop.TotalPopulation_UnderAge5 + GenPop.TotalPopulation_Age5to9 + GenPop.TotalPopulation_Age10to14 
			+ GenPop.TotalPopulation_Age15to19) / GenPop.TotalPopulation 
			AS PopulationBelow20YearsPercent
		, NTILE(4) OVER
			(
				ORDER BY 
					(
						GenPop.TotalPopulation_UnderAge5 + GenPop.TotalPopulation_Age5to9 + GenPop.TotalPopulation_Age10to14 
						+ GenPop.TotalPopulation_Age15to19
					) / GenPop.TotalPopulation DESC
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
