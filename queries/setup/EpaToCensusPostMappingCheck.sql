/*
	This script is used to check the mapping between EpaCris and Dp1 via EpaCensusMap.  All of the 
	census based data uses the same GEO_ID keys so a map between EpaCrsi and Dp1 will also map to 
	Dp03, S1501, and S1502.
*/

-- Check for duplicate matches
-- There are 3134 CRSI and 3221 Census Records
-- Valez-Cordova in CRSI does not match in Census Records
-- Essex, VT in Census Records does not match in CRSI
-- Expect 88 unmatched Census -> CRSI
-- Expect 1 unmatched CRSI -> Census

Select
	  c.GEO_ID
	, c.[NAME]
	, e.County
FROM CSCI226.dbo.Dp1 c
	LEFT JOIN CSCI226.dbo.EpaCensusMap m ON
		c.GEO_ID = m.GEO_ID
	LEFT JOIN CSCI226.dbo.EpaCrsi e ON
		m.UsState = e.UsState
		AND m.County = e.County
WHERE e.County IS NULL

-- Check for mismatches from CRSI to Census (expecting 1)
SELECT
	  e.UsState
	, e.County
	, c.GEO_ID
FROM CSCI226.dbo.EpaCrsi e
	LEFT JOIN CSCI226.dbo.EpaCensusMap m ON
		e.UsState = m.UsState
		AND e.County = m.County
	LEFT JOIN CSCI226.dbo.Dp1 c ON
		m.GEO_ID = c.GEO_ID
WHERE c.GEO_ID IS NULL