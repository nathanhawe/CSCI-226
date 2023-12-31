IF (NOT EXISTS(SELECT 1 FROM CSCI226.INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='EpaCensusMap'))
	CREATE TABLE CSCI226.dbo.EpaCensusMap (
		  GEO_ID VARCHAR(255) NOT NULL
		, UsState VARCHAR(255) NOT NULL
		, County NVARCHAR(255) NOT NULL

		PRIMARY KEY (GEO_ID),
		CONSTRAINT UQ_EpaCensusMap_UsState_County UNIQUE NONCLUSTERED (UsState, County)
	)