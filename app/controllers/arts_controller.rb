class ArtsController < ApplicationController
  def show
    art = Art.find(params[:id])
  end

  def new

  end

  def create
  end

  def destroy
  end
end
