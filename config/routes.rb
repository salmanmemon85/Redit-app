Rails.application.routes.draw do

  authenticate :user, lambda { |user| user.admin? } do
    namespace :admin do
      resources :users, only: [:index]

      root to: "users#index"
    end
  end


  root 'homes#index'
  resources :posts do
  resources :comments
  end
  resources :communities do
  resource :subscriptions
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
