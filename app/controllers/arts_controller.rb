class ArtsController < ApplicationController
  def show
  end

  def new
  end

  def create
  end

  def destroy
    @art = Art.find(params[:id])
    @art.delete
    redirect_to arts_path
  end

end
