module BookingsHelper
	def total(booking)
		number_to_currency(booking.total)
	end

	def status(booking)
		if booking.accepted? && booking.start_time > DateTime.now
			return "accepted-pending"
		elsif booking.accepted? && booking.start_time < DateTime.now
			return "accepted-pastdate"
		elsif !booking.accepted? && booking.start_time > DateTime.now
			return "notaccepted-pending"
		elsif !booking.accepted? && booking.start_time < DateTime.now
			return "notaccepted-pastdate"
		else
			return "unknown"
		end
	end

end
