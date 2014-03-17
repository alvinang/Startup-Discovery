class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  require 'angellist_api'
  require 'crunchbase'
  
  AngellistApi.configure do |config|
    config.access_token = ENV['ANGELLIST_ACCESS_KEY']
  end
  
  Crunchbase::API.key = ENV['CRUNCHBASE_API_KEY']
    
end
