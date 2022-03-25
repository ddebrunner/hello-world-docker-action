#!/bin/sh -l

sz_script=$1

k6 run \
  -e ENDPOINT="${SZ_ACCOUNT}" \
  -e API_KEY="${SZ_API_KEY}" \
  ${GITHUB_WORKSPACE}/${sz_script}