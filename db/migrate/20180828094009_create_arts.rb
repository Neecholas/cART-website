class CreateArts < ActiveRecord::Migration[5.2]
  def change
    create_table :arts do |t|
      t.string :title
      t.string :photo
      t.references :user_id, foreign_key: true

      t.timestamps
    end
  end
end
