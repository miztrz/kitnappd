module KittensHelper

	def placekitten
		"https://placekitten.com/#{rand(200..400)}"
	end

	def card_image_url(kitten)
		if kitten.images.attached?
			url_for(kitten.images.first)
		else
			placekitten
		end
	end

end
