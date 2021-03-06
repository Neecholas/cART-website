class RequestsController < ApplicationController

  # def index
  #   @commission = Commission.find(params[:commission_id])
  #   @requests = @commission.requests
  # end

  def new
    @commission = Commission.find(params[:commission_id])
    @request = Request.new
  end

  def create
    @commission = Commission.find(params[:commission_id])
    @request = Request.new(request_params)
    @request.commission = Commission.find(params[:commission_id])
    @request.user = current_user
    @request.save
    flash[:notice] = "Request successfully created"
    redirect_to commission_path(@commission)
  end

  def show
    @request = Request.find(params[:id])
  end

  def accept
    @request = Request.find(params[:request_id])
    @commission = @request.commission
    @request.status = true
    @request.save
    @commission.status = true
    @commission.save
    @commission.requests.each do |request|
      unless request.status
        request.destroy
      end
    end
    redirect_to commission_path(@commission)
  end

  private

  def request_params
    params.require(:request).permit(:description, :price_cents, :status)
  end

end
