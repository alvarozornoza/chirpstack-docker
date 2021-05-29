#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    create role chirpstack_ns_eu with login password 'chirpstack_ns_eu';
    create database chirpstack_ns_eu with owner chirpstack_ns_eu;
    create role chirpstack_ns_au with login password 'chirpstack_ns_au';
    create database chirpstack_ns_au with owner chirpstack_ns_au;
EOSQL
