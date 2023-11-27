/*
	This query finds two high and two low CRSI valued counties and displays the total populations, mean, and median 
	household incomes along with the proportion of the population in the labor force, by occupation, and by industry.
	The highest and lowest CRSI	are selected and then the highest and lowest excluding the Alaska and Kentucky (which 
	are the states with	the highest and lowest respectively).  
*/
SELECT 
	  Counties.EpaRegion
	, Counties.UsState
	, Counties.County
	, Counties.ReportYear
	, Counties.Crsi
	, Econ.HouseholdIncome_MedianIncome AS MedianIncome
	, Econ.HouseholdIncome_MeanIncome As MeanIncome
	, (Econ.EmploymentStatus_Population16AndOver_InLaborForce / Econ.EmploymentStatus_Population16AndOver) AS PercentInLaborForce
	, (Econ.EmploymentStatus_Population16AndOver_NotInLaborForce / Econ.EmploymentStatus_Population16AndOver) AS PercentNotInLaborForce
	, (Econ.EmploymentStatus_Population16AndOver_Civilian_Unemployed / Econ.EmploymentStatus_Population16AndOver) AS PercentUnemployed
	, (Econ.Occupation_Population16AndOver_Management_Business_Science_arts / Econ.Occupation_Population16AndOver_TotalPopulation) AS PercentInOccupationManagemenentBusinessScienceAndArts
	, (Econ.Occupation_Population16AndOver_Service / Econ.Occupation_Population16AndOver_TotalPopulation) AS PercentInOccupationService
	, (Econ.Occupation_Population16AndOver_Sales_Office / Econ.Occupation_Population16AndOver_TotalPopulation) AS PercentInOccupationSalesAndOffice
	, (Econ.Occupation_Population16AndOver_NaturalResources_Construction_Maintenance / Econ.Occupation_Population16AndOver_TotalPopulation) AS PercentInOccupationNaturalResourcesConstructionAndMaintenance
	, (Econ.Occupation_Population16AndOver_Production_Transportation_MaterialMoving / Econ.Occupation_Population16AndOver_TotalPopulation) AS PercentInOccupationProductionTransportationAndMaterialMoving
	, (Industry_Population16AndOver_Agriculture_Forestry_FishingHunting_Mining / Industry_Population16AndOver_TotalPopulation) AS PercentInIndustryExtraction
	, (Industry_Population16AndOver_Construction / Industry_Population16AndOver_TotalPopulation) AS PercentInIndustryConstruction
	, (Industry_Population16AndOver_Manufacturing / Industry_Population16AndOver_TotalPopulation) AS PercentInIndustryManufacturing
	, (Industry_Population16AndOver_WholesaleTrade / Industry_Population16AndOver_TotalPopulation) AS PercentInIndustryWholesaleTrade
	, (Industry_Population16AndOver_RetailTrade/ Industry_Population16AndOver_TotalPopulation) AS PercentInIndustryRetailTrade
	, (Industry_Population16AndOver_TransportationWarehousing_Utilities/ Industry_Population16AndOver_TotalPopulation) AS PercentInIndustryTransportationWarehousingAndUtilities
	, (Industry_Population16AndOver_Information / Industry_Population16AndOver_TotalPopulation) AS PercentInIndustryInformation
	, (Industry_Population16AndOver_FinanceInsurance_RealEstateRentalLeasing / Industry_Population16AndOver_TotalPopulation) AS PercentInIndustryFinanceInsuranceAndRealestate
	, (Industry_Population16AndOver_Professional_Scientific_Management_Administrative_WasteManagement / Industry_Population16AndOver_TotalPopulation) AS PercentInProfessionalScientificManagementAdministrativeAndWasteManagement
	, (Industry_Population16AndOver_EducationalServices_Healthcare_SocialAssistance/ Industry_Population16AndOver_TotalPopulation) AS PercentInIndustryEducationalHealthAndSocialAssistance
	, (Industry_Population16AndOver_Arts_Entertainment_Recreation_Accomodation_FoodServices / Industry_Population16AndOver_TotalPopulation) AS PercentInIndustryArtsEntertainmentRecreationAccommodationAndFoodServices
	, (Industry_Population16AndOver_PublicAdministration / Industry_Population16AndOver_TotalPopulation) AS PercentInIndustryPublicAdministration
	, (Industry_Population16AndOver_OtherServices/ Industry_Population16AndOver_TotalPopulation) AS PercentInIndustryOtherServices

FROM 
	(
		-- Find the county with the highest Crsi
		SELECT TOP (1)
			  EpaRegion
			, UsState
			, County
			, ReportYear
			, Crsi
		FROM CSCI226.dbo.EpaCrsi
		ORDER BY Crsi DESC

		UNION

		-- Find the county with the highest Crsi (not in Alaska)
		SELECT TOP (1)
			  EpaRegion
			, UsState
			, County
			, ReportYear
			, Crsi
		FROM CSCI226.dbo.EpaCrsi
		WHERE
			UsState <> 'Alaska'
		ORDER BY Crsi DESC

		UNION 

		-- Find the county with the lowest Crsi
		SELECT TOP (1)
			  EpaRegion
			, UsState
			, County
			, ReportYear
			, Crsi
		FROM CSCI226.dbo.EpaCrsi
		ORDER BY Crsi ASC

		UNION

		-- Find the county with the lowest Crsi (Not in Kentucky)
		SELECT TOP (1)
			  EpaRegion
			, UsState
			, County
			, ReportYear
			, Crsi
		FROM CSCI226.dbo.EpaCrsi
		WHERE UsState <> 'Kentucky'
		ORDER BY Crsi ASC
	) Counties

	INNER JOIN CSCI226.dbo.EpaCensusMap ON
		Counties.UsState = EpaCensusMap.UsState
		AND Counties.County = EpaCensusMap.County

	LEFT JOIN CSCI226.dbo.vw_SelectedEconomicData Econ ON
		EpaCensusMap.GEO_ID = Econ.GEO_ID
ORDER BY
	Counties.Crsi DESC
