#!/bin/bash
set -Eeuo pipefail

set -o xtrace

/opt/percona/pbm-agent-restore &

/opt/percona/ps-entry.sh "$@"

echo "Physical restore in progress"

sleep infinity