class Guest::UsersController < Guest::GuestController

	def new
		@user = User.new
		
		respond_to do |format|
			format.html
			format.xml { render :xml => @user }
		end
	end
	
	def create
		params[:user][:role_id] = Role.find_by_name('member').id
		@user = User.new(params[:user])
		
		respond_to do |format|
			if @user.save
				flash[:notice] = 'Welcome '+@user.first_name+' '+@user.last_name
				format.html { redirect_to member_root_url}
				format.xml { render :xml => @user, :status => :created, :location => @user }
			else
				flash[:error] = 'Sorry, could not register you'
				format.html { render :action => "new"}
				format.xml { render :xml => @user.errors, :status => :unprocessable_entity }
			end
		end
	end


end
