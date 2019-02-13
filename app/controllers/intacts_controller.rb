class IntactsController < ApplicationController
  before_action :set_intact, only: [:show, :edit, :update, :destroy]

  # GET /intacts
  # GET /intacts.json
  def index
    @intacts = Intact.all
  end

  # GET /intacts/1
  # GET /intacts/1.json
  def show
  end

  # GET /intacts/new
  def new
    @intact = Intact.new
  end

  # GET /intacts/1/edit
  def edit
  end

  # POST /intacts
  # POST /intacts.json
  def create
    @intact = Intact.new(intact_params)

    respond_to do |format|
      if @intact.save
        format.html { redirect_to @intact, notice: 'Intact was successfully created.' }
        format.json { render :show, status: :created, location: @intact }
      else
        format.html { render :new }
        format.json { render json: @intact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intacts/1
  # PATCH/PUT /intacts/1.json
  def update
    respond_to do |format|
      if @intact.update(intact_params)
        format.html { redirect_to @intact, notice: 'Intact was successfully updated.' }
        format.json { render :show, status: :ok, location: @intact }
      else
        format.html { render :edit }
        format.json { render json: @intact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intacts/1
  # DELETE /intacts/1.json
  def destroy
    @intact.destroy
    respond_to do |format|
      format.html { redirect_to intacts_url, notice: 'Intact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intact
      @intact = Intact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intact_params
      params.require(:intact).permit(:degree, :description)
    end
end
