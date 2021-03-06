class Admin::AdminController  < ApplicationController
	
	before_filter :require_user
	
	filter_access_to :all
	
	layout 'admin'
	def index
	end
	
	protected
	
	def permission_denied
		flash[:error] = "You do not have access to that page."
		respond_to do |format|
			format.html { redirect_to root_url }
			format.xml { head :unauthorized }
			format.js { head :unauthorized }
		end
	end
	
end
