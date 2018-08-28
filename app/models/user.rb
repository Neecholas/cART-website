class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :commissions, dependent: :destroy
  has_many :arts, dependent: :destroy

  def artist?
    unless self.arts.empty?
    return true
    end
  end
end
