class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.references :users, null: false, foreign_key: true
      t.references :items, null: false, foreign_key: true
      t.integer :quantity
      t.string :status
      t.string :purchaseDate
      t.string :arriveDate

      t.timestamps
    end
  end
end
