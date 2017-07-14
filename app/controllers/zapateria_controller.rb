class ZapateriaController < ApplicationController
  before_action :set_zapaterium, only: [:show, :edit, :update, :destroy]

  # GET /zapateria
  # GET /zapateria.json
  def index
    @zapateria = Zapaterium.all
  end

  # GET /zapateria/1
  # GET /zapateria/1.json
  def show
  end

  # GET /zapateria/new
  def new
    @zapaterium = Zapaterium.new
  end

  # GET /zapateria/1/edit
  def edit
  end

  # POST /zapateria
  # POST /zapateria.json
  def create
    @zapaterium = Zapaterium.new(zapaterium_params)

    respond_to do |format|
      if @zapaterium.save
        format.html { redirect_to @zapaterium, notice: 'Zapaterium was successfully created.' }
        format.json { render :show, status: :created, location: @zapaterium }
      else
        format.html { render :new }
        format.json { render json: @zapaterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zapateria/1
  # PATCH/PUT /zapateria/1.json
  def update
    respond_to do |format|
      if @zapaterium.update(zapaterium_params)
        format.html { redirect_to @zapaterium, notice: 'Zapaterium was successfully updated.' }
        format.json { render :show, status: :ok, location: @zapaterium }
      else
        format.html { render :edit }
        format.json { render json: @zapaterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zapateria/1
  # DELETE /zapateria/1.json
  def destroy
    @zapaterium.destroy
    respond_to do |format|
      format.html { redirect_to zapateria_url, notice: 'Zapaterium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zapaterium
      @zapaterium = Zapaterium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zapaterium_params
      params.require(:zapaterium).permit(:imagen, :imagen1, :imagen2, :nombre)
    end
end
