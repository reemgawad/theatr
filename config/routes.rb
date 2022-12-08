Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/play", to: 'pages#play', as: :play

  resources :activities, only: [:show, :index]
end
