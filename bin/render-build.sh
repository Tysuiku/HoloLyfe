#!/usr/bin/env bash

# Exit on error
set -o errexit

# Define a new directory to install gems
export GEM_HOME="$HOME/gems"
export GEM_PATH="$GEM_HOME"

export PATH="$GEM_HOME/bin:$PATH"

echo "Home directory: $HOME"
echo "Gem home: $GEM_HOME"
echo "Gem path: $GEM_PATH"

npm run build

# Install the latest bundler
gem install bundler -v 2.3.26

# Use bundler to install gems
bundle config set --local path "$GEM_HOME"
bundle install

# Use bundler to run rails commands
bundle exec rails db:migrate
bundle exec rails db:seed # if needed
