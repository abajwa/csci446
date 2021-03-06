# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
  	  
  	Author.delete_all
  	Author.create(:author_name => 'Robert Frost')
  	Author.create(:author_name => 'Anonymous')
  	
  	@author = Author.find_by_author_name('Robert Frost')
	Article.delete_all
	
	Article.create(:title => 'Lorem Ipsum',
  	  	  :body =>
  	  	  %{	Lorem ipsum dolor sit amet, consectetur adipisicing 
  	  	  	elit, sed do eiusmod tempor incididunt ut labore et dolore magna 
  	  	  	aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
  	  	  	laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
  	  	  	dolor in reprehenderit in voluptate velit esse cillum dolore eu 
  	  	  	fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
  	  	  	proident, sunt in culpa qui officia deserunt mollit anim id est 
  	  	  	laborum.
  	  	  	},
  	  	  	:author_id => @author.id,
  	  	  	:update_count => 0)
  	  
  	  Article.create(:title => 'Invest',
  	  	  :body =>
  	  	  %{	So what are some specific things you can do? For starters, if you aren't a reader,
  	  	  	you should start with that. Reading books can really expand your mind and allow you 
  	  	  	to learn so many different skills and gain knowledge that will help you in all areas 
  	  	  	of your life. I'm not talking about fiction books here. I'm talking about business books, 
  	  	  	personal development books, or any book where you will actually learn a new skill by reading it. 

  	  	  	You can also take courses and attend seminars. Think about it. These programs are taught by people
  	  	  	who have spent decades figuring out how to make some aspect of their life work and now they are going 
  	  	  	to teach you how to do it. Of course, you want to do some research before you invest in some of these
  	  	  	seminars and make sure you're not just paying for some sales presentation. 

  	  	  	Reading, listening to audio tapes while you drive or workout, attending seminars, and doing anything
  	  	  	that will increase your knowledge and skill base are all great ways to invest your money. However,
  	  	  	before you start, you will want to make sure you have a goal in mind. You want to be clear on what you 
  	  	  	will gain out of doing all of these things. Are you looking to become a better husband or wife? Do you 
  	  	  	want to get in the best shape of your life? Do you want to be a better cook perhaps? How about becoming a writer?
  	  	  	},
  	  	  	:author_id => @author.id,
  	  	  	:update_count => 0)
  	  
  	  Article.create(:title => 'Lorem Ipsum',
  	  	  :body =>
  	  	  %{	Lorem ipsum dolor sit amet, consectetur adipisicing 
  	  	  	elit, sed do eiusmod tempor incididunt ut labore et dolore magna 
  	  	  	aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
  	  	  	laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
  	  	  	dolor in reprehenderit in voluptate velit esse cillum dolore eu 
  	  	  	fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
  	  	  	proident, sunt in culpa qui officia deserunt mollit anim id est 
  	  	  	laborum.
  	  	  	},
  	  	  	:author_id => @author.id,
  	  	  	:update_count => 0)
  	  
  	  Article.create(:title => 'Lorem Ipsum',
  	  	  :body =>
  	  	  %{	What I learned in Robbins Personal Power program is a set of skills that 
  	  		allowed me to get myself to take action. It's not always easy though. Sometimes 
  	  		you can know what to do, know how to get yourself to take action, and still not
  	  		want to do anything. The biggest mistake that I made years ago was that I didn't 
  	  		set goals that I truly wanted. I set goals that were seen as success in other people's
  	  		eyes instead of my own. I went around in circles for years feeling frustrated and wondering
  	  		why I wasn't able to get myself to take the actions necessary to achieve those goals. I found
  	  		out later on that I didn't really want those goals. 

  	  		Once I was able to set the kind of goals that I really wanted, using my personal power
  	  		became a hundred times easier. Again, the concept is simple but putting it into action 
  	  		is a bit more difficult. Once you know what you want, you will need to get yourself to 
  	  		take action long enough for those actions to become a habit. Once it becomes a habit, 
  	  		things get a lot easier. People who have been going to the gym 5 days a week for years 
  	  		don't have to motivate themselves to go. It's a habit, like brushing your teeth.
  	  	  	},
  	  	  	:author_id => @author.id,
  	  	  	:update_count => 0)
  	  
  	  Article.create(:title => 'Lorem Ipsum',
  	  	  :body =>
  	  	  %{	Lorem ipsum dolor sit amet, consectetur adipisicing 
  	  	  	elit, sed do eiusmod tempor incididunt ut labore et dolore magna 
  	  	  	aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
  	  	  	laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
  	  	  	dolor in reprehenderit in voluptate velit esse cillum dolore eu 
  	  	  	fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
  	  	  	proident, sunt in culpa qui officia deserunt mollit anim id est 
  	  	  	laborum.
  	  	  	},
  	  	  	:author_id => @author.id,
  	  	  	:update_count => 0)
  	  
  	  Article.create(:title => 'Invest',
  	  	  :body =>
  	  	  %{	So what are some specific things you can do? For starters, if you aren't a reader,
  	  	  	you should start with that. Reading books can really expand your mind and allow you 
  	  	  	to learn so many different skills and gain knowledge that will help you in all areas 
  	  	  	of your life. I'm not talking about fiction books here. I'm talking about business books, 
  	  	  	personal development books, or any book where you will actually learn a new skill by reading it. 

  	  	  	You can also take courses and attend seminars. Think about it. These programs are taught by people
  	  	  	who have spent decades figuring out how to make some aspect of their life work and now they are going 
  	  	  	to teach you how to do it. Of course, you want to do some research before you invest in some of these
  	  	  	seminars and make sure you're not just paying for some sales presentation. 

  	  	  	Reading, listening to audio tapes while you drive or workout, attending seminars, and doing anything
  	  	  	that will increase your knowledge and skill base are all great ways to invest your money. However,
  	  	  	before you start, you will want to make sure you have a goal in mind. You want to be clear on what you 
  	  	  	will gain out of doing all of these things. Are you looking to become a better husband or wife? Do you 
  	  	  	want to get in the best shape of your life? Do you want to be a better cook perhaps? How about becoming a writer?
  	  	  	},
  	  	  	:author_id => @author.id,
  	  	  	:update_count => 0)
  	  
  	  Article.create(:title => 'Lorem Ipsum',
  	  	  :body =>
  	  	  %{	Lorem ipsum dolor sit amet, consectetur adipisicing 
  	  	  	elit, sed do eiusmod tempor incididunt ut labore et dolore magna 
  	  	  	aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
  	  	  	laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
  	  	  	dolor in reprehenderit in voluptate velit esse cillum dolore eu 
  	  	  	fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
  	  	  	proident, sunt in culpa qui officia deserunt mollit anim id est 
  	  	  	laborum.
  	  	  	},
  	  	  	:author_id => @author.id,
  	  	  	:update_count => 0)
  	  
  	  Article.create(:title => 'Lorem Ipsum',
  	  	  :body =>
  	  	  %{	What I learned in Robbins Personal Power program is a set of skills that 
  	  		allowed me to get myself to take action. It's not always easy though. Sometimes 
  	  		you can know what to do, know how to get yourself to take action, and still not
  	  		want to do anything. The biggest mistake that I made years ago was that I didn't 
  	  		set goals that I truly wanted. I set goals that were seen as success in other people's
  	  		eyes instead of my own. I went around in circles for years feeling frustrated and wondering
  	  		why I wasn't able to get myself to take the actions necessary to achieve those goals. I found
  	  		out later on that I didn't really want those goals. 

  	  		Once I was able to set the kind of goals that I really wanted, using my personal power
  	  		became a hundred times easier. Again, the concept is simple but putting it into action 
  	  		is a bit more difficult. Once you know what you want, you will need to get yourself to 
  	  		take action long enough for those actions to become a habit. Once it becomes a habit, 
  	  		things get a lot easier. People who have been going to the gym 5 days a week for years 
  	  		don't have to motivate themselves to go. It's a habit, like brushing your teeth.
  	  	  	},
  	  	  	:author_id => @author.id,
  	  	  	:update_count => 0)
  	  Article.create(:title => 'Lorem Ipsum',
  	  	  :body =>
  	  	  %{	Lorem ipsum dolor sit amet, consectetur adipisicing 
  	  	  	elit, sed do eiusmod tempor incididunt ut labore et dolore magna 
  	  	  	aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
  	  	  	laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
  	  	  	dolor in reprehenderit in voluptate velit esse cillum dolore eu 
  	  	  	fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
  	  	  	proident, sunt in culpa qui officia deserunt mollit anim id est 
  	  	  	laborum.
  	  	  	},
  	  	  	:author_id => @author.id,
  	  	  	:update_count => 0)
  	  
  	  Article.create(:title => 'Invest',
  	  	  :body =>
  	  	  %{	So what are some specific things you can do? For starters, if you aren't a reader,
  	  	  	you should start with that. Reading books can really expand your mind and allow you 
  	  	  	to learn so many different skills and gain knowledge that will help you in all areas 
  	  	  	of your life. I'm not talking about fiction books here. I'm talking about business books, 
  	  	  	personal development books, or any book where you will actually learn a new skill by reading it. 

	  		You can also take courses and attend seminars. Think about it. These programs are taught by people
  	  	  	who have spent decades figuring out how to make some aspect of their life work and now they are going 
  	  	  	to teach you how to do it. Of course, you want to do some research before you invest in some of these
  	  	  	seminars and make sure you're not just paying for some sales presentation. 

  	  	  	Reading, listening to audio tapes while you drive or workout, attending seminars, and doing anything
  	  	  	that will increase your knowledge and skill base are all great ways to invest your money. However,
  	  	  	before you start, you will want to make sure you have a goal in mind. You want to be clear on what you 
  	  	  	will gain out of doing all of these things. Are you looking to become a better husband or wife? Do you 
  	  	  	want to get in the best shape of your life? Do you want to be a better cook perhaps? How about becoming a writer?
  	  	  	},
  	  	  	:author_id => @author.id,
  	  	  	:update_count => 0)
  	  
  	  Article.create(:title => 'Lorem Ipsum',
  	  	  :body =>
  	  	  %{	Lorem ipsum dolor sit amet, consectetur adipisicing 
  	  	  	elit, sed do eiusmod tempor incididunt ut labore et dolore magna 
  	  	  	aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
  	  	  	laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
  	  	  	dolor in reprehenderit in voluptate velit esse cillum dolore eu 
  	  	  	fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
  	  	  	proident, sunt in culpa qui officia deserunt mollit anim id est 
  	  	  	laborum.
  	  	  	},
  	  	  	:author_id => @author.id,
  	  	  	:update_count => 0)
  	  
  	  Article.create(:title => 'Lorem Ipsum',
  	  	  :body =>
  	  	  %{	What I learned in Robbins Personal Power program is a set of skills that 
  	  		allowed me to get myself to take action. It's not always easy though. Sometimes 
  	  		you can know what to do, know how to get yourself to take action, and still not
  	  		want to do anything. The biggest mistake that I made years ago was that I didn't 
  	  		set goals that I truly wanted. I set goals that were seen as success in other people's
  	  		eyes instead of my own. I went around in circles for years feeling frustrated and wondering
  	  		why I wasn't able to get myself to take the actions necessary to achieve those goals. I found
  	  		out later on that I didn't really want those goals. 

  	  		Once I was able to set the kind of goals that I really wanted, using my personal power
  	  		became a hundred times easier. Again, the concept is simple but putting it into action 
  	  		is a bit more difficult. Once you know what you want, you will need to get yourself to 
  	  		take action long enough for those actions to become a habit. Once it becomes a habit, 
  	  		things get a lot easier. People who have been going to the gym 5 days a week for years 
  	  		don't have to motivate themselves to go. It's a habit, like brushing your teeth.
  	  	  	},
  	  	  	:author_id => @author.id,
  	  	  	:update_count => 0)
