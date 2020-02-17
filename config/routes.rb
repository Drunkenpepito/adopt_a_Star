Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :stars do
    resources :bookings, only: %i[show new create] do
      resources :reviews
    end
  end

  resources :bookings, only: %i[index edit update]

  # resources :bookings, only: %i[show] do
  # end



end
