#!/bin/bash
# Creates one database per microservice inside the shared Postgres instance.
# This script is executed automatically by the postgres container on first run
# (via /docker-entrypoint-initdb.d/).

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE db_auth;
    CREATE DATABASE db_eventos;
    CREATE DATABASE db_ordenes;
    CREATE DATABASE db_tickets;
EOSQL
