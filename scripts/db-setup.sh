#!/bin/bash
# Run Migrations
for file in $PROJECT_WD/migrations/*.sql
do
    /opt/mssql-tools/bin/sqlcmd -H $HOSTNAME -U sa -P $MSSQL_SA_PASSWORD -i $file >> $0
done

Import Data
/opt/mssql-tools/bin/bcp CSCI226.dbo.EpaCrsi in $PROJECT_WD/data/2017_epa_crsi.dat -S $HOSTNAME -U sa -P $MSSQL_SA_PASSWORD -F 2 -f $PROJECT_WD/data/EpaCrsi-c.fmt