class UsersController < ApplicationController

  def index
    if params[:query].present?
      sql_query = "first_name ILIKE :query OR last_name ILIKE :query"
      @users = User.where(sql_query, query: "%#{params[:query]}%")
    else
      @users = User.select { |user| user.arts }
    end
  end

  def show
    @user = User.find(params[:id])
    @orders = Order.all
  end
end
