#!usr/bin/env bash
set -euxo pipefail
FN="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")" .bash)"
SCR_DIR=$(cd "$(dirname "$0")"; pwd)
cd "${SCR_DIR}"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if [ "$(uname -m)" = "arm64" ] ; then
#  (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/${USER}/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
fi
brew bundle --file .Brewfile

