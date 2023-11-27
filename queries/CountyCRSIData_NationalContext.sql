/*
	County CRSI Data (National Context)
	This query shows the CRSI for each county as well as a comparison between the county average and 
	the national average.  Records are ordered by the difference between the county and national average
	to emphasize the overall differences.
*/

SELECT
	  EpaCrsi.County
	, EpaCrsi.UsState
	, EpaCrsi.EpaRegion
	, EpaCrsi.ReportYear
	, EpaCrsi.Crsi
	, EpaCrsi.Crsi - [National].AvgCrsi AS CountyToNationalCrsiDiff
FROM CSCI226.dbo.EpaCrsi
	OUTER APPLY (
		Select
			AVG(Crsi) AS AvgCrsi
		FROM CSCI226.dbo.EpaCrsi
	) [National]
ORDER BY
	  CountyToNationalCrsiDiff DESC