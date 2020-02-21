Rails.application.routes.draw do
  devise_for :users #, :controllers => { registrations: 'registrations' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :stars do
    resources :bookings, only: %i[show new create]
  end

  resources :bookings, only: %i[index edit update] do
    resources :reviews, only: [:new, :create ]
  end

  resources :reviews, only: [:edit, :update, :destroy]

  # resources :bookings, only: %i[show] do
  # end



end
