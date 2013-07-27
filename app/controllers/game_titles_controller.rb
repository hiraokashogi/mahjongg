class GameTitlesController < ApplicationController
  before_action :set_game_title, only: [:show, :edit, :update, :destroy]

  # GET /game_titles
  # GET /game_titles.json
  def index
    @game_titles = GameTitle.all
  end

  # GET /game_titles/1
  # GET /game_titles/1.json
  def show
    @title_id = params[:id]
p "***************************************************************************************************"
p @title_id
    @times = TimesGame.where("game_titles_id=#{params[:id]}")
    @times_new = TimesGame.new
    g = GameTitle.where("id= #{params[:id]}").first
    @user_id =  [g.user1,g.user2,g.user3,g.user4] - [nil]



    @users = []
     @user_id.each{ |id| @users <<  User.find(id)}
p @users
  end

  # GET /game_titles/new
  def new
    @game_title = GameTitle.new
    @users = User.find(:all)
  end

  # GET /game_titles/1/edit
  def edit
  end

  # POST /game_titles
  # POST /game_titles.json
  def create
    @game_title = GameTitle.new(title: params["game_title"]["title"],  user1: params["game_title"]["user1"], user2: params["game_title"]["user2"], user3:params["game_title"]["user3"], user4: params["game_title"]["user4"])




    respond_to do |format|
      if @game_title.save
        format.html { redirect_to @game_title, notice: 'Game title was successfully created.' }
        format.json { render action: 'show', status: :created, location: @game_title }
      else
        format.html { render action: 'new' }
        format.json { render json: @game_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_titles/1
  # PATCH/PUT /game_titles/1.json
  def update
    respond_to do |format|
      if @game_title.update(game_title_params)
        format.html { redirect_to @game_title, notice: 'Game title was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @game_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_titles/1
  # DELETE /game_titles/1.json
  def destroy
    @game_title.destroy
    respond_to do |format|
      format.html { redirect_to game_titles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_title
      @game_title = GameTitle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_title_params
      params.require(:game_title).permit(:title)
    end
end
