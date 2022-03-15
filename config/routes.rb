Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "countries#home"
  resources :users do
    resources :blog, only: [:new]
  end
  resources :countries do
    resources :places
  end
end
