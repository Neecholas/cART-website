class CommissionsController < ApplicationController
  def index
    @commissions = Commission.all
  end

  def show
    @commission = Commission.find(params[:id])
  end




end
