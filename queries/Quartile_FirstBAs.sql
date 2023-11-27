/*
	This query breaks the percentage of BA holder first major's into quartiles and displays 
	the min, max, and average Crsi for each quartile.  This is done for each BA category in
	the census data.
*/

SELECT
	 Crsi.Quartile AS 'Science and Engineering Quartiles'
	 , MIN(Crsi.Crsi) AS MinCrsi
	 , MAX(Crsi.Crsi) AS MaxCrsi
	 , AVG(Crsi.Crsi) AS AVGCrsi
FROM (
		SELECT 
			  EpaCrsi.EpaRegion
			, EpaCrsi.UsState
			, EpaCrsi.County
			, EpaCrsi.ReportYear
			, EpaCrsi.Crsi
			, NTILE(4) OVER (ORDER BY (FirstBa.Adults25YearsAndOver_Science_Engineering + FirstBa.Adults25YearsAndOver_Science_Engineering_Related)/FirstBa.Adults25YearsAndOver_TotalBachelorsDegreeOrHigher DESC) AS Quartile
		FROM CSCI226.dbo.EpaCrsi
			INNER JOIN CSCI226.dbo.EpaCensusMap ON
				EpaCrsi.UsState = EpaCensusMap.UsState
				AND EpaCrsi.County = EpaCensusMap.County

			LEFT JOIN CSCI226.dbo.vw_EducationalAttainment EdAttain ON
				EpaCensusMap.GEO_ID = EdAttain.GEO_ID

			LEFT JOIN CSCI226.dbo.vw_FirstMajorBaField FirstBa ON
				EpaCensusMap.GEO_ID = FirstBa.GEO_ID
		WHERE
			FirstBa.Adults25YearsAndOver_TotalBachelorsDegreeOrHigher > 0 -- Loving Texas has zeros and Valdez-Cordova, AK has no values in the census data
	) Crsi
GROUP BY
	Crsi.Quartile

SELECT
	 Crsi.Quartile AS 'Business Quartiles'
	 , MIN(Crsi.Crsi) AS MinCrsi
	 , MAX(Crsi.Crsi) AS MaxCrsi
	 , AVG(Crsi.Crsi) AS AVGCrsi
FROM (
		SELECT 
			  EpaCrsi.EpaRegion
			, EpaCrsi.UsState
			, EpaCrsi.County
			, EpaCrsi.ReportYear
			, EpaCrsi.Crsi
			, NTILE(4) OVER (ORDER BY FirstBa.Adults25YearsAndOver_Business/FirstBa.Adults25YearsAndOver_TotalBachelorsDegreeOrHigher DESC) AS Quartile
		FROM CSCI226.dbo.EpaCrsi
			INNER JOIN CSCI226.dbo.EpaCensusMap ON
				EpaCrsi.UsState = EpaCensusMap.UsState
				AND EpaCrsi.County = EpaCensusMap.County

			LEFT JOIN CSCI226.dbo.vw_EducationalAttainment EdAttain ON
				EpaCensusMap.GEO_ID = EdAttain.GEO_ID

			LEFT JOIN CSCI226.dbo.vw_FirstMajorBaField FirstBa ON
				EpaCensusMap.GEO_ID = FirstBa.GEO_ID
		WHERE
			FirstBa.Adults25YearsAndOver_TotalBachelorsDegreeOrHigher > 0 -- Loving Texas has zeros and Valdez-Cordova, AK has no values in the census data
	) Crsi
GROUP BY
	Crsi.Quartile

SELECT
	 Crsi.Quartile AS 'Education Quartiles'
	 , MIN(Crsi.Crsi) AS MinCrsi
	 , MAX(Crsi.Crsi) AS MaxCrsi
	 , AVG(Crsi.Crsi) AS AVGCrsi
FROM (
		SELECT 
			  EpaCrsi.EpaRegion
			, EpaCrsi.UsState
			, EpaCrsi.County
			, EpaCrsi.ReportYear
			, EpaCrsi.Crsi
			, NTILE(4) OVER (ORDER BY FirstBa.Adults25YearsAndOver_Education/FirstBa.Adults25YearsAndOver_TotalBachelorsDegreeOrHigher DESC) AS Quartile
		FROM CSCI226.dbo.EpaCrsi
			INNER JOIN CSCI226.dbo.EpaCensusMap ON
				EpaCrsi.UsState = EpaCensusMap.UsState
				AND EpaCrsi.County = EpaCensusMap.County

			LEFT JOIN CSCI226.dbo.vw_EducationalAttainment EdAttain ON
				EpaCensusMap.GEO_ID = EdAttain.GEO_ID

			LEFT JOIN CSCI226.dbo.vw_FirstMajorBaField FirstBa ON
				EpaCensusMap.GEO_ID = FirstBa.GEO_ID
		WHERE
			FirstBa.Adults25YearsAndOver_TotalBachelorsDegreeOrHigher > 0 -- Loving Texas has zeros and Valdez-Cordova, AK has no values in the census data
	) Crsi
GROUP BY
	Crsi.Quartile

SELECT
	 Crsi.Quartile AS 'Arts, Humanities, and Other Quartiles'
	 , MIN(Crsi.Crsi) AS MinCrsi
	 , MAX(Crsi.Crsi) AS MaxCrsi
	 , AVG(Crsi.Crsi) AS AVGCrsi
FROM (
		SELECT 
			  EpaCrsi.EpaRegion
			, EpaCrsi.UsState
			, EpaCrsi.County
			, EpaCrsi.ReportYear
			, EpaCrsi.Crsi
			, NTILE(4) OVER (ORDER BY FirstBa.Adults25YearsAndOver_Arts_Humanities_Other/FirstBa.Adults25YearsAndOver_TotalBachelorsDegreeOrHigher DESC) AS Quartile
		FROM CSCI226.dbo.EpaCrsi
			INNER JOIN CSCI226.dbo.EpaCensusMap ON
				EpaCrsi.UsState = EpaCensusMap.UsState
				AND EpaCrsi.County = EpaCensusMap.County

			LEFT JOIN CSCI226.dbo.vw_EducationalAttainment EdAttain ON
				EpaCensusMap.GEO_ID = EdAttain.GEO_ID

			LEFT JOIN CSCI226.dbo.vw_FirstMajorBaField FirstBa ON
				EpaCensusMap.GEO_ID = FirstBa.GEO_ID
		WHERE
			FirstBa.Adults25YearsAndOver_TotalBachelorsDegreeOrHigher > 0 -- Loving Texas has zeros and Valdez-Cordova, AK has no values in the census data
	) Crsi
GROUP BY
	Crsi.Quartile


