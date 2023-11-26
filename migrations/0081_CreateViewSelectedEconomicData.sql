/*	
	Creates a projection of Dp03 with renamed columns to simplify querying.  
*/
USE CSCI226

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_NAME = 'vw_SelectedEconomicData')
	DROP VIEW vw_SelectedEconomicData
GO

CREATE VIEW vw_SelectedEconomicData AS
	SELECT
		  GEO_ID
		, ReportYear
		, [NAME]
		, DP03_0001E AS EmploymentStatus_Population16AndOver
		, DP03_0002E AS EmploymentStatus_Population16AndOver_InLaborForce
		, DP03_0003E AS EmploymentStatus_Population16AndOver_TotalCivilianLaborForce
		, DP03_0004E AS EmploymentStatus_Population16AndOver_Civilian_Employed
		, DP03_0005E AS EmploymentStatus_Population16AndOver_Civilian_Unemployed
		, DP03_0006E AS EmploymentStatus_Population16AndOver_ArmedForces
		, DP03_0007E AS EmploymentStatus_Population16AndOver_NotInLaborFoce
		, DP03_0018E AS Commute_Population16AndOver_TotalPopulation
		, DP03_0019E AS Commute_Population16AndOver_DroveAlone
		, DP03_0020E AS Commute_Population16AndOver_Carpooled
		, DP03_0021E AS Commute_Population16AndOver_PublicTransportation
		, DP03_0022E AS Commute_Population16AndOver_Walked
		, DP03_0023E AS Commute_Population16AndOver_Other
		, DP03_0024E AS Commute_Population16AndOver_WorkedFromHome
		, DP03_0025E AS Commute_Population16AndOver_MeanTravelTimeToWork
		, DP03_0026E AS Occupation_Population16AndOver_TotalPopulation
		, DP03_0027E AS Occupation_Population16AndOver_Management_Business_Science_Arts
		, DP03_0028E AS Occupation_Population16AndOver_Service
		, DP03_0029E AS Occupation_Population16AndOver_Sales_Office
		, DP03_0030E AS Occupation_Population16AndOver_NaturalResources_Construction_Maintenance
		, DP03_0031E AS Occupation_Population16AndOver_Production_Transportation_MaterialMoving
		, DP03_0032E AS Industry_Population16AndOver_TotalPopulation
		, DP03_0033E AS Industry_Population16AndOver_Agriculture_Forestry_FishingHunting_Mining
		, DP03_0034E AS Industry_Population16AndOver_Construction
		, DP03_0035E AS Industry_Population16AndOver_Manufacturing
		, DP03_0036E AS Industry_Population16AndOver_WholesaleTrade
		, DP03_0037E AS Industry_Population16AndOver_RetailTrade
		, DP03_0038E AS Industry_Population16AndOver_TransportationWarehousing_Utilities
		, DP03_0039E AS Industry_Population16AndOver_Information
		, DP03_0040E AS Industry_Population16AndOver_FinanceInsurance_RealEstateRentalLeasing
		, DP03_0041E AS Industry_Population16AndOver_Professional_Scientific_Management_Administrative_WasteManagement
		, DP03_0042E AS Industry_Population16AndOver_EducationalServices_Healthcare_SocialAssistance
		, DP03_0043E AS Industry_Population16AndOver_Arts_Entertainment_Recreation_Accomodation_FoodServices
		, DP03_0044E AS Industry_Population16AndOver_OtherServices
		, DP03_0045E AS Industry_Population16AndOver_PublicAdministration
		, DP03_0051E AS HouseholdIncome_TotalHouseholds
		, DP03_0052E AS HouseholdIncome_LessThan10K
		, DP03_0053E AS HouseholdIncome_10to15K
		, DP03_0054E AS HouseholdIncome_15to25K
		, DP03_0055E AS HouseholdIncome_25to35K
		, DP03_0056E AS HouseholdIncome_35to50K
		, DP03_0057E AS HouseholdIncome_50to75K
		, DP03_0058E AS HouseholdIncome_75to100k
		, DP03_0059E AS HouseholdIncome_100to150K
		, DP03_0060E AS HouseholdIncome_150to200K
		, DP03_0061E AS HouseholdIncome_MoreThan200K
		, DP03_0062E AS HouseholdIncome_MedianIncome
		, DP03_0063E AS HouseholdIncome_MeanIncome
	FROM [CSCI226].[dbo].[Dp03]
GO