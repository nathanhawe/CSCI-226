/*
	This script was used to analyze the differences between state and county values in EpaCrsi and Dp1
	in order to build a mapping table between the two sets of data.  All of the census based data uses
	the same GEO_ID keys so a map between EpaCrsi and Dp1 will also map to Dp03, S1501, and S1502.
*/
DECLARE @Map table (
	  GEO_ID VARCHAR(255) NOT NULL
	, [NAME] NVARCHAR(255) NOT NULL
	, StateName VARCHAR(255) NOT NULL
	, CountyName NVARCHAR(255) NOT NULL
)
DECLARE @Corrections table (
	  GEO_ID VARCHAR(255) NOT NULL
	, CountyName NVARCHAR(255) NOT NULL
)

INSERT INTO @Map
	SELECT
		  GEO_ID
		, [NAME]
		, TRIM(RIGHT([NAME], CHARINDEX(',', REVERSE([NAME]))-1)) AS StateName
		, TRIM(LEFT([NAME], LEN([NAME]) - CHARINDEX(',', REVERSE([NAME])))) AS CountyName
	FROM CSCI226.dbo.Dp1
	WHERE
		[NAME] not like '% County%'
		AND [NAME] not like '% Borough,%'
		AND [NAME] not like '%Census Area%'
		AND [NAME] not like '% Municipality%'
		AND [NAME] not like '% Parish%'
	UNION ALL
	SELECT
		  GEO_ID
		, [NAME]
		, TRIM(RIGHT([NAME], CHARINDEX(',', REVERSE([NAME]))-1)) AS StateName
		, TRIM(LEFT([NAME], LEN([NAME]) - CHARINDEX(',', REVERSE([NAME])) - LEN(' County'))) AS CountyName
	FROM CSCI226.dbo.Dp1
	WHERE
		[NAME] like '% County%'
	UNION ALL
	SELECT
		  GEO_ID
		, [NAME]
		, TRIM(RIGHT([NAME], CHARINDEX(',', REVERSE([NAME]))-1)) AS StateName
		, TRIM(LEFT([NAME], LEN([NAME]) - CHARINDEX(',', REVERSE([NAME])) - LEN(' Borough'))) AS CountyName
	FROM CSCI226.dbo.Dp1
	WHERE
		[NAME] like '% Borough%'
	UNION ALL
	SELECT
		  GEO_ID
		, [NAME]
		, TRIM(RIGHT([NAME], CHARINDEX(',', REVERSE([NAME]))-1)) AS StateName
		, TRIM(LEFT([NAME], LEN([NAME]) - CHARINDEX(',', REVERSE([NAME])) - LEN('Census Area'))) AS CountyName
	FROM CSCI226.dbo.Dp1
	WHERE
		[NAME] like '%Census Area%'
	UNION ALL
	SELECT
		  GEO_ID
		, [NAME]
		, TRIM(RIGHT([NAME], CHARINDEX(',', REVERSE([NAME]))-1)) AS StateName
		, TRIM(LEFT([NAME], LEN([NAME]) - CHARINDEX(',', REVERSE([NAME])) - LEN(' Municipality'))) AS CountyName
	FROM CSCI226.dbo.Dp1
	WHERE
		[NAME] like '% Municipality%'
	UNION ALL
	SELECT
		  GEO_ID
		, [NAME]
		, TRIM(RIGHT([NAME], CHARINDEX(',', REVERSE([NAME]))-1)) AS StateName
		, TRIM(LEFT([NAME], LEN([NAME]) - CHARINDEX(',', REVERSE([NAME])) - LEN(' Parish'))) AS CountyName
	FROM CSCI226.dbo.Dp1
	WHERE
		[NAME] like '% Parish%'

-- Corrections
INSERT INTO @Corrections VALUES
	 ('0500000US02110', 'Juneau City')
	,('0500000US02198', 'Prince of Wales-Hyde')
	,('0500000US02220', 'Sitka City')
	,('0500000US02275', 'Wrangell')
	,('0500000US02282', 'Yakutat')
	,('0500000US29189', 'St. Louis County')
	,('0500000US32510', 'Carson')
	,('0500000US51510', 'Alexandria')
	,('0500000US51520', 'Bristol')
	,('0500000US51530', 'Buena Vista')
	,('0500000US51540', 'Charlottesville')
	,('0500000US51550', 'Chesapeake')
	,('0500000US51570', 'Colonial Heights')
	,('0500000US51580', 'Covington')
	,('0500000US51590', 'Danville')
	,('0500000US51595', 'Emporia')
	,('0500000US51059', 'Fairfax')
	,('0500000US51610', 'Falls Church')
	,('0500000US51067', 'Franklin')
	,('0500000US51630', 'Fredericksburg')
	,('0500000US51640', 'Galax')
	,('0500000US51650', 'Hampton')
	,('0500000US51660', 'Harrisonburg')
	,('0500000US51670', 'Hopewell')
	,('0500000US51678', 'Lexington')
	,('0500000US51680', 'Lynchburg')
	,('0500000US51683', 'Manassas')
	,('0500000US51685', 'Manassas Park')
	,('0500000US51690', 'Martinsville')
	,('0500000US51700', 'Newport News')
	,('0500000US51710', 'Norfolk')
	,('0500000US51720', 'Norton')
	,('0500000US51730', 'Petersburg')
	,('0500000US51735', 'Poquoson')
	,('0500000US51740', 'Portsmouth')
	,('0500000US51750', 'Radford')
	,('0500000US51159', 'Richmond')
	,('0500000US51161', 'Roanoke')
	,('0500000US51775', 'Salem')
	,('0500000US51790', 'Staunton')
	,('0500000US51800', 'Suffolk')
	,('0500000US51810', 'Virginia Beach')
	,('0500000US51820', 'Waynesboro')
	,('0500000US51830', 'Williamsburg')
	,('0500000US51840', 'Winchester')
	,('0500000US53051', 'Pend Orielle')

UPDATE m
	SET CountyName = c.CountyName
FROM @Map m
	INNER JOIN @Corrections c ON
		m.GEO_ID = c.GEO_ID


-- Check for duplicate matches
-- There are 3134 CRSI and 3221 Census Records
-- Valez-Cordova in CRSI does not match in Census Records
-- Essex, VT in Census Records does not match in CRSI
-- Expect 88 unmatched Census -> CRSI
-- Expect 1 unmatched CRSI - Census
Select
	  m.GEO_ID
	, m.[NAME]
	, m.StateName
	, m.CountyName
	, COUNT(e.County) As TotalEpaCrsi
	--, e.UsState
	--, e.County
FROM @Map m
	LEFT JOIN CSCI226.dbo.EpaCrsi e ON
		m.StateName = e.UsState
		AND m.CountyName = e.County
GROUP BY
	  m.GEO_ID
	, m.[NAME]
	, m.StateName
	, m.CountyName
HAVING
	COUNT(e.County) <> 1
ORDER BY 
	COUNT(e.County) DESC


-- Check for mismatches from CRSI to Census (expecting 1)
SELECT
	  e.UsState
	, e.County
	, m.GEO_ID
FROM CSCI226.dbo.EpaCrsi e
	LEFT JOIN @Map m ON
		e.UsState = m.StateName
		AND e.County = m.CountyName
WHERE m.GEO_ID IS NULL