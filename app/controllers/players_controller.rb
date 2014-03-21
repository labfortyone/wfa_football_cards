class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /players
  # GET /players.json
  def index
    @players = Player.all
  end

  # GET /players/1
  # GET /players/1.json
  def show
    @team = Team.find(@player.team_id)
    @type_player = TypePlayer.find_by_id(@player.type_player) 
  end

  # GET /players/new
  def new
    @player = Player.new
    @type_players = TypePlayer.all
  end

  # GET /players/1/edit
  def edit
    @type_players = TypePlayer.all
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)
    @player.team_id = Team.all.where("user_id = ?", current_user.id).first.id
    @player.injury = 0

    respond_to do |format|
      if @player.save

        Attribute.all.each do |att|
          @attribute_player = AttributePlayer.new
          @attribute_player.attribute_id = att.id
          @attribute_player.player_id = @player.id
          @attribute_player.value = 10
          @attribute_player.save
        end

        format.html { redirect_to team_path(@player.team_id), notice: 'Player was successfully created.' }
      else
        format.html { render action: 'new' }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:team_id, :name, :type_player, :ball_manipulation, :dribbling, :injury, :pass, :positioning, :speed, :steals, :trickery)
    end
end
