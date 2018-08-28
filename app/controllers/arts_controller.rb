class ArtsController < ApplicationController
  def show
    @art = Art.find(params[:id])
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)
    @art.user = current_user
    @art.save
    redirect_to art_path(@art)
  end

  def destroy
    @art = Art.find(params[:id])
    @art.delete
    redirect_to arts_path
  end

  def art_params
    params.require(:art).permit(:photo, :title)
  end
end
