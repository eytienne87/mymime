Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/profile', to: 'pages#profile'
  patch '/bookings/:id/accept', to: 'bookings#accept', as: :accept
  patch '/bookings/:id/reject', to: 'bookings#reject', as: :reject

  resources :clowns do
    resources :bookings, except: [ :index, :show, :destroy ]
  end
  resources :bookings, only: [ :index, :show, :destroy ]
end
