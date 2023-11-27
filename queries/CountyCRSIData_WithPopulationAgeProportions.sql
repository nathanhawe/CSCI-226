/*
	Query that joins EPA CRSI data with population and housing data to show percentages of population below 20, between 20
	and 69, and 70+.  
*/
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
	, (GenPop.TotalPopulation_Age20to24 + GenPop.TotalPopulation_Age25to29 + GenPop.TotalPopulation_Age30to34 
		+ GenPop.TotalPopulation_Age35to39 + GenPop.TotalPopulation_Age40to44 + GenPop.TotalPopulation_Age45to49
		+ GenPop.TotalPopulation_Age50to54 + GenPop.TotalPopulation_Age55to59 + GenPop.TotalPopulation_Age60to64
		+ GenPop.TotalPopulation_Age65to69) / GenPop.TotalPopulation
		AS PopulationBetween20And69YearsPercent
	, (GenPop.TotalPopulation_Age70to74 + GenPop.TotalPopulation_Age75to79 + GenPop.TotalPopulation_Age80to84
		+ GenPop.TotalPopulation_Age85) / GenPop.TotalPopulation
		AS Population70AndAbovePercent
FROM [CSCI226].[dbo].[EpaCrsi]
	INNER JOIN CSCI226.dbo.EpaCensusMap ON
		EpaCrsi.UsState = EpaCensusMap.UsState
		AND EpaCrsi.County = EpaCensusMap.County
	LEFT JOIN CSCI226.dbo.vw_GeneralPopulationsAndHousing GenPop ON
		EpaCensusMap.GEO_ID = GenPop.GEO_ID
ORDER BY 
	Population70AndAbovePercent DESC