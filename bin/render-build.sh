#!/usr/bin/env bash

# exit on error
set -o errexit

echo "Home directory: $HOME"
echo "Gem home: $GEM_HOME"
echo "Gem path: $GEM_PATH"

export PATH="$GEM_HOME/bin:$PATH"

npm run build
bundle install
rails db:migrate
rails db:seed #if needed
