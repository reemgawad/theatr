Rails.application.routes.draw do
  get 'profiles/show'
  devise_for :users
  root to: "pages#home"

  get "/play", to: 'pages#play', as: :play

  resources :profiles, only: [ :show ]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
