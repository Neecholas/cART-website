class CommissionsController < ApplicationController
  def index
    @commissions = Commission.all
  end

  def show
    @commission = Commission.find(params[:id])
    @user = current_user
  end

  def new
    @commission = Commission.new
  end

  def create
    @commission = Commission.new(commission_params)
    @commission.user = current_user
  end 
  
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

  def destroy
    @commission = Commission.find(params[:id])
    @commission.delete
    redirect_to commissions_path
  end

  private

  def commission_params
    params.require(:commission).permit(:title, :description, :amount, :photo)
  end

end
