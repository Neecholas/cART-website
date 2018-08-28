class ArtsController < ApplicationController
  def show
  end

  def new
    @art = Art.new
  end

  def create
    @user = params[:id]
    @art = Art.new(params)
    @art.user_id = @user.id
    @art.save
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
