FROM mcr.microsoft.com/mssql/server:2022-latest
COPY --chown=mssql:root ./scripts/entrypoint.sh /tmp/csci226/entrypoint.sh
COPY --chown=mssql:root ./scripts/db-setup.sh /tmp/csci226/db-setup.sh
USER root
RUN ["chmod", "+x", "/tmp/csci226/entrypoint.sh"]
RUN ["chmod", "+x", "/tmp/csci226/db-setup.sh"]
USER mssql