Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "profile", to: "pages#profile"

  resources :events, only: %i[index show] do
    resources :bookings, only: %i[create]
  end
end
