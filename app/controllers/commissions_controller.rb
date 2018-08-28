class CommissionsController < ApplicationController
  def index
    @commissions = Commission.all
  end

  def show
    @commission = Commission.find(params[:id])
  end

  def new
    @commissions = Commission.new
  end

  def create
    @commissions = Commission.new(commisson_params)
    # @commission.art = Commission.find(params[:art_id])
    @commission.save
  end
  
  def edit
    @commission = Commission.find(params[:id])
  end

  def update
    @commission = Commission.find(params[:id])
    @commission.update(commission_params)
    redirect_to commission_path(@commission)
  end

  private

  def commission_params
    params.require(:commissions).permit(:title, :description, :amount, :photo)
  end


end
