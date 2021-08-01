Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #  ******       SPOTS ROUTES         *******
  get "/spots" => "spots#index"
  post "/spots" => "spots#create"
  get "/spots/:id" => "spots#show"

  # ********    USER ROUTES ****************

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  #************** TRICKS ROUTES *****************

  get "/tricks" => "tricks#index"
  post "/tricks" => "tricks#create"

  #**************** COMMENT ROUTES ****************

  get "/comments" => "comments#index"
  post "/comments" => "comments#create"
end
