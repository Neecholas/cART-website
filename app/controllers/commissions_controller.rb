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

  private

  def commission_params
    params.require(:commission).permit(:content)
    #after completing box update content
  end

end
