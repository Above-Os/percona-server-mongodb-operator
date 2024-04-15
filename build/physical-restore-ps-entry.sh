#!/bin/bash

set -Eeuo pipefail
set -o xtrace

log=/tmp/pbm-agent-restore.log

/opt/percona/pbm-agent-restore 2> ${log} &
/opt/percona/ps-entry.sh "$@"

echo "Physical restore in progress"
cat ${log}
sleep infinity