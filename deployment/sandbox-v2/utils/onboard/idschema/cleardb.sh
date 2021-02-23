#!/bin/sh
# Script to clear identity_schema table in mosip_master db.
# WARNING: all data in table will be erased.
# KNOW WHAT YOU ARE DOING!
# Modify -h host to point to your setup

psql -d mosip_master  -h 10.10.20.233 -p 5432 -U postgres < sql/regdel.sql
