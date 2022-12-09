Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/play", to: 'pages#play', as: :play

  resources :profiles, only: [ :show ]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :activities, only: [:show, :index]

  resources :activity_questions do
    resources :user_responses, only: [:create]
  end
end
