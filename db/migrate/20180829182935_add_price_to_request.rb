class AddPriceToRequest < ActiveRecord::Migration[5.2]
  def change
    add_monetize :requests, :price, currency: { present: false }
  end
end
