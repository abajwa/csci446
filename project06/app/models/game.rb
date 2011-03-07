class Game < ActiveRecord::Base
  attr_accessible :title, :rating, :user_id
  
  has_one :users
  
  validates_presence_of :title
end
