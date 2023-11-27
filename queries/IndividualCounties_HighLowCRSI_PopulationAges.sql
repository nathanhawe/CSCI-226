/*
	This query finds two high and two low CRSI valued counties and displays the total populations and proportion
	of young (0-19 years), working age (20-69), and retired (70+) for comparison.  The highest and lowest CRSI
	are selected and then the highest and lowest excluding the Alaska and Kentucky (which are the states with
	the highest and lowest respectively).  
*/

SELECT 
	  Counties.EpaRegion
	, Counties.UsState
	, Counties.County
	, Counties.ReportYear
	, Counties.Crsi
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
FROM 
	(
		-- Find the county with the highest Crsi
		SELECT TOP (1)
			  EpaRegion
			, UsState
			, County
			, ReportYear
			, Crsi
		FROM CSCI226.dbo.EpaCrsi
		ORDER BY Crsi DESC

		UNION

		-- Find the county with the highest Crsi (not in Alaska)
		SELECT TOP (1)
			  EpaRegion
			, UsState
			, County
			, ReportYear
			, Crsi
		FROM CSCI226.dbo.EpaCrsi
		WHERE
			UsState <> 'Alaska'
		ORDER BY Crsi DESC

		UNION 

		-- Find the county with the lowest Crsi
		SELECT TOP (1)
			  EpaRegion
			, UsState
			, County
			, ReportYear
			, Crsi
		FROM CSCI226.dbo.EpaCrsi
		ORDER BY Crsi ASC

		UNION

		-- Find the county with the lowest Crsi (Not in Kentucky)
		SELECT TOP (1)
			  EpaRegion
			, UsState
			, County
			, ReportYear
			, Crsi
		FROM CSCI226.dbo.EpaCrsi
		WHERE UsState <> 'Kentucky'
		ORDER BY Crsi ASC
	) Counties

	INNER JOIN CSCI226.dbo.EpaCensusMap ON
		Counties.UsState = EpaCensusMap.UsState
		AND Counties.County = EpaCensusMap.County

	LEFT JOIN CSCI226.dbo.vw_GeneralPopulationsAndHousing GenPop ON
		EpaCensusMap.GEO_ID = GenPop.GEO_ID
ORDER BY
	Counties.Crsi DESC
