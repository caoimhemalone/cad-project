Rails.application.routes.draw do
  get 'users/show'
  get 'profile/new'
  get 'profile/create'
  devise_for :users
    resources:patients
    resources :users
    resources :searches
    root 'patients#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
