class Article < ActiveRecord::Base
	# makes sure every field has something in it before submitting
	has_one :authors
	validates_presence_of :title, :author_id, :body
end
