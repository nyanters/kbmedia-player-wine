#!usr/bin/env bash
set -euxo pipefail
FN="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")" .bash)"
SCR_DIR=$(cd "$(dirname "$0")"; pwd)
WP="$HOME/.wine_kbm"
WPA=$(cd ${WP}; pwd)
cd "${SCR_DIR}"
source darwin.bash
source brew.bash
source req.bash
exit 0