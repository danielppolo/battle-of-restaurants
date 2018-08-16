Rails.application.routes.draw do
  resources :battles, only: [:new, :create, :show]
  resources :restaurants, only: [:update]
  root 'battles#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
