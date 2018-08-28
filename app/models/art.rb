class Art < ApplicationRecord
  belongs_to :user_id
  validates :title, presence: true
  validates :photo, presence: true
end
