source 'https://rubygems.org'

gem 'rails', '4.0.2'

gem 'mysql2'

gem 'acl9'
gem 'symbolize'
gem 'date_validator'


# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'haml-rails'
gem 'simple_form'
gem 'devise'
gem "twitter-bootstrap-rails"

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'
gem 'rspec-rails',        :group => [ :test, :development ]
gem 'single_test',        :group => [ :test, :development ]
gem 'factory_girl_rails', :group => [ :test, :development ] #we need this gem on dev for enabling generator to create factories
gem 'evergreen',          :group => [ :test, :development ], :require => 'evergreen/rails'

gem 'therubyracer', :platforms => :ruby
gem 'libv8'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :assets do
  gem 'sass-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.0.0'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'capybara-webkit'
  gem 'faker'
  gem 'shoulda-matchers'
end

group :development do
  gem "capistrano"
  gem "capistrano-rails"
  gem 'capistrano-rvm'
  gem 'capistrano-bundler'
end
