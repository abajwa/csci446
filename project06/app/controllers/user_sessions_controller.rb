class UserSessionsController < ApplicationController
	
	before_filter :require_no_user, :only => [:new, :create]
	before_filter :require_user, :only => :destroy
	
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])

    if @user_session.save
    	flash[:notice] = "Welcome back, "+@user_session.user.first_name+" "+@user_session.user.last_name
    #flash_message :notice, "Welcome back, "+@user_session.user.first_name+" "+@user_session.user.last_name
     if @user_session.user.role_id == Role.find_by_name('admin').id
      	redirect_to admin_root_url
      else
      	redirect_to member_root_url
      end
    else
    #	flash_message :error, "Could not log in"
    	flash[:error] = "Could not log in"
      render :action => 'new'
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:notice] = "Successfully logged out."
    redirect_to root_url
  end
  
end
