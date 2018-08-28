class Commission < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  validates :title, presence: true
end
