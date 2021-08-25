#!/bin/sh

set -e

gem install rubocop -v 0.80.1
gem install rubocop-rspec -v 1.38.1
gem install rubocop-performance -v 1.5.2
gem install rubocop-rails -v 2.4.2

ruby /action/lib/index.rb
