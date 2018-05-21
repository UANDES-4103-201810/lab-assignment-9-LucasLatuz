Rails.application.routes.draw do
  resources :actormovies
  resources :movies
  resources :addresses
  resources :categories
  resources :actors
  resources :directors
  get "person/new", to: "person#new"
  post "person/create", to: "person#create"
  get "person", to: "persons#index"
  post "/persons?role=<u>", to: "type#show"
  root "person#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
