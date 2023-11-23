#!/bin/bash
# Wait some time to allow SQL server to start
echo "Waiting 10 seconds for SQL to start"
sleep 10

# Run Migrations
for file in $PROJECT_WD/migrations/*.sql
do
    /opt/mssql-tools/bin/sqlcmd -H $HOSTNAME -U sa -P $MSSQL_SA_PASSWORD -i $file >> $0
done

# Import Data
echo "Importing EPA CRSI Data (EpaCrsi)"
/opt/mssql-tools/bin/bcp CSCI226.dbo.EpaCrsi in $PROJECT_WD/data/2017_epa_crsi.dat -S $HOSTNAME -U sa -P $MSSQL_SA_PASSWORD -F 2 -f $PROJECT_WD/data/EpaCrsi-c.fmt

echo "Importing 2020 Decennial Census Data (DP1)"
/opt/mssql-tools/bin/bcp CSCI226.dbo.Dp1 in $PROJECT_WD/data/DECENNIALDP2020.DP1-Data.dat -S $HOSTNAME -U sa -P $MSSQL_SA_PASSWORD -F 3 -f $PROJECT_WD/data/Dp1-c.fmt

echo "Importing 2020 Educational Attainment Data (S1501)"
/opt/mssql-tools/bin/bcp CSCI226.dbo.S1501 in $PROJECT_WD/data/ACSST5Y2020.S1501-Data.dat -S $HOSTNAME -U sa -P $MSSQL_SA_PASSWORD -F 2 -f $PROJECT_WD/data/S1501-c.fmt