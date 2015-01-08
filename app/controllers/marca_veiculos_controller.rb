class MarcaVeiculosController < ApplicationController
  before_action :set_marca_veiculo, only: [:show, :edit, :update, :destroy]

  # GET /marca_veiculos
  # GET /marca_veiculos.json
  def index
    @marca_veiculos = MarcaVeiculo.all
  end

  # GET /marca_veiculos/1
  # GET /marca_veiculos/1.json
  def show
  end

  # GET /marca_veiculos/new
  def new
    @marca_veiculo = MarcaVeiculo.new
  end

  # GET /marca_veiculos/1/edit
  def edit
  end

  # POST /marca_veiculos
  # POST /marca_veiculos.json
  def create
    @marca_veiculo = MarcaVeiculo.new(marca_veiculo_params)

    respond_to do |format|
      if @marca_veiculo.save
        format.html { redirect_to @marca_veiculo, notice: 'Marca veiculo was successfully created.' }
        format.json { render :show, status: :created, location: @marca_veiculo }
      else
        format.html { render :new }
        format.json { render json: @marca_veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marca_veiculos/1
  # PATCH/PUT /marca_veiculos/1.json
  def update
    respond_to do |format|
      if @marca_veiculo.update(marca_veiculo_params)
        format.html { redirect_to @marca_veiculo, notice: 'Marca veiculo was successfully updated.' }
        format.json { render :show, status: :ok, location: @marca_veiculo }
      else
        format.html { render :edit }
        format.json { render json: @marca_veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marca_veiculos/1
  # DELETE /marca_veiculos/1.json
  def destroy
    @marca_veiculo.destroy
    respond_to do |format|
      format.html { redirect_to marca_veiculos_url, notice: 'Marca veiculo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marca_veiculo
      @marca_veiculo = MarcaVeiculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marca_veiculo_params
      params.require(:marca_veiculo).permit(:nome)
    end
end
