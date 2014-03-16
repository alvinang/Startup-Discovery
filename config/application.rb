require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module StartupDiscovery
  class Application < Rails::Application
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    
    config.generators do |g|
      g.test_framework :rspec, 
        :fixtures => true, 
        :view_specs => false, 
        :helper_specs => false, 
        :routing_specs => false, 
        :controller_specs => true, 
        :request_specs => true
      g.fixture_replacement :factory_girl, :dir => "spec/factories"
    end 
  end
end
