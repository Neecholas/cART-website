class Request < ApplicationRecord
  belongs_to :commission
  belongs_to :user
  has_one :order
end
