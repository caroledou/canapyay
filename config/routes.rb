Rails.application.routes.draw do
  resources :sofas, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: :show
  devise_for :users
  root to: 'pages#home'

  get '/users/:id', to: 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
