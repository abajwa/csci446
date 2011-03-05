authorization do
	role :guest do
		has_permission_on :user_sessions, :to => :loginout
	end
	
	role :member do
		has_permission_on :user_sessions, :to => :loginout
		# :member_members
		# :member_gamez etc..
	end
	
	role :admin do
		includes :member
		has_permission_on :admin_users, :to => :manage
		has_permission_on :admin_roles, :to => :manage
		has_permission_on :user_sessions, :to => :loginout
		#has_permission_on :admin_users, :to => :manage
		#has_permission_on :admin_roles, :to => :manage
		# :admin_gamez etc...
	end
	
end

privileges do
	privilege :manage, :includes => [:create, :destroy, :index, :new, :show, :update]
	privilege :loginout, :includes => [:create, :destroy, :new]
end

