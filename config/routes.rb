Rails.application.routes.draw do
  resources :kittens
  get 'page/home'
  get 'page/about'
  root 'page#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
