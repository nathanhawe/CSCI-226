#!/bin/bash
# Run Migrations
/opt/mssql-tools/bin/sqlcmd -H $HOSTNAME -U sa -P $MSSQL_SA_PASSWORD -i $PROJECT_WD/migrations/0001_InitializeDatabase.sql