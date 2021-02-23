#!/bin/sh
# Script to query transaction table
psql -d mosip_regprc -h 10.10.20.233 -p 5432 -U postgres < sql/trans.sql
