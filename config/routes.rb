Rails.application.routes.draw do
  resources :sofas, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: :show
  devise_for :users

  resources :profiles, only: [:show, :edit, :update]


  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
