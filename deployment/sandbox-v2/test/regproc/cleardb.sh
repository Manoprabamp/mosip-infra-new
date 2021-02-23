#!/bin/sh
# Script to clear tables related to upload of packet.  This is for testing
# by uploading a single packet
# WARNING: all data in several tables will be erased.
psql -d mosip_regprc -h 10.10.20.233 -p 5432 -U postgres < sql/regdel.sql
