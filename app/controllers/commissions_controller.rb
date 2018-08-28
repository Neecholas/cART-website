class CommissionsController < ApplicationController
  def index
    @commissions = Commission.all
  end

  def show
    @commission = Commission.find(params[:id])
    @user = current_user
  end

  def new
    @commissions = Commission.new
  end

  def create
    @commissions = Commission.new(commisson_params)
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
    params.require(:commission).permit(:title, :description, :amount, :photo)
  end
end
