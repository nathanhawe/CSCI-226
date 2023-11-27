/*
	County CRSI Data (State Context)
	This query shows the CRSI for each county as well as a comparison between the county average and 
	the state average.  Records are ordered by the difference between the county and state average to 
	emphasize the outliers within a state.
*/

SELECT
	  EpaCrsi.County
	, EpaCrsi.UsState
	, EpaCrsi.EpaRegion
	, EpaCrsi.ReportYear
	, EpaCrsi.Crsi
	, EpaCrsi.Crsi - [State].AvgCrsi AS CountyToStateCrsiDiff
FROM CSCI226.dbo.EpaCrsi
	LEFT JOIN (
		Select
			  UsState
			, AVG(Crsi) AS AvgCrsi
		FROM CSCI226.dbo.EpaCrsi
		GROUP BY 
			UsState
	) [State] ON 
		EpaCrsi.UsState = [State].UsState
ORDER BY
	  CountyToStateCrsiDiff DESC