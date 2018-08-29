class RequestsController < ApplicationController

  def index
    @commission = Commission.find(params[:commission_id])
    @requests = @commission.requests
  end

  def new
    @commission = Commission.find(params[:commission_id])
    @request = Request.new
  end

  def create
    @commission = Commission.find(params[:commission_id])
    @request = Request.new(request_params)
    @request.commission = Commission.find(params[:commission_id])
    @request.save
    redirect_to commission_path(@commission)
  end

  def delete
  end

  private

  def request_params
    params.require(:request).permit(:description, :amount)
  end

end
