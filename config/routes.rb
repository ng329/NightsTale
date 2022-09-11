Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "profile", to: "pages#profile"

  get "popular", to: "events#popular"

  resources :events, only: %i[index show] do
    resources :bookings, only: %i[create]
    resources :reviews, only: %i[create destroy update]
    get "favourites/add_to_favourites", to: "favourites#add_to_favourites"
  end
end
