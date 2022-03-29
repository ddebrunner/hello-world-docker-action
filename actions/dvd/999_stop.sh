#!/bin/sh -l
pg_ctl stop -W --mode=fast

# pg_ctl start
# ps -ef