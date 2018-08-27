Rails.application.routes.draw do
  root "static_pages#home"
  devise_for :users, :controller => { :registrations => "users" }
  resources :movies
end
