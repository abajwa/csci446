class Admin::UsersController < Admin::AdminController
	
	before_filter :find_user, :only => [:show, :edit, :update, :destroy]
	
	USERS_PER_PAGE = 5
	
	def create
		@user = User.new(params[:user])
		
		respond_to do |format|
			if @user.save
				flash[:notice] = 'User was successfully created.'
				format.html { redirect_to  admin_users_path}
				format.xml { render :xml => @user, :status => :created, :location => @user }
			else
				format.html { render :action => "new"}
				format.xml { render :xml => @user.errors, :status => :unprocessable_entity }
			end
		end
	end
	
	def destroy
		respond_to do |format|
			if @user.destroy
				flash[:notice] = 'User was successfully deleted.'
				format.html { redirect_to admin_users_path }
				format.xml { head :ok }
			else
				flash[:error] = 'User could not be deleted.'
				format.html { redirect_to admin_users_path}
				format.xml { head :unprocessable_entity }
			end
		end
	end
	
	def index
		@users = User.paginate(:order => 'last_name ASC',:page => params[:page], :per_page => USERS_PER_PAGE)
		respond_to do |format|
			format.html
			format.xml { render :xml => @users }
		end
	end
	
	def new
		@user = User.new
		
		respond_to do |format|
			format.html
			format.xml { render :xml => @user }
		end
	end
	
	def show 
		respond_to do |format|
			format.html
			format.xml { render :xml => @user }
		end
	end
	
	def update
		respond_to do |format|
			if @user.update_attributes(params[:user])
				flash[:notice] = 'User was successfully updated.'
				format.html { redirect_to  admin_users_path}
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
