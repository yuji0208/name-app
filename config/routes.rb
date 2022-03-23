Rails.application.routes.draw do
  get "/", to:"users#index"
  post "/create", to:"users#create"
end
