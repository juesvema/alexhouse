class HotelesController < ApplicationController
  before_action :set_hotele, only: [:show, :edit, :update, :destroy]

  # GET /hoteles
  # GET /hoteles.json
  def index
    @hoteles = Hotele.all
  end

  # GET /hoteles/1
  # GET /hoteles/1.json
  def show
  end

  # GET /hoteles/new
  def new
    @hotele = Hotele.new
  end

  # GET /hoteles/1/edit
  def edit
  end

  # POST /hoteles
  # POST /hoteles.json
  def create
    @hotele = Hotele.new(hotele_params)

    respond_to do |format|
      if @hotele.save
        format.html { redirect_to @hotele, notice: 'Hotele was successfully created.' }
        format.json { render :show, status: :created, location: @hotele }
      else
        format.html { render :new }
        format.json { render json: @hotele.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoteles/1
  # PATCH/PUT /hoteles/1.json
  def update
    respond_to do |format|
      if @hotele.update(hotele_params)
        format.html { redirect_to @hotele, notice: 'Hotele was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotele }
      else
        format.html { render :edit }
        format.json { render json: @hotele.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoteles/1
  # DELETE /hoteles/1.json
  def destroy
    @hotele.destroy
    respond_to do |format|
      format.html { redirect_to hoteles_url, notice: 'Hotele was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotele
      @hotele = Hotele.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotele_params
      params.require(:hotele).permit(:nombre, :imagen, :imagen1, :imagen2, :imagen3, :ubicacion, :descripcion, :url)
    end
end
