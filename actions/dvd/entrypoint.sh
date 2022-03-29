#!/bin/sh -l

set -x
set -e

# Run the Postgres setup
/usr/local/bin/docker-entrypoint.sh

wget https://www.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip
unzip dvdrental.zip


psql -U postgres -w --command="CREATE DATABASE dvdrental"
pg_restore -U postgres -d dvdrental dvdrental.tar

ls ${GITHUB_WORKSPACE}
