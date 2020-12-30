class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.references :categories, foreign_key: true
      t.string :description
      t.string :image
      t.integer :price
      t.boolean :stock

      t.timestamps
    end
  end
end
