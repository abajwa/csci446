# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	
	def flash_div *keys
		keys.collect { |key| content_tag(:div, flash[key],
		:id => "#{key}") if flash[key] }.join
	end

end
