# -*- encoding: utf-8 -*-
source 'https://rubygems.org'

group :development do
  gem 'emeril', '~> 0.8.0'
  gem 'guard', '>= 2.6'
  gem 'guard-foodcritic', '~> 1.0.3'
  gem 'guard-kitchen'
  gem 'guard-rspec'
  gem 'guard-rubocop', '>= 1.1'
end

group :test do
  gem 'berkshelf', '~> 3.1'
  # using this ref so that chefspec doesn't fail when the `rights` attribute is set on the directory resource
  # FIXME: as soon as the chefspec release following 4.2.0 is out
  gem 'chefspec', :github => 'sethvargo/chefspec', :ref => '9bb7a6'
  gem 'coveralls', '~> 0.7.1', require: false
  gem 'foodcritic', '~> 4.0.0'
  gem 'rake', '>= 10.2'
  gem 'rubocop', '= 0.28.0'
end

group :integration do
  gem 'kitchen-vagrant'
  gem 'test-kitchen', '~> 1.4.0'
  gem 'travis-lint'
  gem 'serverspec', '~> 2.18.0'
end
