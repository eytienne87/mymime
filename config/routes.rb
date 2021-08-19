Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/profile', to: 'pages#profile'
  patch '/bookings/:id/accept', to: 'bookings#accept', as: :accept
  patch '/bookings/:id/reject', to: 'bookings#reject', as: :reject

  resources :clowns do
    resources :bookings, except: [ :show, :destroy ]
  end
  resources :bookings, only: [ :show, :destroy ]

end
