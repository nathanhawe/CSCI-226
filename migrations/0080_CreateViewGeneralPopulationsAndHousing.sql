/*	
	Creates a projection of Dp1 with renamed columns to simplify querying.  
*/
USE CSCI226

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_NAME = 'vw_GeneralPopulationsAndHousing')
	DROP VIEW vw_GeneralPopulationsAndHousing
GO

CREATE VIEW vw_GeneralPopulationsAndHousing AS
	SELECT
		  GEO_ID
		, ReportYear
		, [NAME]
		, DP1_0001C AS TotalPopulation
		, DP1_0002C AS TotalPopulation_UnderAge5
		, DP1_0003C AS TotalPopulation_Age5to9
		, DP1_0004C AS TotalPopulation_Age10to14
		, DP1_0005C AS TotalPopulation_Age15to19
		, DP1_0006C AS TotalPopulation_Age20to24
		, DP1_0007C AS TotalPopulation_Age25to29
		, DP1_0008C AS TotalPopulation_Age30to34
		, DP1_0009C AS TotalPopulation_Age35to39
		, DP1_0010C AS TotalPopulation_Age40to44
		, DP1_0011C AS TotalPopulation_Age45to49
		, DP1_0012C AS TotalPopulation_Age50to54
		, DP1_0013C AS TotalPopulation_Age55to59
		, DP1_0014C AS TotalPopulation_Age60to64
		, DP1_0015C AS TotalPopulation_Age65to69
		, DP1_0016C AS TotalPopulation_Age70to74
		, DP1_0017C AS TotalPopulation_Age75to79
		, DP1_0018C AS TotalPopulation_Age80to84
		, DP1_0019C AS TotalPopulation_Age85
		, DP1_0147C AS TotalHousingUnits
		, DP1_0148C AS HousingUnits_Occupied
		, DP1_0149C AS HousingUnits_Vacant
		, DP1_0150C AS HousingUnits_Vacant_ForRent
		, DP1_0151C AS HousingUnits_Vacant_RentedNotOccupied
		, DP1_0152C AS HousingUnits_Vacant_ForSale
		, DP1_0153C AS HousingUnits_Vacant_SoldNotOccupied
		, DP1_0154C AS HousingUnits_Vacant_SeasonalRecreationalOccasionalUse
		, DP1_0155C AS HousingUnits_Vacant_Other
		, DP1_0156C AS HomeownerVacancyRate
		, DP1_0157C AS RentalVacancyRate
		, DP1_0159C AS HousingUnits_Occupied_OwnerOccupied
		, DP1_0160C AS HousingUnits_Occupied_RenterOccupied
	FROM [CSCI226].[dbo].[Dp1]
GO