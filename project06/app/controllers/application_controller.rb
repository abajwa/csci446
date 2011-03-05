# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  #before_filter { |c| Authorization.current_user = c.current_user }
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  filter_parameter_logging :password
  helper_method :current_user, :current_user_session
  
  protected
  
  def permission_denied
    flash[:error] = "Sorry, you are not allowed to access that page."
    redirect_to root_url
  end
    
  private
  
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
  
  def require_user
  	unless current_user
  		flash[:notice] = "You must log in if you want to access that."
  		redirect_to root_url
  		return false
  	end
  end
  
  def require_no_user
  	if current_user
  		flash[:notice] = "You must be logged out to access #{request.path}."
  		redirect_to admin_root_url
  		return false
  	end
  end

  
end
