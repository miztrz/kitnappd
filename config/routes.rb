Rails.application.routes.draw do
  resources :bookings
  devise_for :users
  resources :kittens
  get 'page/home'
  get 'page/about'
  get 'dashboard' => 'kittens#dashboard'
  root 'page#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
