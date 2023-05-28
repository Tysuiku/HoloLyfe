#!/usr/bin/env bash

# exit on error
set -o errexit

echo "Home directory: $HOME"
echo "Gem home: $GEM_HOME"
echo "Gem path: $GEM_PATH"

export PATH="$GEM_HOME/bin:$PATH"

npm run build

# install bundler
gem install bundler

# use bundler to install gems
bundle install

# use bundler to run rails commands
bundle exec rails db:migrate
bundle exec rails db:seed #if needed
