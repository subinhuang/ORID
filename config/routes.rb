Rails.application.routes.draw do
  resources :orids
  resources :groups
  root 'groups#index'
  # root 'orids#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
