class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :commissions, dependent: :destroy
  has_many :arts, dependent: :destroy
  has_many :requests, dependent: :destroy
  has_many :orders


  def artist?
    unless self.arts.empty?
    return true
    end
  end

  def commissions_requests
    commissions.map { |commission| commission.requests }.flatten
  end

  def orders_as_commissioner
    return self.orders
  end

  def orders_as_commissionee
    orders = []
    requests.each do |request|
      unless request.order.nil?
        orders << request.order
      end
    end
    orders
  end
end
