#!usr/bin/env bash
set -euxo pipefail
FN="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")" .bash)"
SCR_DIR=$(cd "$(dirname "$0")"; pwd)
cd "${SCR_DIR}"
wget -i req.txt
wineboot
winetricks cjkfonts
wine \
VC_redist.x64.exe
wine \
VC_redist.x86.exe
rm -f VC_redist.x64.exe
rm -f VC_redist.x86.exe
7z x kbmed315.7z
rm -f kbmed315.7z
exit 0

