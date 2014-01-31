class RamblingsController < ApplicationController
  before_action :set_rambling, only: [:show, :edit, :update, :destroy]

  def index
    @ramblings = Rambling.all
  end

  def show
  end

  def new
    @rambling = Rambling.new
  end

  def edit
  end

  def create
    @rambling = Rambling.new(rambling_params)
      if @rambling.save
        redirect_to @rambling, notice: 'Rambling was successfully created.'
      else
        render action: 'new'
      end
  end

  def update
      if @rambling.update(rambling_params)
        redirect_to @rambling, notice: 'Rambling was successfully updated.'
      else
        render action: 'edit'
      end
  end

  def destroy
    @rambling.destroy
      redirect_to ramblings_url
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
