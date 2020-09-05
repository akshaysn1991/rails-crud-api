Rails.application.routes.draw do
  resources :datacenters
  resources :countries
  resources :languages

  namespace :api do 
    namespace :v1 do 
      resources :datacenters
    end 
  end
   root to: 'datacenters#index'
end
