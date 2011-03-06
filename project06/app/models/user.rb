class User < ActiveRecord::Base
  acts_as_authentic #do |c|
 #   c.merge_validates_length_of_password_field_options({:minimum => 6})
 # end
  
  belongs_to :role
  
  has_attached_file :photo
  
  # Return an array of roles as symbols for decl_auth
  def role_symbols
    return [role.name.to_sym]
  end
  
end
