class WholesController < ApplicationController
  before_action :set_whole, only: [:show, :edit, :update, :destroy]

  # GET /wholes
  # GET /wholes.json
  def index
    @wholes = Whole.all
  end

  # GET /wholes/1
  # GET /wholes/1.json
  def show
  end

  # GET /wholes/new
  def new
    @whole = Whole.new
  end

  # GET /wholes/1/edit
  def edit
  end

  # POST /wholes
  # POST /wholes.json
  def create
    @whole = Whole.new(whole_params)

    respond_to do |format|
      if @whole.save
        format.html { redirect_to @whole, notice: 'Whole was successfully created.' }
        format.json { render :show, status: :created, location: @whole }
      else
        format.html { render :new }
        format.json { render json: @whole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wholes/1
  # PATCH/PUT /wholes/1.json
  def update
    respond_to do |format|
      if @whole.update(whole_params)
        format.html { redirect_to @whole, notice: 'Whole was successfully updated.' }
        format.json { render :show, status: :ok, location: @whole }
      else
        format.html { render :edit }
        format.json { render json: @whole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wholes/1
  # DELETE /wholes/1.json
  def destroy
    @whole.destroy
    respond_to do |format|
      format.html { redirect_to wholes_url, notice: 'Whole was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whole
      @whole = Whole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whole_params
      params.require(:whole).permit(:degree, :description)
    end
end
