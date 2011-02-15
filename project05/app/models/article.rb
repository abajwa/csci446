class Article < ActiveRecord::Base
	# makes sure every field has something in it before submitting
	has_one :authors
	validates_presence_of :title, :author_id, :body
	
	before_save :increment_edits_count
	
	private
	
	def increment_edits_count
		self.update_count += 1 unless self.new_record?
	end
	
end
