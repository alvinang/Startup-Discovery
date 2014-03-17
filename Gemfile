source 'https://rubygems.org'

ruby '2.1.1'
gem 'rails', '4.0.2'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 1.2'
gem 'figaro'
gem 'httparty'
gem 'backbone-on-rails'
gem 'newrelic_rpm'

# UI
gem 'bootstrap-sass'

# Third party API wrapper
gem 'angellist_api'
gem 'crunchbase'

group :production do
  gem 'pg'
  gem 'thin'
  gem 'rails_12factor'
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