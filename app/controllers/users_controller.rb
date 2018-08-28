class UsersController < ApplicationController
  before_action

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit_profile
  end

  def update
    current_user.update(user_params)
    redirect_to root_path
  end

  def artist?
    @user = User.find(params[:id])
    @arts.each do |art|
      if art.user_id == @user.id
        return true
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :bio)
  end
end
