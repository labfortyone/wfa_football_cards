class TypePlayersController < ApplicationController
  before_action :set_type_player, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /type_players
  # GET /type_players.json
  def index
    @type_players = TypePlayer.all
  end

  # GET /type_players/1
  # GET /type_players/1.json
  def show
  end

  # GET /type_players/new
  def new
    @type_player = TypePlayer.new
  end

  # GET /type_players/1/edit
  def edit
  end

  # POST /type_players
  # POST /type_players.json
  def create
    @type_player = TypePlayer.new(type_player_params)

    respond_to do |format|
      if @type_player.save
        format.html { redirect_to @type_player, notice: 'Type player was successfully created.' }
        format.json { render action: 'show', status: :created, location: @type_player }
      else
        format.html { render action: 'new' }
        format.json { render json: @type_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_players/1
  # PATCH/PUT /type_players/1.json
  def update
    respond_to do |format|
      if @type_player.update(type_player_params)
        format.html { redirect_to @type_player, notice: 'Type player was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @type_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_players/1
  # DELETE /type_players/1.json
  def destroy
    @type_player.destroy
    respond_to do |format|
      format.html { redirect_to type_players_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_player
      @type_player = TypePlayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_player_params
      params.require(:type_player).permit(:name)
    end
end
