class Article < ActiveRecord::Base
	# makes sure every field has something in it before submitting
	validates_presence_of :title, :author_name, :body
	validate :author_cannot_be_sally
	
	protected
	def author_cannot_be_sally
		errors.add(:author_name, 'cannot be Sally') if author_name.match(/sally/i)
	end
end
