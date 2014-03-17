StartupDiscovery::Application.routes.draw do
  root to: "companies#new"
  
  resources :companies, only: [:create, :new, :show]
  
end
