class RequestsController < ApplicationController

  def index
    @requests = Request.all
  end

  def new
  end

  def create
  end

  def delete
  end

end
