class SectorsController < ApplicationController
  before_action :set_sector, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  load_and_authorize_resource
  

  # GET /sectors
  # GET /sectors.json
  def index
    @sectors = Sector.all
  end

  # GET /sectors/1
  # GET /sectors/1.json
  def show
    @sector = Sector.find(params[:id])
    @coord = Coordinate.where('sector_id'=> @sector)
    @name= "centre"

    @coordinates = @coord.where('ctype'=> @name)
    @hash = Gmaps4rails.build_markers(@coordinates) do |site, marker|
      marker.lat site.x
      marker.lng site.y
      marker.infowindow site.sector.code

      end

      @namepolygon= "perimeter"
      @polygon = @coord.where('ctype'=> @namepolygon).order(:id)

    @polyjson = []
    coordpoints = []
    @polygon.each do |point|
      coordpoints << { :lat => point.x, :lng => point.y}
    end
    @polyjson = [coordpoints]

  end

  # GET /sectors/new
  def new
    @sector = Sector.new
  end

  # GET /sectors/1/edit
  def edit
  end

  # POST /sectors
  # POST /sectors.json
  def create
    @sector = Sector.new(sector_params)
    @sector.author = current_user.email
    @sector.country = 'Romania'

    respond_to do |format|
      if @sector.save
        format.html { redirect_to @sector, notice: 'Sector was successfully created.' }
        format.json { render :show, status: :created, location: @sector }
      else
        format.html { render :new }
        format.json { render json: @sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sectors/1
  # PATCH/PUT /sectors/1.json
  def update
    respond_to do |format|
      if @sector.update(sector_params)
        format.html { redirect_to @sector, notice: 'Sector was successfully updated.' }
        format.json { render :show, status: :ok, location: @sector }
      else
        format.html { render :edit }
        format.json { render json: @sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sectors/1
  # DELETE /sectors/1.json
  def destroy
    @sector.destroy
    respond_to do |format|
      format.html { redirect_to sectors_url, notice: 'Sector was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sector
      @sector = Sector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sector_params
      params.require(:sector).permit(:locality, :village, :county_id, :site_type, :name, :point, :country, :tower, :institution, :lmi, :map_code, :coordinate_id, :d_length, :d_width, :d_height,
                                     :d_o, :d_type, :area, :description, :soil_type, :chronology, :preservation, :component_id, :form, :location, :access, :risk, :archaeology, 
                                     :pat_value, :remark, :polygon, :author, :code, :ran,  :siruta, :property, :owner, :address, :cadastral, :topo, :site_categ, :relief, :river,
                                     :stratigraphy, :research, :d_east, :d_west, :d_north, :d_south, :flood, :rain, :fire, :animal, :insect, :storm, :water, :earthquake, :landslide,
                                     :salt, :acid, :demolition, :partial, :vandalism, :theft, :arson, :research_type, :geophysics, :restoration, :sect_responsible, :discovery, :scategory_id,
                                     {:bibliography_ids=>[]}, {:preservation_ids=>[]}, {:monument_ids=>[]}, {:land_ids=>[]}, {:saccess_ids=>[]}, :national, :urbanism, :other, :agriculture, :forest,
                                     :buffer_area, :total_area, :wholeness_detail, :intactness_detail, :visintegrity_detail, :absthreats_detail, :substance, :construction_layout, :setting, :integrity,
                                     :authenticity, :importance, :visitors_no, :capacity, :population, :buffer_population, :total_population, :pop_year, :entry_year, :document_no, :museum, :museum_obs,
                                     :indicators, :mon_method, :mon_frequency, :mon_records, :whole_id, :intact_id, :integrity_id, :threat_id, :component_area)
    end
end
