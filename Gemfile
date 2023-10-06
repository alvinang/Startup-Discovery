source 'https://rubygems.org'

ruby '2.1.1'
gem 'rails', '4.1.0'

gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails', '>= 3.1.1'
gem 'jbuilder', '~> 1.2'

gem 'figaro', '>= 1.0.0'
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
  gem 'better_errors', '>= 2.3.0'
  gem 'binding_of_caller'
  gem 'quiet_assets', '>= 1.0.3'
  gem 'sqlite3'
  gem 'rspec-rails', '>= 2.14.2'
  gem 'factory_girl_rails', '>= 4.5.0'
end

group :test do
  gem 'guard-rspec'
  gem 'faker'
  gem 'capybara'
  gem 'launchy'
end