class RemoveAmountFromRequest < ActiveRecord::Migration[5.2]
  def change
    remove_column(:requests, :amount)
  end
end
