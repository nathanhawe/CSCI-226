/*
	CRSI Quartiles showing the proportion of certain quality of life indicators.
*/


SELECT
	  Counties.Quartile
	, AVG(Counties.Crsi) AvgCrsi
	, AVG(Counties.MeanHouseholdIncome) As AvgMeanIncome
	, AVG(Counties.MedianHouseholdIncome) As AvgMedianIncome
	, AVG(Counties.MeanTravelTimeToWork) As AvgMeanTravelTime
	, AVG(Counties.NationalParksInState) AS AvgNationalParksPerState

FROM (
	SELECT
		  NTILE(4) OVER (ORDER BY EpaCrsi.Crsi DESC) AS Quartile
		, EpaCrsi.UsState
		, EpaCrsi.County
		, EpaCrsi.Crsi
		, EconData.HouseholdIncome_MeanIncome AS MeanHouseholdIncome
		, EconData.HouseholdIncome_MedianIncome AS MedianHouseholdIncome
		, EconData.Commute_Population16AndOver_MeanTravelTimeToWork AS MeanTravelTimeToWork
		, CAST(NationalParks.ParkCount AS Numeric(6,3)) As NationalParksInState
	FROM CSCI226.dbo.EpaCrsi
		INNER JOIN CSCI226.dbo.EpaCensusMap ON
			EpaCrsi.UsState = EpaCensusMap.UsState
			AND EpaCrsi.County = EpaCensusMap.County
		LEFT JOIN CSCI226.dbo.vw_SelectedEconomicData EconData ON
			EpaCensusMap.GEO_ID = EconData.GEO_ID

		OUTER APPLY (
			SELECT
				COUNT(ParkName) As ParkCount
			FROM CSCI226.dbo.Nps
			WHERE
				Nps.StateName = EpaCrsi.UsState
		) NationalParks
	) Counties
GROUP BY
	Counties.Quartile				