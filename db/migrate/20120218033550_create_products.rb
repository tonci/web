class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price_leva
      t.decimal :price_euro
      t.decimal :price_dolar
      t.string :labels
      t.integer :stock
      t.float :rating

      t.timestamps
    end
  end
end
