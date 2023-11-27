/*
	EPA Regional CRSI Data
	This query shows the min, max, and average CRSI for each EPA region as well as a comparison between the regional
	average and the national average.  Records are ordered by the difference between the regional and national 
	average to emphasize the overall differences between regions.
*/

SELECT
	  Region.EpaRegion
	, Region.ReportYear
	, Region.MinCrsi
	, Region.MaxCrsi
	, Region.AvgRegionalCrsi
	, [National].AvgCrsi AS AvgNationalCrsi
	, Region.AvgRegionalCrsi - [National].AvgCrsi AS RegionalToNationalCrsiDiff
FROM 
	(
		SELECT
			  EpaRegion
			, ReportYear
			, Min(Crsi) AS MinCrsi
			, Max(Crsi) AS MaxCrsi
			, AVG(Crsi) As AvgRegionalCrsi
		FROM CSCI226.dbo.EpaCrsi
		GROUP BY 
			  EpaRegion
			, ReportYear
	) Region
	
	OUTER APPLY (
		Select
			AVG(Crsi) AS AvgCrsi
		FROM CSCI226.dbo.EpaCrsi
	) [National]
ORDER BY
	  RegionalToNationalCrsiDiff DESC