Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'index', to: 'lists#index'
  get "lists/:id", to: "lists#show"
  # get 'lists/new', to: 'lists#new'
end
