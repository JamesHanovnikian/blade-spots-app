Rails.application.routes.draw do
  root "posts#index"

  resources :spots do
    resources :comments
  end

  resources :spots do
    resources :tricks
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #  ******       SPOTS ROUTES         *******
  get "/spots" => "spots#index"
  post "/spots" => "spots#create"
  get "/spots/:id" => "spots#show"

  # ********    USER ROUTES ****************

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  #************** TRICKS ROUTES *****************

  get "/spots/:spot_id/tricks" => "tricks#index"
  post "/spots/:spot_id/tricks" => "tricks#create"
  get "/spots/:spot_id/tricks/:id" => "tricks#show"

  #**************** COMMENT ROUTES ****************

  get "/spots/:spot_id/comments" => "comments#index"
  post "/spots/:spot_id/comments" => "comments#create"
  get "/comments/:id" => "comments#show"
end
