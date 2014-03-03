StartupDiscovery::Application.routes.draw do
  root to: "companies#new"
  
  resources :companies
  
end
