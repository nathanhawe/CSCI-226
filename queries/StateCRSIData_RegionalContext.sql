/*
	State CRSI Data (Regional COntext)
	This query shows the min, max, and average CRSI for each state (plus DC) as well as a comparison between the state
	average and the regional average.  Records are ordered by the difference between the state and regional average to 
	emphasize the outliers within EPA regions.
*/

SELECT
	  [State].UsState
	, [State].EpaRegion
	, [State].ReportYear
	, [State].MinCrsi
	, [State].MaxCrsi
	, [State].AvgStateCrsi
	, Regional.AvgCrsi AS AvgRegionCrsi
	, [State].AvgStateCrsi - Regional.AvgCrsi AS StateToRegionCrsiDiff
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
	
	LEFT JOIN (
		Select
			  EpaRegion
			, AVG(Crsi) AS AvgCrsi
		FROM CSCI226.dbo.EpaCrsi
		GROUP BY 
			EpaRegion
	) Regional ON 
		[State].EpaRegion = Regional.EpaRegion
ORDER BY
	  StateToRegionCrsiDiff DESC