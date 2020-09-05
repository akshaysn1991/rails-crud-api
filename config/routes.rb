Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
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
