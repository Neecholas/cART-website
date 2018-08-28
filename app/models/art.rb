class Art < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :title, presence: true
  validates :photo, presence: true
end
