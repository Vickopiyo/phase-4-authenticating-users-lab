Rails.application.routes.draw do

  # logging in
    post  "/login", to: "sessions#create"
    # logging out 
    delete "/logout", to: "sessions#destroy"

    # 
  get "/me", to: "users#show"

  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
