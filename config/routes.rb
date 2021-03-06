Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'profiles#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :vans do
    resources :bookings, only: :create
  end
  patch 'bookings/:id/accept', to: 'bookings#accept', as: :accept_booking
  patch 'bookings/:id/reject', to: 'bookings#reject', as: :reject_booking

end
