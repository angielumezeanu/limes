class IntegritiesController < ApplicationController
  before_action :set_integrity, only: [:show, :edit, :update, :destroy]

  # GET /integrities
  # GET /integrities.json
  def index
    @integrities = Integrity.all
  end

  # GET /integrities/1
  # GET /integrities/1.json
  def show
  end

  # GET /integrities/new
  def new
    @integrity = Integrity.new
  end

  # GET /integrities/1/edit
  def edit
  end

  # POST /integrities
  # POST /integrities.json
  def create
    @integrity = Integrity.new(integrity_params)

    respond_to do |format|
      if @integrity.save
        format.html { redirect_to @integrity, notice: 'Integrity was successfully created.' }
        format.json { render :show, status: :created, location: @integrity }
      else
        format.html { render :new }
        format.json { render json: @integrity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /integrities/1
  # PATCH/PUT /integrities/1.json
  def update
    respond_to do |format|
      if @integrity.update(integrity_params)
        format.html { redirect_to @integrity, notice: 'Integrity was successfully updated.' }
        format.json { render :show, status: :ok, location: @integrity }
      else
        format.html { render :edit }
        format.json { render json: @integrity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /integrities/1
  # DELETE /integrities/1.json
  def destroy
    @integrity.destroy
    respond_to do |format|
      format.html { redirect_to integrities_url, notice: 'Integrity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_integrity
      @integrity = Integrity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def integrity_params
      params.require(:integrity).permit(:degree, :description)
    end
end
