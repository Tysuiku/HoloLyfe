#!/usr/bin/env bash

# exit on error
set -o errexit

# Define a new directory to install gems
export GEM_HOME="$HOME/gems"
export GEM_PATH="$GEM_HOME"

export PATH="$GEM_HOME/bin:$PATH"

echo "Home directory: $HOME"
echo "Gem home: $GEM_HOME"
echo "Gem path: $GEM_PATH"

npm run build

# install bundler compatible with Ruby 2.5.0
gem install bundler -v 2.1.4


# use bundler to install gems
bundle install

# use bundler to run rails commands
bundle exec rails db:migrate
bundle exec rails db:seed #if needed
