Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  resources :movies
  resources :users, :only => [:show]
end
