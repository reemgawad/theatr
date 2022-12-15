Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/play", to: 'pages#play', as: :play
  # post "/user_responses/:id/teacher_comments", to: "teacher_comments#create", as:

  get "badges/:id/completed", to: "badges#completed", as: :completed

  get "/profiles/:user_id/activities/:id/results", to: "activities#results", as: :results
  resources :profiles, only: [ :show ]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :activities, only: [ :show, :index ]

  resources :user_responses do
    resources :teacher_comments, only: [ :create ]
  end

  resources :activity_questions do
    resources :user_responses, only: [ :create, :update ]
  end

  resources :classrooms, only: [ :show ]
end
