class AttributePlayersController < ApplicationController
  before_action :set_attribute_player, only: [:show, :edit, :update, :destroy]

  # GET /attribute_players
  # GET /attribute_players.json
  def index
    @attribute_players = AttributePlayer.all
  end

  # GET /attribute_players/1
  # GET /attribute_players/1.json
  def show
  end

  # GET /attribute_players/new
  def new
    @attribute_player = AttributePlayer.new
  end

  # GET /attribute_players/1/edit
  def edit
  end

  # POST /attribute_players
  # POST /attribute_players.json
  def create
    @attribute_player = AttributePlayer.new(attribute_player_params)

    respond_to do |format|
      if @attribute_player.save
        format.html { redirect_to @attribute_player, notice: 'Attribute player was successfully created.' }
        format.json { render action: 'show', status: :created, location: @attribute_player }
      else
        format.html { render action: 'new' }
        format.json { render json: @attribute_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attribute_players/1
  # PATCH/PUT /attribute_players/1.json
  def update
    respond_to do |format|
      if @attribute_player.update(attribute_player_params)
        format.html { redirect_to @attribute_player, notice: 'Attribute player was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @attribute_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attribute_players/1
  # DELETE /attribute_players/1.json
  def destroy
    @attribute_player.destroy
    respond_to do |format|
      format.html { redirect_to attribute_players_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attribute_player
      @attribute_player = AttributePlayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attribute_player_params
      params.require(:attribute_player).permit(:attribute_id, :player_id, :value)
    end
end
