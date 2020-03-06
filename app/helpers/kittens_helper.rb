module KittensHelper

	def hourly_rate(kitten)
		number_to_currency(kitten.hourly_rate)
	end

	def daily_rate(kitten)
		number_to_currency(kitten.daily_rate)
	end

	def active?(kitten)
		kitten.active
	end

	def placekitten
		return "https://placekitten.com/#{rand(200..400)}"
	end

	def card_image_url(kitten)
		if kitten.images.attached?
			url_for(kitten.images.first)
		else
			placekitten
		end
	end

end
