class RamblingsController < ApplicationController
  before_action :set_rambling, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @ramblings = Rambling.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 25)
  end

  def show
  end

  def new
    @rambling = current_user.ramblings.build
  end

  def edit
  end

  def create
    @rambling = current_user.ramblings.build(rambling_params)
      if @rambling.save
        redirect_to @rambling, notice: 'Success! You rambled.'
      else
        render action: 'new'
      end
  end

  def update
      if @rambling.update(rambling_params)
        redirect_to @rambling, notice: 'Yay! Successfully updated.'
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

    def correct_user
      @rambling = current_user.ramblings.find_by(id: params[:id])
      redirect_to ramblings_path, notice: "Grumpy cats disapproves of you unauthorized edits to other's rambling" if @rambling.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rambling_params
      params.require(:rambling).permit(:description, :image)
    end
end
