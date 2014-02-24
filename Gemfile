source 'https://rubygems.org'

# Core gems
gem 'rails',                      '~> 4.0.3'

# SQLite
gem 'sqlite3',                    '~> 1.3.8'

# Exception tracker
gem 'airbrake',                   '~> 3.1.15'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails',               '~> 4.0.0'

# Use SCSS for stylesheets
gem 'sass-rails',                 '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier',                   '>= 1.3.0'

# Use jquery as the JavaScript library
gem 'jquery-rails',               '~> 3.1.0'

# Turbolinks
gem 'turbolinks',                 '~> 2.2.1'
gem 'jquery-turbolinks',          '~> 2.0.2'

# Use HAML for HTML templates
gem 'haml-rails',                 '~> 0.5.3'

# Video processing
gem 'streamio-ffmpeg',            '~> 1.0.0'

# External APIs
gem 'tmdb-api',                   '~> 0.0.5'

# Filesystem watch
gem 'rb-fsevent',                 '~> 0.9.4'


# Gems only used in test and development environments
group :test, :development do
  # Guard
  gem 'guard',                      '~> 2.4.0',   require: false
  gem 'guard-pow',                  '~> 2.0.0',   require: false
  gem 'guard-rspec',                '~> 4.2.0',   require: false
  gem 'guard-bundler',              '~> 2.0.0',   require: false

  # Pry console
  gem 'pry',                        '~> 0.9.12.4'
  gem 'pry-rails',                  '~> 0.3.2'
  gem 'pry-byebug',                 '~> 1.3.1'
  gem 'pry-stack_explorer',         '~> 0.4.9.1'

  # Console formatting
  gem 'awesome_print',              '~> 1.2.0'

  # RSpec testing instead of Test::Unit
  gem 'rspec-rails',                '~> 2.14.1'

  # Better errors in browser
  gem 'better_errors',              '~> 1.1.0'
  gem 'binding_of_caller',          '~> 0.7.2'
  gem 'meta_request',               '~> 0.2.8'
end

# Test environment gems
group :test do
  # Fast Faker for dummy data creation
  gem 'ffaker',                     '~> 1.23.0'

  # Object factory
  gem 'factory_girl_rails',         '~> 4.4.0'

  # ActiveModel and ActiveRecord test helpers
  gem 'shoulda-matchers',           '~> 2.5.0'

  # Mountain Lion native notifications
  gem 'terminal-notifier-guard',    '~> 1.5.3'

  # Test coverage
  gem 'simplecov',                  '~> 0.8.2'
  gem 'simplecov-rcov',             '~> 0.2.3'

  # Mock framework
  gem 'rr',                         '~> 1.1.2'
end