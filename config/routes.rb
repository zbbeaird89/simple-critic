Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  root "static_pages#home"
  get "/about", to: "static_pages#about"
  resources :movies do
    resources :reviews
  end
  resources :users, :only => [:show]
end
