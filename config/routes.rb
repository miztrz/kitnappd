Rails.application.routes.draw do
	root 'page#home'

	get 'page/home'
	get 'page/about'
	get 'page/dashboard'

	devise_for :users

	resources :kittens do
	  resources :bookings
	end

	get "/bookings/:id/payment",    to: "bookings#payment",   as: :booking_payment
	patch "bookings/:id/paid",      to: "bookings#paid",      as: :paid_booking
	patch "bookings/:id/confirm",   to: "bookings#confirm",   as: :confirm_booking
	patch "bookings/:id/owner",     to: "bookings#owner",     as: :owner_booking
	patch "bookings/:id/player",    to: "bookings#player",    as: :player_booking

end
