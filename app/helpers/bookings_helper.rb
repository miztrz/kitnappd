module BookingsHelper

	def total(booking)
		number_to_currency(booking.total)
	end

	def state(booking)
		booking = booking

		if booking.start_time > DateTime.now
			future(booking)
		elsif booking.start_time < DateTime.now && booking.end_time > DateTime.now
			current(booking)
		elsif booking.end_time < DateTime.now
			past(booking)
		else
			"error BH100"
		end
	end

	def future(booking)
		if booking.paid == false
			"future-payment"
		elsif booking.confirmed == false
			"future-confirmation"
		elsif booking.paid && booking.confirmed
			"future-booked"
		else
			"error BH200"
		end
	end

	def current(booking)
		if booking.paid && booking.confirmed
			"current-confirmed"
		elsif booking.paid == false
			"cancelled-payment"
		elsif booking.confirmed == false
			"cancelled-confirmation"
		else
			"error BH300"
		end
	end
	#
	def past(booking)
		if booking.paid == false && booking.confirmed == false
			"error BH401"
		elsif booking.owner == false && booking.player == false
			"past-none"
		elsif booking.player == false
			"past-player"
		elsif booking.owner == false
			"past-owner"
		elsif booking.owner && booking.player
			if booking.fundsreleased == false
				"past-payment"
			elsif booking.fundsreleased
				"past-complete"
			else
				"error BH402"
			end
		else
			"error BH403"
		end
	end
	end