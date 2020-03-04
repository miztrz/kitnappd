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

	def card_image_url(kitten)
		if kitten.images.attached?
			url_for(kitten.images.first)
		else
			"https://placekitten.com/#{rand(200..400)}/#{rand(200..400)}"
		end
	end

	def kitten_images(kitten)
		if kitten.images.attached?
			kitten.images.each do |img|
				image_tag img.variant(resize_to_limit: [100, 100])
			end
		end
	end



end
