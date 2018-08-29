class AddContentToRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :description, :string
    add_column :requests, :amount, :integer
    add_column :requests, :status, :boolean
  end
end
