class CreateCommissions < ActiveRecord::Migration[5.2]
  def change
    create_table :commissions do |t|
      t.string :title
      t.string :description
      t.string :photo
      t.boolean :status
      t.integer :amount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
