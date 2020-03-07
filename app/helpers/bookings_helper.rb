module BookingsHelper
	def total(booking)
		number_to_currency(booking.total)
	end
end
