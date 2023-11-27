/*
	State CRSI Data (National Context)
	This query shows the min, max, and average CRSI for each state (plus DC) as well as a comparison between the state
	average and the national average.  Records are ordered by the difference between the state and national average to 
	emphasize the overall differences.
*/

SELECT
	  [State].UsState
	, [State].EpaRegion
	, [State].ReportYear
	, [State].MinCrsi
	, [State].MaxCrsi
	, [State].AvgStateCrsi
	, [National].AvgCrsi AS AvgNationalCrsi
	, [State].AvgStateCrsi - [National].AvgCrsi AS StateToNationalCrsiDiff
FROM 
	(
		SELECT
			  UsState
			, EpaRegion
			, ReportYear
			, Min(Crsi) AS MinCrsi
			, Max(Crsi) AS MaxCrsi
			, AVG(Crsi) As AvgStateCrsi
		FROM CSCI226.dbo.EpaCrsi
		GROUP BY 
			  UsState
			, EpaRegion
			, ReportYear
	) [State]
	
	OUTER APPLY (
		Select
			AVG(Crsi) AS AvgCrsi
		FROM CSCI226.dbo.EpaCrsi
	) [National]
ORDER BY
	  StateToNationalCrsiDiff DESC