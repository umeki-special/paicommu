class CreateDrawings < ActiveRecord::Migration[7.0]
  def change
    create_table :drawings do |t|
      t.references :user, null: false, foreign_key: true
      t.text :image_data, null: false
      t.string :title, null: false
      t.text :description
      t.timestamps
    end
  end
end
