# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

Role.delete_all
Role.create(:name => 'admin')
Role.create(:name => 'member')
Role.create(:name => 'guest')

User.delete_all
User.find_or_create_by_username(:username => 'administrator', 
						:password => 'password',
						:password_confirmation => 'password',
						:first_name => 'Admin',
						:last_name => 'Person',
						:email => 'admin@gmail.com',
						:role_id => Role.find_by_name('admin').id).save!

User.find_or_create_by_username(:username => 'member', 
						:password => 'password',
						:password_confirmation => 'password',
						:first_name => 'Member',
						:last_name => 'Person',
						:email => 'member@gmail.com',
						:role_id => Role.find_by_name('member').id).save!
User.find_or_create_by_username(:username => 'Bob', 
						:password => 'password',
						:password_confirmation => 'password',
						:first_name => 'Robert',
						:last_name => 'Smith',
						:email => 'robs@mail.com',
						:role_id => Role.find_by_name('member').id).save!
User.find_or_create_by_username(:username => 'Jane', 
						:password => 'password',
						:password_confirmation => 'password',
						:first_name => 'Jane',
						:last_name => 'Doe',
						:email => 'Jdoe@mail.com',
						:role_id => Role.find_by_name('member').id).save!

Game.delete_all
Game.create(:title => 'It\' Me Not You',
						:rating => 2,
						:user_id => User.find_by_first_name("Robert").id);
Game.create(:title => 'You Annoy Me',
						:rating => 3,
						:user_id => User.find_by_first_name("Robert").id);
Game.create(:title => 'Call of Duty 12',
						:rating => 0,
						:user_id => User.find_by_first_name("Jane").id);
Game.create(:title => 'Angry Birds',
						:rating => 4,
						:user_id => User.find_by_first_name("Robert").id);
Game.create(:title => 'Just a Friend',
						:rating => 1,
						:user_id => User.find_by_first_name("Jane").id);
Game.create(:title => 'OJ Pong',
						:rating => 4,
						:user_id => User.find_by_first_name("Robert").id);
Game.create(:title => 'It\' Me Not You',
						:rating => 2,
						:user_id => User.find_by_first_name("Robert").id);
Game.create(:title => 'You Annoy Me',
						:rating => 3,
						:user_id => User.find_by_first_name("Robert").id);
Game.create(:title => 'Call of Duty 12',
						:rating => 0,
						:user_id => User.find_by_first_name("Jane").id);
Game.create(:title => 'Angry Birds',
						:rating => 4,
						:user_id => User.find_by_first_name("Robert").id);
Game.create(:title => 'Just a Friend',
						:rating => 1,
						:user_id => User.find_by_first_name("Jane").id);
Game.create(:title => 'OJ Pong',
						:rating => 4,
						:user_id => User.find_by_first_name("Robert").id);
