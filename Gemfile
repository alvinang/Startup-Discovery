source 'https://rubygems.org'

ruby '2.1.1'
gem 'rails', '4.0.2'

gem 'sass-rails', '~> 4.0.1'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.1'
gem 'jquery-rails'
gem 'jbuilder', '~> 1.2'

gem 'figaro'
gem 'httparty'
gem 'backbone-on-rails'
gem 'newrelic_rpm'
gem 'high_voltage'
gem 'friendly_id', '~> 5.0.0'
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
  gem 'better_errors'
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