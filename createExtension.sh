#!/bin/bash
# Credit to Micah Hausler
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
   CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
EOSQL
