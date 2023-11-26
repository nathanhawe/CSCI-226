/*	
	Creates a projection of S1502 with renamed columns to simplify querying.  
*/
USE CSCI226

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_NAME = 'vw_FirstMajorBaField')
	DROP VIEW vw_FirstMajorBaField
GO

CREATE VIEW vw_FirstMajorBaField AS
	SELECT
		  GEO_ID
		, ReportYear
		, [NAME]
		, S1502_C01_001E AS Adults25YearsAndOver_TotalBachelorsDegreeOrHigher
		, S1502_C01_002E AS Adults25YearsAndOver_Science_Engineering
		, S1502_C01_003E AS Adults25YearsAndOver_Science_Engineering_Related
		, S1502_C01_004E AS Adults25YearsAndOver_Business
		, S1502_C01_005E AS Adults25YearsAndOver_Education
		, S1502_C01_006E AS Adults25YearsAndOver_Arts_Humanities_Other
	FROM [CSCI226].[dbo].[S1502]
GO