class AprendizsController < ApplicationController
  before_action :set_aprendiz, only: %i[ show edit update destroy ]

  # GET /aprendizs or /aprendizs.json
  def index
    @aprendizs = Aprendiz.all
  end

  # GET /aprendizs/1 or /aprendizs/1.json
  def show
  end

  # GET /aprendizs/new
  def new
    @aprendiz = Aprendiz.new
  end

  # GET /aprendizs/1/edit
  def edit
  end

  # POST /aprendizs or /aprendizs.json
  def create
    @aprendiz = Aprendiz.new(aprendiz_params)

    respond_to do |format|
      if @aprendiz.save
        format.html { redirect_to aprendiz_url(@aprendiz), notice: "Aprendiz was successfully created." }
        format.json { render :show, status: :created, location: @aprendiz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aprendiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aprendizs/1 or /aprendizs/1.json
  def update
    respond_to do |format|
      if @aprendiz.update(aprendiz_params)
        format.html { redirect_to aprendiz_url(@aprendiz), notice: "Aprendiz was successfully updated." }
        format.json { render :show, status: :ok, location: @aprendiz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aprendiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aprendizs/1 or /aprendizs/1.json
  def destroy
    @aprendiz.destroy!

    respond_to do |format|
      format.html { redirect_to aprendizs_url, notice: "Aprendiz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aprendiz
      @aprendiz = Aprendiz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aprendiz_params
      params.require(:aprendiz).permit(:documento, :nombres, :apellidos, :correo, :fecha_nacimiento, :estado)
    end
end
