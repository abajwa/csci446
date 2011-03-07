class Guest::GamesController < Guest::GuestController
	
	GAMES_PER_PAGE = 10
	#article.created_at.to_s(:datetime)
	
  def index
    @games = Game.paginate(:order => 'created_at ASC',:page => params[:page], :per_page => GAMES_PER_PAGE)
		
  end

  def show
    @game = Game.find(params[:id])
  end

end
