class CreateStockPurchases < ActiveRecord::Migration
  def change
    create_table :stock_purchases do |t|
      t.string :symbol
      t.integer :quantity
      t.integer :price

      t.timestamps null: false
    end
  end
end
