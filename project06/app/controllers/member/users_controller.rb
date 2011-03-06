class Member::UsersController < Member::MemberController
	
	before_filter :find_user, :only => [:edit, :update]
	
	USERS_PER_PAGE = 20
	
	def update
		respond_to do |format|
			if @user.update_attributes(params[:user])
				flash[:notice] = 'User was successfully updated.'
				format.html { redirect_to member_root_url}
				format.xml { head :ok }
			else
				format.html { render :action => "edit" }
				format.xml { render :xml => @user.errors, :status => :unprocessable_entity }
			end
		end
	end
	
	def edit
	end
	
	private 
	
	def find_user
		@user = User.find(params[:id])
	end

end
