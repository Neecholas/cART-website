class CommissionsController < ApplicationController
  def index
    @commissions = Commission.all
  end

  def show
    @commission = Commission.find(params[:id])
  end

  def new
    @commission = Commission.new
  end

  def create
    @commission = Commission.new(commission_params)
    # @commission.art = Commission.find(params[:art_id])
    @commission.user = current_user
    @commission.save
    redirect_to commission_path(@commission)
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
    params.require(:commission).permit(:title, :description, :amount, :photo)
  end


end
