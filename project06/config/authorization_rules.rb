authorization do
	role :guest do
		has_permission_on :user_sessions, :to => :loginout
		has_permission_on :guest_users, :to => [:create, :new]
	end
	
	role :member do
		includes :guest
		has_permission_on :user_sessions, :to => :loginout
		has_permission_on :member_users, :to => [:edit, :update]
		has_permission_on :member_member, :to => :manage
		has_permission_on :member_games, :to => :manage
	end
	
	role :admin do
		includes :member
		has_permission_on :admin_admin, :to => :manage
		has_permission_on :admin_users, :to => :manage
		has_permission_on :admin_roles, :to => :crud
		has_permission_on :user_sessions, :to => :loginout
		has_permission_on :admin_games, :to => :manage
	end
	
end

privileges do
	privilege :manage, :includes => [:create, :index, :new, :update, :edit]
	privilege :crud, :includes => [:create, :index, :show, :new, :update, :edit, :destroy]
	privilege :loginout, :includes => [:create, :destroy, :new]
end

