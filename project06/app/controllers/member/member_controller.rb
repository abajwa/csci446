class Member::MemberController  < ApplicationController
	

	
	before_filter :require_user
	
	filter_access_to :all
	
	layout 'member'
	
	def index
		@games = (Game.find_all_with_user_id(current_user.id)).paginate(:page => params[:page], :per_page => 10)
	end
	
	protected
	
	def permission_denied
		flash[:error] = "You do not have access to #{request.path}."
		respond_to do |format|
			format.html { redirect_to member_root_url }
			format.xml { head :unauthorized }
			format.js { head :unauthorized }
		end
	end
	
end
