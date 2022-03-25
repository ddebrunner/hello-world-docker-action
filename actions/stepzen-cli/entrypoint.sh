#!/bin/sh -l

sz_dir=$1
sz_endpoint=$2

set -e
stepzen version
stepzen login --account "${SZ_ACCOUNT}" --adminkey "${SZ_ADMINKEY}"
set -x
stepzen upload --dir=$GITHUB_WORKSPACE/${sz_dir} schema ${sz_endpoint}
stepzen deploy --schema ${sz_endpoint} ${sz_endpoint}