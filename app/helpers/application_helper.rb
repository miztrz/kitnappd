module ApplicationHelper

	def app_button(text, href)
		"<a href='#{href}' class='btn btn-dark' role='button' >#{text}</a>".html_safe
	end

	def app_icon(url, href)
		"<a href='#{href}' class='btn' role='button' ><img src='#{url}' alt='icon' /></a>".html_safe
	end

end
