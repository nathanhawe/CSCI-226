/*
	This query finds two high and two low CRSI valued counties and displays the total populations and proportions 
	based on educational attainment.  For the subset of the population which received a BA, the proportion of 
	first majors is also displayed.  The highest and lowest CRSI counties are selected and then the highest and l
	lowest excluding Alaska and Kentucky (which are the states with the highest and lowest respectively) are also
	select.  
*/
SELECT 
	  Counties.EpaRegion
	, Counties.UsState
	, Counties.County
	, Counties.ReportYear
	, Counties.Crsi
	, EdAttain.Adults25YearsAndOver_NoHighSchool / EdAttain.Adults25YearsAndOver_TotalPopulation AS PercentNoHighSchool
	, EdAttain.Adults25YearsAndOver_HighSchoolWithoutDiploma / EdAttain.Adults25YearsAndOver_TotalPopulation AS PercentHighSchoolWithoutDiplomaOnly
	, EdAttain.Adults25YearsAndOver_HighSchoolGraduate / EdAttain.Adults25YearsAndOver_TotalPopulation AS PercentHighSchoolOnly
	, EdAttain.Adults25YearsAndOver_SomeCollege / EdAttain.Adults25YearsAndOver_TotalPopulation AS PercentSomeCollegeOnly
	, EdAttain.Adults25YearsAndOver_AssociatesDegree / EdAttain.Adults25YearsAndOver_TotalPopulation AS AssociatesOnly
	, Edattain.Adults25YearsAndOver_BachelorsDegree / EdAttain.Adults25YearsAndOver_TotalPopulation AS BachelorsOnly
	, EdAttain.Adults25YearsAndOver_GraduateOrProfessionalDegree / EdAttain.Adults25YearsAndOver_TotalPopulation AS GraduateOrProfessionalDegree
	, EdAttain.Adults25YearsAndOver_TotalHighSchoolGraduateOrHigher / EdAttain.Adults25YearsAndOver_TotalPopulation AS PercentHighSchoolOrHigher
	, EdAttain.Adults25YearsAndOver_TotalBachelorsDegreeOrHigher / EdAttain.Adults25YearsAndOver_TotalPopulation AS PercentBachelorsOrHigher
	, (FirstBa.Adults25YearsAndOver_Science_Engineering + FirstBa.Adults25YearsAndOver_Science_Engineering_Related) / FirstBa.Adults25YearsAndOver_TotalBachelorsDegreeOrHigher As PercentBaInScienceEngineering
	, FirstBa.Adults25YearsAndOver_Business / FirstBa.Adults25YearsAndOver_TotalBachelorsDegreeOrHigher As PercentBaInBusiness
	, FirstBa.Adults25YearsAndOver_Education / FirstBa.Adults25YearsAndOver_TotalBachelorsDegreeOrHigher As PercentBaInEducation
	, FirstBa.Adults25YearsAndOver_Arts_Humanities_Other / FirstBa.Adults25YearsAndOver_TotalBachelorsDegreeOrHigher As PercentBaInArtsHumanitiesAndOther
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

	LEFT JOIN CSCI226.dbo.vw_EducationalAttainment EdAttain ON
		EpaCensusMap.GEO_ID = EdAttain.GEO_ID

	LEFT JOIN CSCI226.dbo.vw_FirstMajorBaField FirstBa ON
		EpaCensusMap.GEO_ID = FirstBa.GEO_ID
ORDER BY
	Counties.Crsi DESC
