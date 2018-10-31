Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :attendances
  resources :venues

  root 'welcome#index'
end
