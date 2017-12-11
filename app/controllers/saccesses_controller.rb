class SaccessesController < ApplicationController
  before_action :set_saccess, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  load_and_authorize_resource

  # GET /saccesses
  # GET /saccesses.json
  def index
    @saccesses = Saccess.all
  end

  # GET /saccesses/1
  # GET /saccesses/1.json
  def show
  end

  # GET /saccesses/new
  def new
    @saccess = Saccess.new
  end

  # GET /saccesses/1/edit
  def edit
  end

  # POST /saccesses
  # POST /saccesses.json
  def create
    @saccess = Saccess.new(saccess_params)

    respond_to do |format|
      if @saccess.save
        format.html { redirect_to @saccess, notice: 'Saccess was successfully created.' }
        format.json { render :show, status: :created, location: @saccess }
      else
        format.html { render :new }
        format.json { render json: @saccess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saccesses/1
  # PATCH/PUT /saccesses/1.json
  def update
    respond_to do |format|
      if @saccess.update(saccess_params)
        format.html { redirect_to @saccess, notice: 'Saccess was successfully updated.' }
        format.json { render :show, status: :ok, location: @saccess }
      else
        format.html { render :edit }
        format.json { render json: @saccess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saccesses/1
  # DELETE /saccesses/1.json
  def destroy
    @saccess.destroy
    respond_to do |format|
      format.html { redirect_to saccesses_url, notice: 'Saccess was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saccess
      @saccess = Saccess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saccess_params
      params.require(:saccess).permit(:name)
    end
end
