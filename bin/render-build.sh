#!/usr/bin/env bash

# exit on error
set -o errexit

# Define where to install the gems
export GEM_HOME=$HOME/.gem
export GEM_PATH=$GEM_HOME

# Print paths for debugging
echo "Home directory: $HOME"
echo "Gem home: $GEM_HOME"
echo "Gem path: $GEM_PATH"

npm run build

# Install gems locally
bundle install --path $GEM_HOME

rails db:migrate
rails db:seed # if needed
