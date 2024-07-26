Rails.application.routes.draw do
  devise_for :users
  get 'bar_games/index'
  get 'bars/show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "bars#index"

  resources :games, only: [:show, :edit, :update, :new, :create, :index, :destroy]

  resources :bars, only: [:show, :index], on: :members do
    resources :bar_games, only: [:index]
  end

end
