Rails.application.routes.draw do

  root to: 'restaurants#index'
  resources :restaurants do
    collection do
      get :top
    end
    member do
      get :chef_name
    end
    resources :reviews, only: [:new, :create]
end
  resources :reviews, only:[:destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
