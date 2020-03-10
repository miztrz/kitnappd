Rails.application.routes.draw do
  devise_for :users
  resources :kittens do
	  resources :bookings do
		  put :accept
		  put :reject
		  put :paid
	  end
  end



  get 'page/home'
  get 'page/about'
  get 'page/dashboard'
	root 'page#home'

end
