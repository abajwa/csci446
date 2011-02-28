authorization do 
  role :admin do
    has_permission_on :gamez, :to => [:index, :show, :new, :create, :edit, :update, :destroy]
    has_permission_on :members, :to =>[:index, :show, :new, :create, :edit, :update]
  end
end
