#!/bin/bash

if [[ "$(uname)" == "Linux" ]]; then
    BIN_PATH="$HOME/.luarocks/bin"
else
    BIN_PATH="/opt/homebrew/bin"
fi

# Recreate build directories
rm -rf ./build

mkdir -p ./build

$BIN_PATH/amalg.lua -s process.lua -o build/output.lua \
  dep1 dep2


export WALLET_JSON="$(cat ~/.aos.json)"

npx aoform apply -f processes.dev.yaml