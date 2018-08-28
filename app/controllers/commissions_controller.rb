class CommissionsController < ApplicationController
  def index
    @commissions = Commission.all
  end

  def show
    @commission = Commission.find(params[:id])
  end



  def destroy
    @commission = Commission.find(params[:id])
    @commission.delete
    redirect_to commissions_path
  end



end
