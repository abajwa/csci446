class Author < ActiveRecord::Base
	belongs_to :articles
	validates_presence_of :author_name
	validate :author_cannot_be_sally
	has_attached_file :photo

	
	protected
	
	def author_cannot_be_sally
		errors.add(:author_name, 'cannot be Sally') if author_name.match(/sally/i)
	end
	
end
