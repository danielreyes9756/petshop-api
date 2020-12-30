class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.references :users, null: false, foreign_key: true
      #Dudas con este

      t.timestamps
    end
  end
end
