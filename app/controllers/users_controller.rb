class UsersController < ApplicationController
  before_action

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end



  def artist?
    @user = User.find(params[:id])
    @arts.each do |art|
      if art.user_id == @user.id
        return true
      end
    end
  end
end
