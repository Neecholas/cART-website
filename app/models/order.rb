class Order < ApplicationRecord
  belongs_to :user
  belongs_to :request
  monetize :amount_cents
end
