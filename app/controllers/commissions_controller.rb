class CommissionsController < ApplicationController
  def index
    @commissions = Commission.all
  end


end
