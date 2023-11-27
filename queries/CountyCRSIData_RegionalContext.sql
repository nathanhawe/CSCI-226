/*
	County CRSI Data (Regional Context)
	This query shows the CRSI for each county as well as a comparison between the county average and 
	the regional average.  Records are ordered by the difference between the county and regional average
	to emphasize the outliers within a region.
*/

SELECT
	  EpaCrsi.County
	, EpaCrsi.UsState
	, EpaCrsi.EpaRegion
	, EpaCrsi.ReportYear
	, EpaCrsi.Crsi
	, EpaCrsi.Crsi - Region.AvgCrsi AS CountyToRegionalCrsiDiff
FROM CSCI226.dbo.EpaCrsi
	LEFT JOIN (
		Select
			  EpaRegion
			, AVG(Crsi) AS AvgCrsi
		FROM CSCI226.dbo.EpaCrsi
		GROUP BY 
			EpaRegion
	) Region ON 
		EpaCrsi.EpaRegion = Region.EpaRegion
ORDER BY
	  CountyToRegionalCrsiDiff DESC