class AddMessageToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :message, :string
  end
end
