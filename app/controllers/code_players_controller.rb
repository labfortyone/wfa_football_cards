class CodePlayersController < ApplicationController
  before_action :set_code_player, only: [:show, :edit, :update, :destroy]

  # GET /code_players
  # GET /code_players.json
  def index
    @code_players = CodePlayer.all
  end

  # GET /code_players/1
  # GET /code_players/1.json
  def show
  end

  # GET /code_players/new
  def new
    @code_player = CodePlayer.new
    @players =  Team.all.where("user_id = ?", current_user.id).first.players
    @player = Player.find(params[:id])
  end

  # GET /code_players/1/edit
  def edit
    @players =  Team.all.where("user_id = ?", current_user.id).first.players
  end

  # POST /code_players
  # POST /code_players.json
  def create
    @code_player = CodePlayer.new(code_player_params)

    respond_to do |format|
      if @code_player.save
        format.html { redirect_to @code_player, notice: 'Code player was successfully created.' }
        format.json { render action: 'show', status: :created, location: @code_player }
      else
        format.html { render action: 'new' }
        format.json { render json: @code_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_players/1
  # PATCH/PUT /code_players/1.json
  def update
    respond_to do |format|
      if @code_player.update(code_player_params)
        format.html { redirect_to @code_player, notice: 'Code player was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @code_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_players/1
  # DELETE /code_players/1.json
  def destroy
    @code_player.destroy
    respond_to do |format|
      format.html { redirect_to code_players_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_player
      @code_player = CodePlayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_player_params
      params.require(:code_player).permit(:code_id, :player_id)
    end
end
