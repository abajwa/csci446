class Member < ActiveRecord::Base
  acts_as_authentic
  attr_accessible :username, :password, :first_name, :last_name, :email
end
