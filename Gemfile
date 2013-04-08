source 'https://rubygems.org'

# Core gems
gem 'rails',                      '3.2.13'
gem 'mysql2',                     '~> 0.3.11'
gem 'jquery-rails'

# Pagination
gem 'kaminari',                   '~> 0.14.1'

# Video processing
gem 'streamio-ffmpeg',            '~> 0.9.0'

# Media APIs
gem 'tvdb_party',                 :git => 'git@github.com:lawitschka/tvdb_party.git'
gem 'ruby-tmdb',                  '~> 0.2.1'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  # Basics
  gem 'sass-rails',               '~> 3.2.6'
  gem 'compass-rails',            '~> 1.0.3'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer',             :platforms => :ruby

  # Compress assets
  gem 'uglifier',                 '>= 1.0.3'

  # Twitter Bootstrap
  gem 'bootstrap-sass',           '~> 2.3.1.0'
end



# Gems only used in development evironment
group :development do
  # Ruby debugger
  gem 'debugger',                 '~> 1.4.0'

  # Pow debugger helper
  gem 'pow-debug',                '~> 0.2.0'

  # Better errors
  gem 'better_errors',            '~> 0.7.0'
  gem 'binding_of_caller',        '~> 0.7.1'
  gem 'meta_request',             '~> 0.2.2'

  # Awesome Print
  gem 'awesome_print'
end



# Gems only used in test and development environments
group :test, :development do
  # MySQL and SQLite database support in development/test environment
  gem 'sqlite3',                  '~> 1.3.7'

  # RSpec testing instead of Test::Unit
  gem 'rspec-rails',              '~> 2.10.1'

  # Ruby FSEvent for filesystem watching on OS X
  gem 'rb-fsevent',               '~> 0.9.0'

  # Guard
  gem 'guard',                    '~> 1.5.4'

  # Guard RSpec for automated RSpec testing
  gem 'guard-rspec',              '~> 1.1.0'

  # Mountain Lion native notifications
  gem 'terminal-notifier-guard',  '~> 1.5.3'

  # Machinist 2 for fixture creation
  gem 'machinist',                '~> 2.0'

  # Fast Faker for dummy data creation (http://rdoc.info/github/EmmanuelOga/ffaker)
  gem 'ffaker',                   '~> 1.12.1'

  # Shoulda Matchers for RSpec
  gem 'shoulda-matchers',         '~> 1.3.0'
end
