Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :computers do
    resources :bookings, only: [:show, :create, :destroy]
  end
end
