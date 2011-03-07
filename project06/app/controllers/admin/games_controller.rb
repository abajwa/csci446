class Admin::GamesController < Admin::AdminController
	
	before_filter :require_user
	
	GAMES_PER_PAGE = 5
	
  def index
    @games = Game.paginate(:order => 'created_at ASC',:page => params[:page], :per_page => GAMES_PER_PAGE)
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params[:game])
    if @game.save
      flash[:notice] = "Successfully created game."
      redirect_to admin_games_url
    else
      render :action => 'new'
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update_attributes(params[:game])
      flash[:notice] = "Successfully updated game."
      redirect_to admin_games_url
    else
      render :action => 'edit'
    end
  end

end
