# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

Role.delete_all
Role.create(:name => 'admin');
Role.create(:name => 'member');

User.delete_all
User.create(:username => 'administrator', 
						:crypted_password => 'password',
						:password_confirmation => 'password',
						:first_name => 'Admin',
						:last_name => 'Person',
						:email => 'admin@gmail.com',
						:role_id => Role.find_by_name('admin').id);

User.create(:username => 'member', 
						:crypted_password => 'password',
						:password_confirmation => 'password',
						:first_name => 'Admin',
						:last_name => 'Person',
						:email => 'admin@gmail.com',
						:role_id => Role.find_by_name('member').id);
