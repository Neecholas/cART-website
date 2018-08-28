class Art < ApplicationRecord
  belongs_to :user_id
  mount_uploader :photo, PhotoUploader
  validates :title, presence: true
  validates :photo, presence: true
end
