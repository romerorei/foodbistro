class CreateOrdersItems < ActiveRecord::Migration[6.0]
  def change
    create_table :orders_items do |t|
      t.integer :quantity
      t.references :product
      t.references :order, null: false, foreign_key: true
      t.decimal :total
      t.decimal :unit_price

      t.timestamps
    end
  end
end
