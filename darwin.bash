#!usr/bin/env bash
set -euxo pipefail
SCR_DIR=$(cd "$(dirname "$0")"; pwd)
cd "${SCR_DIR}"
# Check operating system
if [ "$(uname)" != "Darwin" ] ; then
  echo "Not macOS!"
  exit 1
fi

