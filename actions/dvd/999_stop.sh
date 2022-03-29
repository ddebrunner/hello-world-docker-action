#!/bin/sh -l
pg_ctl stop --mode=smart

pg_ctl start
ps -ef