Rails.application.routes.draw do
  get '/rails/info/routes' => 'routes'
  devise_for :users, :controllers => { :registrations => "registrations", :omniauth_callbacks => "users/omniauth_callbacks" }
  root "static_pages#home"
  get "/about", to: "static_pages#about"
  resources :movies do
    resources :reviews, shallow: true
  end
  resources :users, :only => [:show]
end
