class AddSkuToRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :sku, :string
  end
end
