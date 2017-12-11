class SectorBibliographiesController < ApplicationController
  before_action :set_sector_bibliography, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  load_and_authorize_resource

  # GET /sector_bibliographies
  # GET /sector_bibliographies.json
  def index
    @sector_bibliographies = SectorBibliography.all
  end

  # GET /sector_bibliographies/1
  # GET /sector_bibliographies/1.json
  def show
  end

  # GET /sector_bibliographies/new
  def new
    @sector_bibliography = SectorBibliography.new
  end

  # GET /sector_bibliographies/1/edit
  def edit
  end

  # POST /sector_bibliographies
  # POST /sector_bibliographies.json
  def create
    @sector_bibliography = SectorBibliography.new(sector_bibliography_params)

    respond_to do |format|
      if @sector_bibliography.save
        format.html { redirect_to @sector_bibliography, notice: 'Sector bibliography was successfully created.' }
        format.json { render :show, status: :created, location: @sector_bibliography }
      else
        format.html { render :new }
        format.json { render json: @sector_bibliography.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sector_bibliographies/1
  # PATCH/PUT /sector_bibliographies/1.json
  def update
    respond_to do |format|
      if @sector_bibliography.update(sector_bibliography_params)
        format.html { redirect_to @sector_bibliography, notice: 'Sector bibliography was successfully updated.' }
        format.json { render :show, status: :ok, location: @sector_bibliography }
      else
        format.html { render :edit }
        format.json { render json: @sector_bibliography.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sector_bibliographies/1
  # DELETE /sector_bibliographies/1.json
  def destroy
    @sector_bibliography.destroy
    respond_to do |format|
      format.html { redirect_to sector_bibliographies_url, notice: 'Sector bibliography was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sector_bibliography
      @sector_bibliography = SectorBibliography.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sector_bibliography_params
      params.require(:sector_bibliography).permit(:sector_id, :bibliography_id, :page)
    end
end
