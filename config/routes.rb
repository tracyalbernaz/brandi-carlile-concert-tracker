Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "concerts#index"

  resources :concerts, only: [:index, :show] do
    # resources :reviews, only: [:new, :create]
    # resources :categories, only: [:show]
  end

end
