Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/play", to: 'pages#play', as: :play
  get "/profiles/:user_id/activities/:id/results", to: "activities#results", as: :results
  resources :activities, only: [:show, :index]

  resources :activity_questions do
    resources :user_responses, only: [:create]
  end
end
