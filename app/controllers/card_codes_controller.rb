class CardCodesController < ApplicationController
  before_action :set_card_code, only: [:show, :edit, :update, :destroy]

  # GET /card_codes
  # GET /card_codes.json
  def index
    @card_codes = CardCode.all
  end

  # GET /card_codes/1
  # GET /card_codes/1.json
  def show
  end

  # GET /card_codes/new
  def new
    @card_code = CardCode.new
  end

  # GET /card_codes/1/edit
  def edit
  end

  # POST /card_codes
  # POST /card_codes.json
  def create
    @card_code = CardCode.new(card_code_params)

    respond_to do |format|
      if @card_code.save
        format.html { redirect_to @card_code, notice: 'Card code was successfully created.' }
        format.json { render action: 'show', status: :created, location: @card_code }
      else
        format.html { render action: 'new' }
        format.json { render json: @card_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_codes/1
  # PATCH/PUT /card_codes/1.json
  def update
    respond_to do |format|
      if @card_code.update(card_code_params)
        format.html { redirect_to @card_code, notice: 'Card code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @card_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_codes/1
  # DELETE /card_codes/1.json
  def destroy
    @card_code.destroy
    respond_to do |format|
      format.html { redirect_to card_codes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_code
      @card_code = CardCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_code_params
      params.require(:card_code).permit(:card_id, :code)
    end
end
