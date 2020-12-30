class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :country
      t.string :province
      t.string :address
      t.integer :ZIP
      t.integer :phone
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
