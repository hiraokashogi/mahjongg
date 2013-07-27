class TimesGamesController < ApplicationController
  before_action :set_times_game, only: [:show, :edit, :update, :destroy]

  # GET /times_games
  # GET /times_games.json
  def index
    @times_games = TimesGame.all
  end

  # GET /times_games/1
  # GET /times_games/1.json
  def show
  end

  # GET /times_games/new
  def new
    @times_game = TimesGame.new
  end

  # GET /times_games/1/edit
  def edit
  end

  # POST /times_games
  # POST /times_games.json
  def create
    @times_game = TimesGame.new(
      game_titles_id: params["times_game"]["title_id"],
      user1: params["times_game"]["user1"], 
      user2: params["times_game"]["user2"], 
      user3: params["times_game"]["user3"], 
      user4: params["times_game"]["user4"],
      sta: params["times_game"]["sta"]
    )



    respond_to do |format|
      if @times_game.save
        format.html { redirect_to :back}
      end
    end
  end

  # PATCH/PUT /times_games/1
  # PATCH/PUT /times_games/1.json
  def update
    respond_to do |format|
      if @times_game.update(times_game_params)
        format.html { redirect_to :back}
      end
    end
  end

  # DELETE /times_games/1
  # DELETE /times_games/1.json
  def destroy
    @times_game.destroy
    respond_to do |format|
        format.html { redirect_to :back}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_times_game
      @times_game = TimesGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def times_game_params
      params.require(:times_game).permit(:point, :sta)
    end
end
