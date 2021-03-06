Rails.application.routes.draw do
	root 'kittens#index'

	get 'page/dashboard',  as: :dashboard
	get 'page/about',      as: :about

	devise_for :users

	resources :kittens do
	  resources :bookings
	end

	put "kittens/:id/paws",       to: "kittens#paws",       as: :kitten_paws

	get "bookings/:id/payment",   to: "bookings#payment",   as: :booking_payment
	put "bookings/:id/paid",      to: "bookings#paid",      as: :paid_booking
	put "bookings/:id/confirm",   to: "bookings#confirm",   as: :confirm_booking
	put "bookings/:id/owner",     to: "bookings#owner",     as: :owner_booking
	put "bookings/:id/player",    to: "bookings#player",    as: :player_booking
end
