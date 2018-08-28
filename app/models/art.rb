class Art < ApplicationRecord
  belongs_to :user_id
  mount_uploader :photo, PhotoUploader
end
