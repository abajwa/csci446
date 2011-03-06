class Guest::UsersController < Guest::GuestController

	def new
		@user = User.new
		
		respond_to do |format|
			format.html
			format.xml { render :xml => @user }
		end
	end
	
	def create
		@user = User.new(params[:user])
		
		respond_to do |format|
			if @user.save
				flash[:notice] = 'User was successfully created.'
				format.html { redirect_to login_url }
				format.xml { render :xml => @user, :status => :created, :location => @user }
			else
				format.html { render :action => "new"}
				format.xml { render :xml => @user.errors, :status => :unprocessable_entity }
			end
		end
	end


end
