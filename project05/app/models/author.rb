class Author < ActiveRecord::Base
	belongs_to :articles
	validates_presence_of :author_name, :photo_url;
	validate :author_cannot_be_sally
	
	protected
	def author_cannot_be_sally
		errors.add(:author_name, 'cannot be Sally') if author_name.match(/sally/i)
	end
end
