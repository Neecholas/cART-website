class AddRequestIdToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :request, foreign_key: true
  end
end
