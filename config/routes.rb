Rails.application.routes.draw do
  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "countries#index"
  resources :users do
    resources :blog, only: [:new, :edit, :update]
  end
  resources :countries do
    resources :areas do
      resources :posts
    end
  end
end
