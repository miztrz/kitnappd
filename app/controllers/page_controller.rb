class PageController < ApplicationController
  def dashboard
    @kittens = Kitten.where(user_id: current_user.id).order(active: :desc)
    @bookings_in = Booking.joins(:kitten).where(bookings: { kitten_id: @kittens.ids} )
    @bookings_out = Booking.where(user_id: current_user.id)
  end

end
