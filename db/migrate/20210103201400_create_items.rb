class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.integer :stock
      t.references :category
      t.references :animal
      t.references :size

      t.timestamps
    end
  end
end
