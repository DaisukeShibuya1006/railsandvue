Rails.application.routes.draw do
  root to: "home#index"
  get "users/index" => "users#index"
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :users, :only => [:show]
end
