class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.bigint :upc
      t.decimal :quantity
      t.references :order_item_status, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true
      t.decimal :quantity_picked

      t.timestamps null: false
    end
  end
end
