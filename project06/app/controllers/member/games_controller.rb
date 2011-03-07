class Member::GamesController < Member::MemberController
	
	before_filter :require_user
	
	GAMES_PER_PAGE = 10
	
  def index
    @games = Game.paginate(:order => 'created_at ASC',:page => params[:page], :per_page => GAMES_PER_PAGE)
  end


  def new
    @game = Game.new
  end

  def create
  	params[:game][:user_id] = current_user.id
    @game = Game.new(params[:game])
    if @game.save
      flash[:notice] = "Successfully added"+" "+@game.title
      redirect_to member_root_url
    else
    	flash[:error] = "Could not create game" 
      render :action => 'new'
    end
  end

  def edit
  	@game = Game.find(params[:id])
  	if current_user.id != @game.user_id
			flash[:error] = "Permission denied"
			redirect_to member_root_url
		end
  end

  def update
  	@game = Game.find(params[:id])
		if current_user.id == @game.user_id
			if @game.update_attributes(params[:game])
				flash[:notice] = "Successfully updated"+" "+@game.title
				redirect_to member_root_url
			else
				flash[:error] = "Could not save changes"
				render :action => 'edit'
			end
		else
			flash[:error] = "Permission denied"
			redirect_to member_root_url
		end
  end

end
