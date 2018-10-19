#!/bin/bash

export MIX_ENV=prod
export PORT=4747
export NODEBIN=`pwd`/assets/node_modules/.bin
export PATH="$PATH:$NODEBIN"

echo "Building..."

mkdir -p ~/.config

mix deps.get
(cd assets && npm install)
mix ecto.reset
(cd assets && webpack --mode production)
mix phx.digest
mix compile

echo "Generating release..."
mix release --env=prod
