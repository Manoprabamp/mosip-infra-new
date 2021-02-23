#!/bin/sh
# Script to clear tables in prereg for testing.
# CAUTION: Know what you are doing
HOST=10.10.20.233
PORT=5432
psql -d mosip_prereg -h $HOST  -p $PORT -U postgres < prereg.sql
psql -d mosip_kernel -h $HOST  -p $PORT -U postgres < kernel.sql
