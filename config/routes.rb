Rails.application.routes.draw do
  devise_for :users
  resources :kittens
  get 'page/home'
  get 'page/about'
  get 'owner' => 'kittens#owner'
  root 'page#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
