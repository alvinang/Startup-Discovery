source 'https://rubygems.org'

ruby '2.1.1'
gem 'rails', '5.2.8.1'

gem 'sass-rails', '~> 5.0.5'
gem 'uglifier', '>= 2.7.2'
gem 'coffee-rails', '~> 4.2.2'
gem 'jquery-rails', '>= 4.4.0'
gem 'jbuilder', '~> 1.5', '>= 1.5.3'

gem 'figaro', '>= 1.0.0'
gem 'httparty', '>= 0.14.0'
gem 'backbone-on-rails'
gem 'newrelic_rpm'
gem 'high_voltage'
gem 'friendly_id', '~> 5.0.3'
gem 'sitemap_generator'
gem 'unicorn'
gem 'airbrake'

# Third party API wrapper
gem 'angellist_api'
gem 'crunchbase'

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'memcachier'
  gem 'dalli'
end

group :development, :test do
  gem 'annotate'
  gem 'pry-rails'
  gem 'better_errors', '>= 2.8.0'
  gem 'binding_of_caller'
  gem 'quiet_assets'
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :test do
  gem 'guard-rspec'
  gem 'faker'
  gem 'capybara'
  gem 'launchy'
end