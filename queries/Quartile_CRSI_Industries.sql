/*
	CRSI Quartiles showing the proportion of industries recorded in selected economic data.
*/


SELECT
	  Counties.Quartile
	, AVG(Counties.Crsi) AvgCrsi
	, SUM(Counties.Extraction) / SUM(Counties.IndustryTotal) As PercentExtraction
	, SUM(Counties.Construction) / SUM(Counties.IndustryTotal) As PercentConstruction
	, SUM(Counties.Manufacturing) / SUM(Counties.IndustryTotal) As PercentManufacturing
	, SUM(Counties.Wholesale) / SUM(Counties.IndustryTotal) AS PercentWholesale
	, SUM(Counties.Retail) / SUM(Counties.IndustryTotal) AS PercentRetail
	, SUM(Counties.TransportationWarehousingAndUtilities) / SUM(Counties.IndustryTotal) AS PercentTransportationWarehousingAndUtilities
	, SUM(Counties.Information) / SUM(Counties.IndustryTotal) AS PercentInformation
	, SUM(Counties.FinanceInsuranceAndRealestate) / SUM(Counties.IndustryTotal) AS PercentFinanceInsuranceAndRealestate
	, SUM(Counties.ProfessionalScientificManagmentAdministrativeAndWasteManagement) / SUM(Counties.IndustryTotal) AS PercentProfessionalScientificManagementAdministrativeAndWasteManagement
	, SUM(Counties.EducationHealthcareSocial) / SUM(Counties.IndustryTotal) AS PercentEducationHealthcareSocial 
	, SUM(Counties.ArtsEntertainmentRecreationAccommodationAndFood) / SUM(Counties.IndustryTotal) AS PercentArtsEntertainmentRecreationAccommodationAndFood
	, SUM(Counties.PublicAdministration) / SUM(Counties.IndustryTotal) AS PercentPublicAdministration
	, SUM(Counties.Other) / SUM(Counties.IndustryTotal) AS PercentOther
FROM (
	SELECT
		  NTILE(4) OVER (ORDER BY EpaCrsi.Crsi DESC) AS Quartile
		, EpaCrsi.UsState
		, EpaCrsi.County
		, EpaCrsi.Crsi
		, Industry_Population16AndOver_TotalPopulation As IndustryTotal
		, Industry_Population16AndOver_Agriculture_Forestry_FishingHunting_Mining As Extraction
		, Industry_Population16AndOver_Construction As Construction
		, Industry_Population16AndOver_Manufacturing As Manufacturing
		, Industry_Population16AndOver_WholesaleTrade AS Wholesale
		, Industry_Population16AndOver_RetailTrade AS Retail
		, Industry_Population16AndOver_TransportationWarehousing_Utilities AS TransportationWarehousingAndUtilities
		, Industry_Population16AndOver_Information AS Information
		, Industry_Population16AndOver_FinanceInsurance_RealEstateRentalLeasing AS FinanceInsuranceAndRealestate
		, Industry_Population16AndOver_Professional_Scientific_Management_Administrative_WasteManagement AS ProfessionalScientificManagmentAdministrativeAndWasteManagement
		, Industry_Population16AndOver_EducationalServices_Healthcare_SocialAssistance AS EducationHealthcareSocial 
		, Industry_Population16AndOver_Arts_Entertainment_Recreation_Accomodation_FoodServices AS ArtsEntertainmentRecreationAccommodationAndFood
		, Industry_Population16AndOver_PublicAdministration AS PublicAdministration
		, Industry_Population16AndOver_OtherServices AS Other
	FROM CSCI226.dbo.EpaCrsi
		INNER JOIN CSCI226.dbo.EpaCensusMap ON
			EpaCrsi.UsState = EpaCensusMap.UsState
			AND EpaCrsi.County = EpaCensusMap.County
		LEFT JOIN CSCI226.dbo.vw_SelectedEconomicData EconData ON
			EpaCensusMap.GEO_ID = EconData.GEO_ID
	) Counties
GROUP BY
	Counties.Quartile		