class AddArtistIDtoOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :photo, :string
  end
end
