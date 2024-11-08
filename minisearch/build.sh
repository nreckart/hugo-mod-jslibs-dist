#!/usr/bin/env bash

# This script clones the MiniSearch git repo and builds the library from source, placing resulting dist/
# directory where it needs to go for this Hugo module. It is used to update the to the latest MiniSearch
# version.

if [ ! -e './src' ]; then
  git clone git@github.com:lucaong/minisearch.git src
fi

cd src
nix-shell -p nodejs yarn --command 'npm install && yarn build-minified'
cd ..
rm -rf ./dist
mv src/dist .
