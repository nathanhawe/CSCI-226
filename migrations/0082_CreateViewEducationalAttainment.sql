/*	
	Creates a projection of S1501 with renamed columns to simplify querying.  
*/
USE CSCI226

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_NAME = 'vw_EducationalAttainment')
	DROP VIEW vw_EducationalAttainment
GO

CREATE VIEW vw_EducationalAttainment AS
	SELECT
		  GEO_ID
		, ReportYear
		, [NAME]
		, S1501_C01_006E AS Adults25YearsAndOver_TotalPopulation
		, S1501_C01_007E AS Adults25YearsAndOver_NoHighSchool
		, S1501_C01_008E AS Adults25YearsAndOver_HighSchoolWithoutDiploma
		, S1501_C01_009E AS Adults25YearsAndOver_HighSchoolGraduate
		, S1501_C01_010E AS Adults25YearsAndOver_SomeCollege
		, S1501_C01_011E AS Adults25YearsAndOver_AssociatesDegree
		, S1501_C01_012E AS Adults25YearsAndOver_BachelorsDegree
		, S1501_C01_013E AS Adults25YearsAndOver_GraduateOrProfessionalDegree
		, S1501_C01_014E AS Adults25YearsAndOver_TotalHighSchoolGraduateOrHigher
		, S1501_C01_015E AS Adults25YearsAndOver_TotalBachelorsDegreeOrHigher
	FROM [CSCI226].[dbo].[S1501]
GO

