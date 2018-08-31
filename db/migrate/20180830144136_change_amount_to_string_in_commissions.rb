class ChangeAmountToStringInCommissions < ActiveRecord::Migration[5.2]
  def change
    change_column :commissions, :amount, :string
  end
end
