#!/bin/sh -l
set -x
set -e
stepzen version

stepzen upload --dir=$GITHUB_WORKSPACE/$1 schema $2
stepzen deploy --schema $2 $2