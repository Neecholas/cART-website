class Commission < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :requests, dependent: :destroy
  validates :title, presence: true
end
