# -*- encoding: utf-8 -*-
source 'https://rubygems.org'

group :development do
  gem 'emeril', '~> 0.8.0'
  gem 'guard', '~> 2.12.7'
  gem 'guard-foodcritic', '~> 1.1.1'
  gem 'guard-rspec', '~> 4.6.0'
  gem 'guard-rubocop', '~> 1.2.0'
end

group :test do
  gem 'berkshelf', '~> 3.1'
  gem 'chefspec', '~> 4.2'
  gem 'coveralls', '~> 0.7.1', require: false
  gem 'foodcritic', '~> 4.0.0'
  gem 'rake', '>= 10.2'
  gem 'rubocop', '= 0.28.0'
end

group :integration do
  gem 'kitchen-vagrant'
  gem 'test-kitchen', '~> 1.3.1'
  gem 'travis-lint'
end
