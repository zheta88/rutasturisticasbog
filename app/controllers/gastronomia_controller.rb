class GastronomiaController < ApplicationController
  before_action :set_gastronomium, only: [:show, :edit, :update, :destroy]

  # GET /gastronomia
  # GET /gastronomia.json
  def index
    @gastronomia = Gastronomium.all
  end

  # GET /gastronomia/1
  # GET /gastronomia/1.json
  def show
  end

  # GET /gastronomia/new
  def new
    @gastronomium = Gastronomium.new
  end

  # GET /gastronomia/1/edit
  def edit
  end

  # POST /gastronomia
  # POST /gastronomia.json
  def create
    @gastronomium = Gastronomium.new(gastronomium_params)

    respond_to do |format|
      if @gastronomium.save
        format.html { redirect_to @gastronomium, notice: 'Gastronomium was successfully created.' }
        format.json { render :show, status: :created, location: @gastronomium }
      else
        format.html { render :new }
        format.json { render json: @gastronomium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gastronomia/1
  # PATCH/PUT /gastronomia/1.json
  def update
    respond_to do |format|
      if @gastronomium.update(gastronomium_params)
        format.html { redirect_to @gastronomium, notice: 'Gastronomium was successfully updated.' }
        format.json { render :show, status: :ok, location: @gastronomium }
      else
        format.html { render :edit }
        format.json { render json: @gastronomium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gastronomia/1
  # DELETE /gastronomia/1.json
  def destroy
    @gastronomium.destroy
    respond_to do |format|
      format.html { redirect_to gastronomia_url, notice: 'Gastronomium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gastronomium
      @gastronomium = Gastronomium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gastronomium_params
      params.require(:gastronomium).permit(:plato, :descripcion, :imagen)
    end
end
