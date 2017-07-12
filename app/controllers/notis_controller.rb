class NotisController < ApplicationController
  before_action :set_noti, only: [:show, :edit, :update, :destroy]

  # GET /notis
  # GET /notis.json
  def index
    @notis = Noti.all
  end

  # GET /notis/1
  # GET /notis/1.json
  def show
  end

  # GET /notis/new
  def new
    @noti = Noti.new
  end

  # GET /notis/1/edit
  def edit
  end

  # POST /notis
  # POST /notis.json
  def create
    @noti = Noti.new(noti_params)

    respond_to do |format|
      if @noti.save
        format.html { redirect_to @noti, notice: 'Noti was successfully created.' }
        format.json { render :show, status: :created, location: @noti }
      else
        format.html { render :new }
        format.json { render json: @noti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notis/1
  # PATCH/PUT /notis/1.json
  def update
    respond_to do |format|
      if @noti.update(noti_params)
        format.html { redirect_to @noti, notice: 'Noti was successfully updated.' }
        format.json { render :show, status: :ok, location: @noti }
      else
        format.html { render :edit }
        format.json { render json: @noti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notis/1
  # DELETE /notis/1.json
  def destroy
    @noti.destroy
    respond_to do |format|
      format.html { redirect_to notis_url, notice: 'Noti was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noti
      @noti = Noti.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def noti_params
      params.require(:noti).permit(:imagen, :titulo, :contenido, :categoria)
    end
end
