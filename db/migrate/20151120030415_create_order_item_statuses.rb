class CreateOrderItemStatuses < ActiveRecord::Migration
  def change
    create_table :order_item_statuses do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
