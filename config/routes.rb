Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/play", to: 'pages#play', as: :play
  # post "/user_responses/:id/teacher_comments", to: "teacher_comments#create", as:

  get "/badges/:id/completed", to: "badges#completed", as: :completed
  get "/badges/:id/marked", to: "badges#marked", as: :marked

  get "/dashboard", to: "pages#dashboard", as: :dashboard

  get "/:id/toggle", to: "profiles#toggle", as: :toggle

  get "/profiles/:user_id/activities/:id/results", to: "activities#results", as: :results
  resources :profiles, only: [ :show ]

  resources :activities, only: [ :show, :index ]

  resources :user_responses do
    resources :teacher_comments, only: [ :create, :update ]
  end

  resources :teacher_comments, only: [ :destroy ]

  resources :activity_questions do
    resources :user_responses, only: [ :create, :update ]
  end

  resources :classrooms, only: [ :show ]

  get "/classrooms/:id/settings", to: "classrooms#settings", as: :settings

  get "/activities/:id/add_activity", to: "classrooms#add_activity", as: :add_activity
  get "/activities/:id/remove_activity", to: "classrooms#remove_activity", as: :remove_activity
end
