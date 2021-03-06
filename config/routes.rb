Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "concerts#index"
  get "/concerts", to: "concerts#index"

  resources :concerts, only: [:index, :show, :new, :create] do
    # resources :reviews, only: [:new, :create]
  end
  namespace :api do
    resources :concert_data
  end
end
