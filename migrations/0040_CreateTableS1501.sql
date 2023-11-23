IF (NOT EXISTS(SELECT 1 FROM CSCI226.INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='S1501'))
	CREATE TABLE CSCI226.dbo.S1501 (
		  GEO_ID VARCHAR(255) NOT NULL
		, ReportYear INT NOT NULL
		, NAME NVARCHAR(255) NOT NULL
		, S1501_C01_001E NUMERIC(19,4) NULL
		, S1501_C01_001M NUMERIC(19,4) NULL
		, S1501_C01_002E NUMERIC(19,4) NULL
		, S1501_C01_002M NUMERIC(19,4) NULL
		, S1501_C01_003E NUMERIC(19,4) NULL
		, S1501_C01_003M NUMERIC(19,4) NULL
		, S1501_C01_004E NUMERIC(19,4) NULL
		, S1501_C01_004M NUMERIC(19,4) NULL
		, S1501_C01_005E NUMERIC(19,4) NULL
		, S1501_C01_005M NUMERIC(19,4) NULL
		, S1501_C01_006E NUMERIC(19,4) NULL
		, S1501_C01_006M NUMERIC(19,4) NULL
		, S1501_C01_007E NUMERIC(19,4) NULL
		, S1501_C01_007M NUMERIC(19,4) NULL
		, S1501_C01_008E NUMERIC(19,4) NULL
		, S1501_C01_008M NUMERIC(19,4) NULL
		, S1501_C01_009E NUMERIC(19,4) NULL
		, S1501_C01_009M NUMERIC(19,4) NULL
		, S1501_C01_010E NUMERIC(19,4) NULL
		, S1501_C01_010M NUMERIC(19,4) NULL
		, S1501_C01_011E NUMERIC(19,4) NULL
		, S1501_C01_011M NUMERIC(19,4) NULL
		, S1501_C01_012E NUMERIC(19,4) NULL
		, S1501_C01_012M NUMERIC(19,4) NULL
		, S1501_C01_013E NUMERIC(19,4) NULL
		, S1501_C01_013M NUMERIC(19,4) NULL
		, S1501_C01_014E NUMERIC(19,4) NULL
		, S1501_C01_014M NUMERIC(19,4) NULL
		, S1501_C01_015E NUMERIC(19,4) NULL
		, S1501_C01_015M NUMERIC(19,4) NULL
		, S1501_C01_016E NUMERIC(19,4) NULL
		, S1501_C01_016M NUMERIC(19,4) NULL
		, S1501_C01_017E NUMERIC(19,4) NULL
		, S1501_C01_017M NUMERIC(19,4) NULL
		, S1501_C01_018E NUMERIC(19,4) NULL
		, S1501_C01_018M NUMERIC(19,4) NULL
		, S1501_C01_019E NUMERIC(19,4) NULL
		, S1501_C01_019M NUMERIC(19,4) NULL
		, S1501_C01_020E NUMERIC(19,4) NULL
		, S1501_C01_020M NUMERIC(19,4) NULL
		, S1501_C01_021E NUMERIC(19,4) NULL
		, S1501_C01_021M NUMERIC(19,4) NULL
		, S1501_C01_022E NUMERIC(19,4) NULL
		, S1501_C01_022M NUMERIC(19,4) NULL
		, S1501_C01_023E NUMERIC(19,4) NULL
		, S1501_C01_023M NUMERIC(19,4) NULL
		, S1501_C01_024E NUMERIC(19,4) NULL
		, S1501_C01_024M NUMERIC(19,4) NULL
		, S1501_C01_025E NUMERIC(19,4) NULL
		, S1501_C01_025M NUMERIC(19,4) NULL
		, S1501_C01_026E NUMERIC(19,4) NULL
		, S1501_C01_026M NUMERIC(19,4) NULL
		, S1501_C01_027E NUMERIC(19,4) NULL
		, S1501_C01_027M NUMERIC(19,4) NULL
		, S1501_C01_028E NUMERIC(19,4) NULL
		, S1501_C01_028M NUMERIC(19,4) NULL
		, S1501_C01_029E NUMERIC(19,4) NULL
		, S1501_C01_029M NUMERIC(19,4) NULL
		, S1501_C01_030E NUMERIC(19,4) NULL
		, S1501_C01_030M NUMERIC(19,4) NULL
		, S1501_C01_031E NUMERIC(19,4) NULL
		, S1501_C01_031M NUMERIC(19,4) NULL
		, S1501_C01_032E NUMERIC(19,4) NULL
		, S1501_C01_032M NUMERIC(19,4) NULL
		, S1501_C01_033E NUMERIC(19,4) NULL
		, S1501_C01_033M NUMERIC(19,4) NULL
		, S1501_C01_034E NUMERIC(19,4) NULL
		, S1501_C01_034M NUMERIC(19,4) NULL
		, S1501_C01_035E NUMERIC(19,4) NULL
		, S1501_C01_035M NUMERIC(19,4) NULL
		, S1501_C01_036E NUMERIC(19,4) NULL
		, S1501_C01_036M NUMERIC(19,4) NULL
		, S1501_C01_037E NUMERIC(19,4) NULL
		, S1501_C01_037M NUMERIC(19,4) NULL
		, S1501_C01_038E NUMERIC(19,4) NULL
		, S1501_C01_038M NUMERIC(19,4) NULL
		, S1501_C01_039E NUMERIC(19,4) NULL
		, S1501_C01_039M NUMERIC(19,4) NULL
		, S1501_C01_040E NUMERIC(19,4) NULL
		, S1501_C01_040M NUMERIC(19,4) NULL
		, S1501_C01_041E NUMERIC(19,4) NULL
		, S1501_C01_041M NUMERIC(19,4) NULL
		, S1501_C01_042E NUMERIC(19,4) NULL
		, S1501_C01_042M NUMERIC(19,4) NULL
		, S1501_C01_043E NUMERIC(19,4) NULL
		, S1501_C01_043M NUMERIC(19,4) NULL
		, S1501_C01_044E NUMERIC(19,4) NULL
		, S1501_C01_044M NUMERIC(19,4) NULL
		, S1501_C01_045E NUMERIC(19,4) NULL
		, S1501_C01_045M NUMERIC(19,4) NULL
		, S1501_C01_046E NUMERIC(19,4) NULL
		, S1501_C01_046M NUMERIC(19,4) NULL
		, S1501_C01_047E NUMERIC(19,4) NULL
		, S1501_C01_047M NUMERIC(19,4) NULL
		, S1501_C01_048E NUMERIC(19,4) NULL
		, S1501_C01_048M NUMERIC(19,4) NULL
		, S1501_C01_049E NUMERIC(19,4) NULL
		, S1501_C01_049M NUMERIC(19,4) NULL
		, S1501_C01_050E NUMERIC(19,4) NULL
		, S1501_C01_050M NUMERIC(19,4) NULL
		, S1501_C01_051E NUMERIC(19,4) NULL
		, S1501_C01_051M NUMERIC(19,4) NULL
		, S1501_C01_052E NUMERIC(19,4) NULL
		, S1501_C01_052M NUMERIC(19,4) NULL
		, S1501_C01_053E NUMERIC(19,4) NULL
		, S1501_C01_053M NUMERIC(19,4) NULL
		, S1501_C01_054E NUMERIC(19,4) NULL
		, S1501_C01_054M NUMERIC(19,4) NULL
		, S1501_C01_055E VARCHAR(5) NULL
		, S1501_C01_055M VARCHAR(5) NULL
		, S1501_C01_056E VARCHAR(5) NULL
		, S1501_C01_056M VARCHAR(5) NULL
		, S1501_C01_057E VARCHAR(5) NULL
		, S1501_C01_057M VARCHAR(5) NULL
		, S1501_C01_058E VARCHAR(5) NULL
		, S1501_C01_058M VARCHAR(5) NULL
		, S1501_C01_059E NUMERIC(19,4) NULL
		, S1501_C01_059M NUMERIC(19,4) NULL
		, S1501_C01_060E NUMERIC(19,4) NULL
		, S1501_C01_060M NUMERIC(19,4) NULL
		, S1501_C01_061E NUMERIC(19,4) NULL
		, S1501_C01_061M NUMERIC(19,4) NULL
		, S1501_C01_062E NUMERIC(19,4) NULL
		, S1501_C01_062M NUMERIC(19,4) NULL
		, S1501_C01_063E NUMERIC(19,4) NULL
		, S1501_C01_063M NUMERIC(19,4) NULL
		, S1501_C01_064E NUMERIC(19,4) NULL
		, S1501_C01_064M NUMERIC(19,4) NULL
		, S1501_C02_001E VARCHAR(5) NULL
		, S1501_C02_001M VARCHAR(5) NULL
		, S1501_C02_002E NUMERIC(19,4) NULL
		, S1501_C02_002M NUMERIC(19,4) NULL
		, S1501_C02_003E NUMERIC(19,4) NULL
		, S1501_C02_003M NUMERIC(19,4) NULL
		, S1501_C02_004E NUMERIC(19,4) NULL
		, S1501_C02_004M NUMERIC(19,4) NULL
		, S1501_C02_005E NUMERIC(19,4) NULL
		, S1501_C02_005M NUMERIC(19,4) NULL
		, S1501_C02_006E VARCHAR(5) NULL
		, S1501_C02_006M VARCHAR(5) NULL
		, S1501_C02_007E NUMERIC(19,4) NULL
		, S1501_C02_007M NUMERIC(19,4) NULL
		, S1501_C02_008E NUMERIC(19,4) NULL
		, S1501_C02_008M NUMERIC(19,4) NULL
		, S1501_C02_009E NUMERIC(19,4) NULL
		, S1501_C02_009M NUMERIC(19,4) NULL
		, S1501_C02_010E NUMERIC(19,4) NULL
		, S1501_C02_010M NUMERIC(19,4) NULL
		, S1501_C02_011E NUMERIC(19,4) NULL
		, S1501_C02_011M NUMERIC(19,4) NULL
		, S1501_C02_012E NUMERIC(19,4) NULL
		, S1501_C02_012M NUMERIC(19,4) NULL
		, S1501_C02_013E NUMERIC(19,4) NULL
		, S1501_C02_013M NUMERIC(19,4) NULL
		, S1501_C02_014E NUMERIC(19,4) NULL
		, S1501_C02_014M NUMERIC(19,4) NULL
		, S1501_C02_015E NUMERIC(19,4) NULL
		, S1501_C02_015M NUMERIC(19,4) NULL
		, S1501_C02_016E VARCHAR(5) NULL
		, S1501_C02_016M VARCHAR(5) NULL
		, S1501_C02_017E NUMERIC(19,4) NULL
		, S1501_C02_017M NUMERIC(19,4) NULL
		, S1501_C02_018E NUMERIC(19,4) NULL
		, S1501_C02_018M NUMERIC(19,4) NULL
		, S1501_C02_019E VARCHAR(5) NULL
		, S1501_C02_019M VARCHAR(5) NULL
		, S1501_C02_020E NUMERIC(19,4) NULL
		, S1501_C02_020M NUMERIC(19,4) NULL
		, S1501_C02_021E NUMERIC(19,4) NULL
		, S1501_C02_021M NUMERIC(19,4) NULL
		, S1501_C02_022E VARCHAR(5) NULL
		, S1501_C02_022M VARCHAR(5) NULL
		, S1501_C02_023E NUMERIC(19,4) NULL
		, S1501_C02_023M NUMERIC(19,4) NULL
		, S1501_C02_024E NUMERIC(19,4) NULL
		, S1501_C02_024M NUMERIC(19,4) NULL
		, S1501_C02_025E VARCHAR(5) NULL
		, S1501_C02_025M VARCHAR(5) NULL
		, S1501_C02_026E NUMERIC(19,4) NULL
		, S1501_C02_026M NUMERIC(19,4) NULL
		, S1501_C02_027E NUMERIC(19,4) NULL
		, S1501_C02_027M NUMERIC(19,4) NULL
		, S1501_C02_028E VARCHAR(5) NULL
		, S1501_C02_028M VARCHAR(5) NULL
		, S1501_C02_029E NUMERIC(19,4) NULL
		, S1501_C02_029M NUMERIC(19,4) NULL
		, S1501_C02_030E NUMERIC(19,4) NULL
		, S1501_C02_030M NUMERIC(19,4) NULL
		, S1501_C02_031E VARCHAR(5) NULL
		, S1501_C02_031M VARCHAR(5) NULL
		, S1501_C02_032E NUMERIC(19,4) NULL
		, S1501_C02_032M NUMERIC(19,4) NULL
		, S1501_C02_033E NUMERIC(19,4) NULL
		, S1501_C02_033M NUMERIC(19,4) NULL
		, S1501_C02_034E VARCHAR(5) NULL
		, S1501_C02_034M VARCHAR(5) NULL
		, S1501_C02_035E NUMERIC(19,4) NULL
		, S1501_C02_035M NUMERIC(19,4) NULL
		, S1501_C02_036E NUMERIC(19,4) NULL
		, S1501_C02_036M NUMERIC(19,4) NULL
		, S1501_C02_037E VARCHAR(5) NULL
		, S1501_C02_037M VARCHAR(5) NULL
		, S1501_C02_038E NUMERIC(19,4) NULL
		, S1501_C02_038M NUMERIC(19,4) NULL
		, S1501_C02_039E NUMERIC(19,4) NULL
		, S1501_C02_039M NUMERIC(19,4) NULL
		, S1501_C02_040E VARCHAR(5) NULL
		, S1501_C02_040M VARCHAR(5) NULL
		, S1501_C02_041E NUMERIC(19,4) NULL
		, S1501_C02_041M NUMERIC(19,4) NULL
		, S1501_C02_042E NUMERIC(19,4) NULL
		, S1501_C02_042M NUMERIC(19,4) NULL
		, S1501_C02_043E VARCHAR(5) NULL
		, S1501_C02_043M VARCHAR(5) NULL
		, S1501_C02_044E NUMERIC(19,4) NULL
		, S1501_C02_044M NUMERIC(19,4) NULL
		, S1501_C02_045E NUMERIC(19,4) NULL
		, S1501_C02_045M NUMERIC(19,4) NULL
		, S1501_C02_046E VARCHAR(5) NULL
		, S1501_C02_046M VARCHAR(5) NULL
		, S1501_C02_047E NUMERIC(19,4) NULL
		, S1501_C02_047M NUMERIC(19,4) NULL
		, S1501_C02_048E NUMERIC(19,4) NULL
		, S1501_C02_048M NUMERIC(19,4) NULL
		, S1501_C02_049E VARCHAR(5) NULL
		, S1501_C02_049M VARCHAR(5) NULL
		, S1501_C02_050E NUMERIC(19,4) NULL
		, S1501_C02_050M NUMERIC(19,4) NULL
		, S1501_C02_051E NUMERIC(19,4) NULL
		, S1501_C02_051M NUMERIC(19,4) NULL
		, S1501_C02_052E VARCHAR(5) NULL
		, S1501_C02_052M VARCHAR(5) NULL
		, S1501_C02_053E NUMERIC(19,4) NULL
		, S1501_C02_053M NUMERIC(19,4) NULL
		, S1501_C02_054E NUMERIC(19,4) NULL
		, S1501_C02_054M NUMERIC(19,4) NULL
		, S1501_C02_055E NUMERIC(19,4) NULL
		, S1501_C02_055M NUMERIC(19,4) NULL
		, S1501_C02_056E NUMERIC(19,4) NULL
		, S1501_C02_056M NUMERIC(19,4) NULL
		, S1501_C02_057E NUMERIC(19,4) NULL
		, S1501_C02_057M NUMERIC(19,4) NULL
		, S1501_C02_058E NUMERIC(19,4) NULL
		, S1501_C02_058M NUMERIC(19,4) NULL
		, S1501_C02_059E VARCHAR(5) NULL
		, S1501_C02_059M VARCHAR(5) NULL
		, S1501_C02_060E VARCHAR(5) NULL
		, S1501_C02_060M VARCHAR(5) NULL
		, S1501_C02_061E VARCHAR(5) NULL
		, S1501_C02_061M VARCHAR(5) NULL
		, S1501_C02_062E VARCHAR(5) NULL
		, S1501_C02_062M VARCHAR(5) NULL
		, S1501_C02_063E VARCHAR(5) NULL
		, S1501_C02_063M VARCHAR(5) NULL
		, S1501_C02_064E VARCHAR(5) NULL
		, S1501_C02_064M VARCHAR(5) NULL
		, S1501_C03_001E NUMERIC(19,4) NULL
		, S1501_C03_001M NUMERIC(19,4) NULL
		, S1501_C03_002E NUMERIC(19,4) NULL
		, S1501_C03_002M NUMERIC(19,4) NULL
		, S1501_C03_003E NUMERIC(19,4) NULL
		, S1501_C03_003M NUMERIC(19,4) NULL
		, S1501_C03_004E NUMERIC(19,4) NULL
		, S1501_C03_004M NUMERIC(19,4) NULL
		, S1501_C03_005E NUMERIC(19,4) NULL
		, S1501_C03_005M NUMERIC(19,4) NULL
		, S1501_C03_006E NUMERIC(19,4) NULL
		, S1501_C03_006M NUMERIC(19,4) NULL
		, S1501_C03_007E NUMERIC(19,4) NULL
		, S1501_C03_007M NUMERIC(19,4) NULL
		, S1501_C03_008E NUMERIC(19,4) NULL
		, S1501_C03_008M NUMERIC(19,4) NULL
		, S1501_C03_009E NUMERIC(19,4) NULL
		, S1501_C03_009M NUMERIC(19,4) NULL
		, S1501_C03_010E NUMERIC(19,4) NULL
		, S1501_C03_010M NUMERIC(19,4) NULL
		, S1501_C03_011E NUMERIC(19,4) NULL
		, S1501_C03_011M NUMERIC(19,4) NULL
		, S1501_C03_012E NUMERIC(19,4) NULL
		, S1501_C03_012M NUMERIC(19,4) NULL
		, S1501_C03_013E NUMERIC(19,4) NULL
		, S1501_C03_013M NUMERIC(19,4) NULL
		, S1501_C03_014E NUMERIC(19,4) NULL
		, S1501_C03_014M NUMERIC(19,4) NULL
		, S1501_C03_015E NUMERIC(19,4) NULL
		, S1501_C03_015M NUMERIC(19,4) NULL
		, S1501_C03_016E NUMERIC(19,4) NULL
		, S1501_C03_016M NUMERIC(19,4) NULL
		, S1501_C03_017E NUMERIC(19,4) NULL
		, S1501_C03_017M NUMERIC(19,4) NULL
		, S1501_C03_018E NUMERIC(19,4) NULL
		, S1501_C03_018M NUMERIC(19,4) NULL
		, S1501_C03_019E NUMERIC(19,4) NULL
		, S1501_C03_019M NUMERIC(19,4) NULL
		, S1501_C03_020E NUMERIC(19,4) NULL
		, S1501_C03_020M NUMERIC(19,4) NULL
		, S1501_C03_021E NUMERIC(19,4) NULL
		, S1501_C03_021M NUMERIC(19,4) NULL
		, S1501_C03_022E NUMERIC(19,4) NULL
		, S1501_C03_022M NUMERIC(19,4) NULL
		, S1501_C03_023E NUMERIC(19,4) NULL
		, S1501_C03_023M NUMERIC(19,4) NULL
		, S1501_C03_024E NUMERIC(19,4) NULL
		, S1501_C03_024M NUMERIC(19,4) NULL
		, S1501_C03_025E NUMERIC(19,4) NULL
		, S1501_C03_025M NUMERIC(19,4) NULL
		, S1501_C03_026E NUMERIC(19,4) NULL
		, S1501_C03_026M NUMERIC(19,4) NULL
		, S1501_C03_027E NUMERIC(19,4) NULL
		, S1501_C03_027M NUMERIC(19,4) NULL
		, S1501_C03_028E NUMERIC(19,4) NULL
		, S1501_C03_028M NUMERIC(19,4) NULL
		, S1501_C03_029E NUMERIC(19,4) NULL
		, S1501_C03_029M NUMERIC(19,4) NULL
		, S1501_C03_030E NUMERIC(19,4) NULL
		, S1501_C03_030M NUMERIC(19,4) NULL
		, S1501_C03_031E NUMERIC(19,4) NULL
		, S1501_C03_031M NUMERIC(19,4) NULL
		, S1501_C03_032E NUMERIC(19,4) NULL
		, S1501_C03_032M NUMERIC(19,4) NULL
		, S1501_C03_033E NUMERIC(19,4) NULL
		, S1501_C03_033M NUMERIC(19,4) NULL
		, S1501_C03_034E NUMERIC(19,4) NULL
		, S1501_C03_034M NUMERIC(19,4) NULL
		, S1501_C03_035E NUMERIC(19,4) NULL
		, S1501_C03_035M NUMERIC(19,4) NULL
		, S1501_C03_036E NUMERIC(19,4) NULL
		, S1501_C03_036M NUMERIC(19,4) NULL
		, S1501_C03_037E NUMERIC(19,4) NULL
		, S1501_C03_037M NUMERIC(19,4) NULL
		, S1501_C03_038E NUMERIC(19,4) NULL
		, S1501_C03_038M NUMERIC(19,4) NULL
		, S1501_C03_039E NUMERIC(19,4) NULL
		, S1501_C03_039M NUMERIC(19,4) NULL
		, S1501_C03_040E NUMERIC(19,4) NULL
		, S1501_C03_040M NUMERIC(19,4) NULL
		, S1501_C03_041E NUMERIC(19,4) NULL
		, S1501_C03_041M NUMERIC(19,4) NULL
		, S1501_C03_042E NUMERIC(19,4) NULL
		, S1501_C03_042M NUMERIC(19,4) NULL
		, S1501_C03_043E NUMERIC(19,4) NULL
		, S1501_C03_043M NUMERIC(19,4) NULL
		, S1501_C03_044E NUMERIC(19,4) NULL
		, S1501_C03_044M NUMERIC(19,4) NULL
		, S1501_C03_045E NUMERIC(19,4) NULL
		, S1501_C03_045M NUMERIC(19,4) NULL
		, S1501_C03_046E NUMERIC(19,4) NULL
		, S1501_C03_046M NUMERIC(19,4) NULL
		, S1501_C03_047E NUMERIC(19,4) NULL
		, S1501_C03_047M NUMERIC(19,4) NULL
		, S1501_C03_048E NUMERIC(19,4) NULL
		, S1501_C03_048M NUMERIC(19,4) NULL
		, S1501_C03_049E NUMERIC(19,4) NULL
		, S1501_C03_049M NUMERIC(19,4) NULL
		, S1501_C03_050E NUMERIC(19,4) NULL
		, S1501_C03_050M NUMERIC(19,4) NULL
		, S1501_C03_051E NUMERIC(19,4) NULL
		, S1501_C03_051M NUMERIC(19,4) NULL
		, S1501_C03_052E NUMERIC(19,4) NULL
		, S1501_C03_052M NUMERIC(19,4) NULL
		, S1501_C03_053E NUMERIC(19,4) NULL
		, S1501_C03_053M NUMERIC(19,4) NULL
		, S1501_C03_054E NUMERIC(19,4) NULL
		, S1501_C03_054M NUMERIC(19,4) NULL
		, S1501_C03_055E VARCHAR(5) NULL
		, S1501_C03_055M VARCHAR(5) NULL
		, S1501_C03_056E VARCHAR(5) NULL
		, S1501_C03_056M VARCHAR(5) NULL
		, S1501_C03_057E VARCHAR(5) NULL
		, S1501_C03_057M VARCHAR(5) NULL
		, S1501_C03_058E VARCHAR(5) NULL
		, S1501_C03_058M VARCHAR(5) NULL
		, S1501_C03_059E NUMERIC(19,4) NULL
		, S1501_C03_059M NUMERIC(19,4) NULL
		, S1501_C03_060E NUMERIC(19,4) NULL
		, S1501_C03_060M NUMERIC(19,4) NULL
		, S1501_C03_061E NUMERIC(19,4) NULL
		, S1501_C03_061M NUMERIC(19,4) NULL
		, S1501_C03_062E NUMERIC(19,4) NULL
		, S1501_C03_062M NUMERIC(19,4) NULL
		, S1501_C03_063E NUMERIC(19,4) NULL
		, S1501_C03_063M NUMERIC(19,4) NULL
		, S1501_C03_064E NUMERIC(19,4) NULL
		, S1501_C03_064M NUMERIC(19,4) NULL
		, S1501_C04_001E VARCHAR(5) NULL
		, S1501_C04_001M VARCHAR(5) NULL
		, S1501_C04_002E NUMERIC(19,4) NULL
		, S1501_C04_002M NUMERIC(19,4) NULL
		, S1501_C04_003E NUMERIC(19,4) NULL
		, S1501_C04_003M NUMERIC(19,4) NULL
		, S1501_C04_004E NUMERIC(19,4) NULL
		, S1501_C04_004M NUMERIC(19,4) NULL
		, S1501_C04_005E NUMERIC(19,4) NULL
		, S1501_C04_005M NUMERIC(19,4) NULL
		, S1501_C04_006E VARCHAR(5) NULL
		, S1501_C04_006M VARCHAR(5) NULL
		, S1501_C04_007E NUMERIC(19,4) NULL
		, S1501_C04_007M NUMERIC(19,4) NULL
		, S1501_C04_008E NUMERIC(19,4) NULL
		, S1501_C04_008M NUMERIC(19,4) NULL
		, S1501_C04_009E NUMERIC(19,4) NULL
		, S1501_C04_009M NUMERIC(19,4) NULL
		, S1501_C04_010E NUMERIC(19,4) NULL
		, S1501_C04_010M NUMERIC(19,4) NULL
		, S1501_C04_011E NUMERIC(19,4) NULL
		, S1501_C04_011M NUMERIC(19,4) NULL
		, S1501_C04_012E NUMERIC(19,4) NULL
		, S1501_C04_012M NUMERIC(19,4) NULL
		, S1501_C04_013E NUMERIC(19,4) NULL
		, S1501_C04_013M NUMERIC(19,4) NULL
		, S1501_C04_014E NUMERIC(19,4) NULL
		, S1501_C04_014M NUMERIC(19,4) NULL
		, S1501_C04_015E NUMERIC(19,4) NULL
		, S1501_C04_015M NUMERIC(19,4) NULL
		, S1501_C04_016E VARCHAR(5) NULL
		, S1501_C04_016M VARCHAR(5) NULL
		, S1501_C04_017E NUMERIC(19,4) NULL
		, S1501_C04_017M NUMERIC(19,4) NULL
		, S1501_C04_018E NUMERIC(19,4) NULL
		, S1501_C04_018M NUMERIC(19,4) NULL
		, S1501_C04_019E VARCHAR(5) NULL
		, S1501_C04_019M VARCHAR(5) NULL
		, S1501_C04_020E NUMERIC(19,4) NULL
		, S1501_C04_020M NUMERIC(19,4) NULL
		, S1501_C04_021E NUMERIC(19,4) NULL
		, S1501_C04_021M NUMERIC(19,4) NULL
		, S1501_C04_022E VARCHAR(5) NULL
		, S1501_C04_022M VARCHAR(5) NULL
		, S1501_C04_023E NUMERIC(19,4) NULL
		, S1501_C04_023M NUMERIC(19,4) NULL
		, S1501_C04_024E NUMERIC(19,4) NULL
		, S1501_C04_024M NUMERIC(19,4) NULL
		, S1501_C04_025E VARCHAR(5) NULL
		, S1501_C04_025M VARCHAR(5) NULL
		, S1501_C04_026E NUMERIC(19,4) NULL
		, S1501_C04_026M NUMERIC(19,4) NULL
		, S1501_C04_027E NUMERIC(19,4) NULL
		, S1501_C04_027M NUMERIC(19,4) NULL
		, S1501_C04_028E VARCHAR(5) NULL
		, S1501_C04_028M VARCHAR(5) NULL
		, S1501_C04_029E NUMERIC(19,4) NULL
		, S1501_C04_029M NUMERIC(19,4) NULL
		, S1501_C04_030E NUMERIC(19,4) NULL
		, S1501_C04_030M NUMERIC(19,4) NULL
		, S1501_C04_031E VARCHAR(5) NULL
		, S1501_C04_031M VARCHAR(5) NULL
		, S1501_C04_032E NUMERIC(19,4) NULL
		, S1501_C04_032M NUMERIC(19,4) NULL
		, S1501_C04_033E NUMERIC(19,4) NULL
		, S1501_C04_033M NUMERIC(19,4) NULL
		, S1501_C04_034E VARCHAR(5) NULL
		, S1501_C04_034M VARCHAR(5) NULL
		, S1501_C04_035E NUMERIC(19,4) NULL
		, S1501_C04_035M NUMERIC(19,4) NULL
		, S1501_C04_036E NUMERIC(19,4) NULL
		, S1501_C04_036M NUMERIC(19,4) NULL
		, S1501_C04_037E VARCHAR(5) NULL
		, S1501_C04_037M VARCHAR(5) NULL
		, S1501_C04_038E NUMERIC(19,4) NULL
		, S1501_C04_038M NUMERIC(19,4) NULL
		, S1501_C04_039E NUMERIC(19,4) NULL
		, S1501_C04_039M NUMERIC(19,4) NULL
		, S1501_C04_040E VARCHAR(5) NULL
		, S1501_C04_040M VARCHAR(5) NULL
		, S1501_C04_041E NUMERIC(19,4) NULL
		, S1501_C04_041M NUMERIC(19,4) NULL
		, S1501_C04_042E NUMERIC(19,4) NULL
		, S1501_C04_042M NUMERIC(19,4) NULL
		, S1501_C04_043E VARCHAR(5) NULL
		, S1501_C04_043M VARCHAR(5) NULL
		, S1501_C04_044E NUMERIC(19,4) NULL
		, S1501_C04_044M NUMERIC(19,4) NULL
		, S1501_C04_045E NUMERIC(19,4) NULL
		, S1501_C04_045M NUMERIC(19,4) NULL
		, S1501_C04_046E VARCHAR(5) NULL
		, S1501_C04_046M VARCHAR(5) NULL
		, S1501_C04_047E NUMERIC(19,4) NULL
		, S1501_C04_047M NUMERIC(19,4) NULL
		, S1501_C04_048E NUMERIC(19,4) NULL
		, S1501_C04_048M NUMERIC(19,4) NULL
		, S1501_C04_049E VARCHAR(5) NULL
		, S1501_C04_049M VARCHAR(5) NULL
		, S1501_C04_050E NUMERIC(19,4) NULL
		, S1501_C04_050M NUMERIC(19,4) NULL
		, S1501_C04_051E NUMERIC(19,4) NULL
		, S1501_C04_051M NUMERIC(19,4) NULL
		, S1501_C04_052E VARCHAR(5) NULL
		, S1501_C04_052M VARCHAR(5) NULL
		, S1501_C04_053E NUMERIC(19,4) NULL
		, S1501_C04_053M NUMERIC(19,4) NULL
		, S1501_C04_054E NUMERIC(19,4) NULL
		, S1501_C04_054M NUMERIC(19,4) NULL
		, S1501_C04_055E NUMERIC(19,4) NULL
		, S1501_C04_055M NUMERIC(19,4) NULL
		, S1501_C04_056E NUMERIC(19,4) NULL
		, S1501_C04_056M NUMERIC(19,4) NULL
		, S1501_C04_057E NUMERIC(19,4) NULL
		, S1501_C04_057M NUMERIC(19,4) NULL
		, S1501_C04_058E NUMERIC(19,4) NULL
		, S1501_C04_058M NUMERIC(19,4) NULL
		, S1501_C04_059E VARCHAR(5) NULL
		, S1501_C04_059M VARCHAR(5) NULL
		, S1501_C04_060E VARCHAR(5) NULL
		, S1501_C04_060M VARCHAR(5) NULL
		, S1501_C04_061E VARCHAR(5) NULL
		, S1501_C04_061M VARCHAR(5) NULL
		, S1501_C04_062E VARCHAR(5) NULL
		, S1501_C04_062M VARCHAR(5) NULL
		, S1501_C04_063E VARCHAR(5) NULL
		, S1501_C04_063M VARCHAR(5) NULL
		, S1501_C04_064E VARCHAR(5) NULL
		, S1501_C04_064M VARCHAR(5) NULL
		, S1501_C05_001E NUMERIC(19,4) NULL
		, S1501_C05_001M NUMERIC(19,4) NULL
		, S1501_C05_002E NUMERIC(19,4) NULL
		, S1501_C05_002M NUMERIC(19,4) NULL
		, S1501_C05_003E NUMERIC(19,4) NULL
		, S1501_C05_003M NUMERIC(19,4) NULL
		, S1501_C05_004E NUMERIC(19,4) NULL
		, S1501_C05_004M NUMERIC(19,4) NULL
		, S1501_C05_005E NUMERIC(19,4) NULL
		, S1501_C05_005M NUMERIC(19,4) NULL
		, S1501_C05_006E NUMERIC(19,4) NULL
		, S1501_C05_006M NUMERIC(19,4) NULL
		, S1501_C05_007E NUMERIC(19,4) NULL
		, S1501_C05_007M NUMERIC(19,4) NULL
		, S1501_C05_008E NUMERIC(19,4) NULL
		, S1501_C05_008M NUMERIC(19,4) NULL
		, S1501_C05_009E NUMERIC(19,4) NULL
		, S1501_C05_009M NUMERIC(19,4) NULL
		, S1501_C05_010E NUMERIC(19,4) NULL
		, S1501_C05_010M NUMERIC(19,4) NULL
		, S1501_C05_011E NUMERIC(19,4) NULL
		, S1501_C05_011M NUMERIC(19,4) NULL
		, S1501_C05_012E NUMERIC(19,4) NULL
		, S1501_C05_012M NUMERIC(19,4) NULL
		, S1501_C05_013E NUMERIC(19,4) NULL
		, S1501_C05_013M NUMERIC(19,4) NULL
		, S1501_C05_014E NUMERIC(19,4) NULL
		, S1501_C05_014M NUMERIC(19,4) NULL
		, S1501_C05_015E NUMERIC(19,4) NULL
		, S1501_C05_015M NUMERIC(19,4) NULL
		, S1501_C05_016E NUMERIC(19,4) NULL
		, S1501_C05_016M NUMERIC(19,4) NULL
		, S1501_C05_017E NUMERIC(19,4) NULL
		, S1501_C05_017M NUMERIC(19,4) NULL
		, S1501_C05_018E NUMERIC(19,4) NULL
		, S1501_C05_018M NUMERIC(19,4) NULL
		, S1501_C05_019E NUMERIC(19,4) NULL
		, S1501_C05_019M NUMERIC(19,4) NULL
		, S1501_C05_020E NUMERIC(19,4) NULL
		, S1501_C05_020M NUMERIC(19,4) NULL
		, S1501_C05_021E NUMERIC(19,4) NULL
		, S1501_C05_021M NUMERIC(19,4) NULL
		, S1501_C05_022E NUMERIC(19,4) NULL
		, S1501_C05_022M NUMERIC(19,4) NULL
		, S1501_C05_023E NUMERIC(19,4) NULL
		, S1501_C05_023M NUMERIC(19,4) NULL
		, S1501_C05_024E NUMERIC(19,4) NULL
		, S1501_C05_024M NUMERIC(19,4) NULL
		, S1501_C05_025E NUMERIC(19,4) NULL
		, S1501_C05_025M NUMERIC(19,4) NULL
		, S1501_C05_026E NUMERIC(19,4) NULL
		, S1501_C05_026M NUMERIC(19,4) NULL
		, S1501_C05_027E NUMERIC(19,4) NULL
		, S1501_C05_027M NUMERIC(19,4) NULL
		, S1501_C05_028E NUMERIC(19,4) NULL
		, S1501_C05_028M NUMERIC(19,4) NULL
		, S1501_C05_029E NUMERIC(19,4) NULL
		, S1501_C05_029M NUMERIC(19,4) NULL
		, S1501_C05_030E NUMERIC(19,4) NULL
		, S1501_C05_030M NUMERIC(19,4) NULL
		, S1501_C05_031E NUMERIC(19,4) NULL
		, S1501_C05_031M NUMERIC(19,4) NULL
		, S1501_C05_032E NUMERIC(19,4) NULL
		, S1501_C05_032M NUMERIC(19,4) NULL
		, S1501_C05_033E NUMERIC(19,4) NULL
		, S1501_C05_033M NUMERIC(19,4) NULL
		, S1501_C05_034E NUMERIC(19,4) NULL
		, S1501_C05_034M NUMERIC(19,4) NULL
		, S1501_C05_035E NUMERIC(19,4) NULL
		, S1501_C05_035M NUMERIC(19,4) NULL
		, S1501_C05_036E NUMERIC(19,4) NULL
		, S1501_C05_036M NUMERIC(19,4) NULL
		, S1501_C05_037E NUMERIC(19,4) NULL
		, S1501_C05_037M NUMERIC(19,4) NULL
		, S1501_C05_038E NUMERIC(19,4) NULL
		, S1501_C05_038M NUMERIC(19,4) NULL
		, S1501_C05_039E NUMERIC(19,4) NULL
		, S1501_C05_039M NUMERIC(19,4) NULL
		, S1501_C05_040E NUMERIC(19,4) NULL
		, S1501_C05_040M NUMERIC(19,4) NULL
		, S1501_C05_041E NUMERIC(19,4) NULL
		, S1501_C05_041M NUMERIC(19,4) NULL
		, S1501_C05_042E NUMERIC(19,4) NULL
		, S1501_C05_042M NUMERIC(19,4) NULL
		, S1501_C05_043E NUMERIC(19,4) NULL
		, S1501_C05_043M NUMERIC(19,4) NULL
		, S1501_C05_044E NUMERIC(19,4) NULL
		, S1501_C05_044M NUMERIC(19,4) NULL
		, S1501_C05_045E NUMERIC(19,4) NULL
		, S1501_C05_045M NUMERIC(19,4) NULL
		, S1501_C05_046E NUMERIC(19,4) NULL
		, S1501_C05_046M NUMERIC(19,4) NULL
		, S1501_C05_047E NUMERIC(19,4) NULL
		, S1501_C05_047M NUMERIC(19,4) NULL
		, S1501_C05_048E NUMERIC(19,4) NULL
		, S1501_C05_048M NUMERIC(19,4) NULL
		, S1501_C05_049E NUMERIC(19,4) NULL
		, S1501_C05_049M NUMERIC(19,4) NULL
		, S1501_C05_050E NUMERIC(19,4) NULL
		, S1501_C05_050M NUMERIC(19,4) NULL
		, S1501_C05_051E NUMERIC(19,4) NULL
		, S1501_C05_051M NUMERIC(19,4) NULL
		, S1501_C05_052E NUMERIC(19,4) NULL
		, S1501_C05_052M NUMERIC(19,4) NULL
		, S1501_C05_053E NUMERIC(19,4) NULL
		, S1501_C05_053M NUMERIC(19,4) NULL
		, S1501_C05_054E NUMERIC(19,4) NULL
		, S1501_C05_054M NUMERIC(19,4) NULL
		, S1501_C05_055E VARCHAR(5) NULL
		, S1501_C05_055M VARCHAR(5) NULL
		, S1501_C05_056E VARCHAR(5) NULL
		, S1501_C05_056M VARCHAR(5) NULL
		, S1501_C05_057E VARCHAR(5) NULL
		, S1501_C05_057M VARCHAR(5) NULL
		, S1501_C05_058E VARCHAR(5) NULL
		, S1501_C05_058M VARCHAR(5) NULL
		, S1501_C05_059E NUMERIC(19,4) NULL
		, S1501_C05_059M NUMERIC(19,4) NULL
		, S1501_C05_060E NUMERIC(19,4) NULL
		, S1501_C05_060M NUMERIC(19,4) NULL
		, S1501_C05_061E NUMERIC(19,4) NULL
		, S1501_C05_061M NUMERIC(19,4) NULL
		, S1501_C05_062E NUMERIC(19,4) NULL
		, S1501_C05_062M NUMERIC(19,4) NULL
		, S1501_C05_063E NUMERIC(19,4) NULL
		, S1501_C05_063M NUMERIC(19,4) NULL
		, S1501_C05_064E NUMERIC(19,4) NULL
		, S1501_C05_064M NUMERIC(19,4) NULL
		, S1501_C06_001E VARCHAR(5) NULL
		, S1501_C06_001M VARCHAR(5) NULL
		, S1501_C06_002E NUMERIC(19,4) NULL
		, S1501_C06_002M NUMERIC(19,4) NULL
		, S1501_C06_003E NUMERIC(19,4) NULL
		, S1501_C06_003M NUMERIC(19,4) NULL
		, S1501_C06_004E NUMERIC(19,4) NULL
		, S1501_C06_004M NUMERIC(19,4) NULL
		, S1501_C06_005E NUMERIC(19,4) NULL
		, S1501_C06_005M NUMERIC(19,4) NULL
		, S1501_C06_006E VARCHAR(5) NULL
		, S1501_C06_006M VARCHAR(5) NULL
		, S1501_C06_007E NUMERIC(19,4) NULL
		, S1501_C06_007M NUMERIC(19,4) NULL
		, S1501_C06_008E NUMERIC(19,4) NULL
		, S1501_C06_008M NUMERIC(19,4) NULL
		, S1501_C06_009E NUMERIC(19,4) NULL
		, S1501_C06_009M NUMERIC(19,4) NULL
		, S1501_C06_010E NUMERIC(19,4) NULL
		, S1501_C06_010M NUMERIC(19,4) NULL
		, S1501_C06_011E NUMERIC(19,4) NULL
		, S1501_C06_011M NUMERIC(19,4) NULL
		, S1501_C06_012E NUMERIC(19,4) NULL
		, S1501_C06_012M NUMERIC(19,4) NULL
		, S1501_C06_013E NUMERIC(19,4) NULL
		, S1501_C06_013M NUMERIC(19,4) NULL
		, S1501_C06_014E NUMERIC(19,4) NULL
		, S1501_C06_014M NUMERIC(19,4) NULL
		, S1501_C06_015E NUMERIC(19,4) NULL
		, S1501_C06_015M NUMERIC(19,4) NULL
		, S1501_C06_016E VARCHAR(5) NULL
		, S1501_C06_016M VARCHAR(5) NULL
		, S1501_C06_017E NUMERIC(19,4) NULL
		, S1501_C06_017M NUMERIC(19,4) NULL
		, S1501_C06_018E NUMERIC(19,4) NULL
		, S1501_C06_018M NUMERIC(19,4) NULL
		, S1501_C06_019E VARCHAR(5) NULL
		, S1501_C06_019M VARCHAR(5) NULL
		, S1501_C06_020E NUMERIC(19,4) NULL
		, S1501_C06_020M NUMERIC(19,4) NULL
		, S1501_C06_021E NUMERIC(19,4) NULL
		, S1501_C06_021M NUMERIC(19,4) NULL
		, S1501_C06_022E VARCHAR(5) NULL
		, S1501_C06_022M VARCHAR(5) NULL
		, S1501_C06_023E NUMERIC(19,4) NULL
		, S1501_C06_023M NUMERIC(19,4) NULL
		, S1501_C06_024E NUMERIC(19,4) NULL
		, S1501_C06_024M NUMERIC(19,4) NULL
		, S1501_C06_025E VARCHAR(5) NULL
		, S1501_C06_025M VARCHAR(5) NULL
		, S1501_C06_026E NUMERIC(19,4) NULL
		, S1501_C06_026M NUMERIC(19,4) NULL
		, S1501_C06_027E NUMERIC(19,4) NULL
		, S1501_C06_027M NUMERIC(19,4) NULL
		, S1501_C06_028E VARCHAR(5) NULL
		, S1501_C06_028M VARCHAR(5) NULL
		, S1501_C06_029E NUMERIC(19,4) NULL
		, S1501_C06_029M NUMERIC(19,4) NULL
		, S1501_C06_030E NUMERIC(19,4) NULL
		, S1501_C06_030M NUMERIC(19,4) NULL
		, S1501_C06_031E VARCHAR(5) NULL
		, S1501_C06_031M VARCHAR(5) NULL
		, S1501_C06_032E NUMERIC(19,4) NULL
		, S1501_C06_032M NUMERIC(19,4) NULL
		, S1501_C06_033E NUMERIC(19,4) NULL
		, S1501_C06_033M NUMERIC(19,4) NULL
		, S1501_C06_034E VARCHAR(5) NULL
		, S1501_C06_034M VARCHAR(5) NULL
		, S1501_C06_035E NUMERIC(19,4) NULL
		, S1501_C06_035M NUMERIC(19,4) NULL
		, S1501_C06_036E NUMERIC(19,4) NULL
		, S1501_C06_036M NUMERIC(19,4) NULL
		, S1501_C06_037E VARCHAR(5) NULL
		, S1501_C06_037M VARCHAR(5) NULL
		, S1501_C06_038E NUMERIC(19,4) NULL
		, S1501_C06_038M NUMERIC(19,4) NULL
		, S1501_C06_039E NUMERIC(19,4) NULL
		, S1501_C06_039M NUMERIC(19,4) NULL
		, S1501_C06_040E VARCHAR(5) NULL
		, S1501_C06_040M VARCHAR(5) NULL
		, S1501_C06_041E NUMERIC(19,4) NULL
		, S1501_C06_041M NUMERIC(19,4) NULL
		, S1501_C06_042E NUMERIC(19,4) NULL
		, S1501_C06_042M NUMERIC(19,4) NULL
		, S1501_C06_043E VARCHAR(5) NULL
		, S1501_C06_043M VARCHAR(5) NULL
		, S1501_C06_044E NUMERIC(19,4) NULL
		, S1501_C06_044M NUMERIC(19,4) NULL
		, S1501_C06_045E NUMERIC(19,4) NULL
		, S1501_C06_045M NUMERIC(19,4) NULL
		, S1501_C06_046E VARCHAR(5) NULL
		, S1501_C06_046M VARCHAR(5) NULL
		, S1501_C06_047E NUMERIC(19,4) NULL
		, S1501_C06_047M NUMERIC(19,4) NULL
		, S1501_C06_048E NUMERIC(19,4) NULL
		, S1501_C06_048M NUMERIC(19,4) NULL
		, S1501_C06_049E VARCHAR(5) NULL
		, S1501_C06_049M VARCHAR(5) NULL
		, S1501_C06_050E NUMERIC(19,4) NULL
		, S1501_C06_050M NUMERIC(19,4) NULL
		, S1501_C06_051E NUMERIC(19,4) NULL
		, S1501_C06_051M NUMERIC(19,4) NULL
		, S1501_C06_052E VARCHAR(5) NULL
		, S1501_C06_052M VARCHAR(5) NULL
		, S1501_C06_053E NUMERIC(19,4) NULL
		, S1501_C06_053M NUMERIC(19,4) NULL
		, S1501_C06_054E NUMERIC(19,4) NULL
		, S1501_C06_054M NUMERIC(19,4) NULL
		, S1501_C06_055E NUMERIC(19,4) NULL
		, S1501_C06_055M NUMERIC(19,4) NULL
		, S1501_C06_056E NUMERIC(19,4) NULL
		, S1501_C06_056M NUMERIC(19,4) NULL
		, S1501_C06_057E NUMERIC(19,4) NULL
		, S1501_C06_057M NUMERIC(19,4) NULL
		, S1501_C06_058E NUMERIC(19,4) NULL
		, S1501_C06_058M NUMERIC(19,4) NULL
		, S1501_C06_059E VARCHAR(5) NULL
		, S1501_C06_059M VARCHAR(5) NULL
		, S1501_C06_060E VARCHAR(5) NULL
		, S1501_C06_060M VARCHAR(5) NULL
		, S1501_C06_061E VARCHAR(5) NULL
		, S1501_C06_061M VARCHAR(5) NULL
		, S1501_C06_062E VARCHAR(5) NULL
		, S1501_C06_062M VARCHAR(5) NULL
		, S1501_C06_063E VARCHAR(5) NULL
		, S1501_C06_063M VARCHAR(5) NULL
		, S1501_C06_064E VARCHAR(5) NULL
		, S1501_C06_064M VARCHAR(5) NULL
	)	