class Role < ActiveRecord::Base
	
	validates_length_of :name, :minimum => 1
	validates_uniqueness_of :name
	
  has_many :users
end
