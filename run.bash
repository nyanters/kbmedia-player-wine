#!usr/bin/env bash
set -euxo pipefail
FN="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")" .bash)"
SCR_DIR=$(cd "$(dirname "$0")"; pwd)
WP="$HOME/.wine_kbm"
WPA=$(cd ${WP}; pwd)
cd "${SCR_DIR}"
WINEPREFIX=${WPA} \
wine \
"kbmed312/x64/Kbmplay.exe"
exit 0

