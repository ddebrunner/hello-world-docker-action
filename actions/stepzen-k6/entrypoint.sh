#!/bin/sh -l

sz_script=$1

set -x
set -e

k6 run \
  -e ENDPOINT="${SZ_ENDPOINT}" \
  -e API_KEY="${SZ_API_KEY}" \
  ${GITHUB_WORKSPACE}/${sz_script}
