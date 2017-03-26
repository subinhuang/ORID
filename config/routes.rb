Rails.application.routes.draw do
  devise_for :users

  resources :orids
  resources :groups do
    resources :posts
    member do
      post :join
      post :quit
    end
  end
  resources :posts
  namespace :account do
    resources :groups
  end
    root 'groups#index'
  # root 'orids#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
