authorization do

  role :guest do
    has_permission_on :gamez, :to => [:index]
    has_permission_on :users, :to => 
  end

  role :member do
    has_permission_on :gamez, :to => [:create, :show, :index]
    has_permission_on :gamez, :to => [:edit, :update] do
      if_attribute :user => is { user }
    end
    
    has_permission_on :users, :to => [:update] do
      if_attribute :user => is { user }
    end
    
  end

  role :admin do
    includes :guest
    includes :member
    has_permission_on :gamez, :to => [:edit, :update]
    has_permission_on :roles, :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end
        
end
