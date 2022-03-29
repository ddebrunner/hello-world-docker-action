#!/bin/sh -l

set -x
set -e

cd /tmp
wget https://www.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip
unzip dvdrental.zip

pg_restore -U ${POSTGRES_USER} -d ${POSTGRES_DB} dvdrental.tar
rm dvdrental.tar

ls ${GITHUB_WORKSPACE}