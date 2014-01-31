class RamblingsController < ApplicationController
  before_action :set_rambling, only: [:show, :edit, :update, :destroy]

  # GET /ramblings
  # GET /ramblings.json
  def index
    @ramblings = Rambling.all
  end

  # GET /ramblings/1
  # GET /ramblings/1.json
  def show
  end

  # GET /ramblings/new
  def new
    @rambling = Rambling.new
  end

  # GET /ramblings/1/edit
  def edit
  end

  # POST /ramblings
  # POST /ramblings.json
  def create
    @rambling = Rambling.new(rambling_params)

    respond_to do |format|
      if @rambling.save
        format.html { redirect_to @rambling, notice: 'Rambling was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rambling }
      else
        format.html { render action: 'new' }
        format.json { render json: @rambling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ramblings/1
  # PATCH/PUT /ramblings/1.json
  def update
    respond_to do |format|
      if @rambling.update(rambling_params)
        format.html { redirect_to @rambling, notice: 'Rambling was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rambling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ramblings/1
  # DELETE /ramblings/1.json
  def destroy
    @rambling.destroy
    respond_to do |format|
      format.html { redirect_to ramblings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rambling
      @rambling = Rambling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rambling_params
      params.require(:rambling).permit(:description)
    end
end
