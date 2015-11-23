class AddColumnsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :external_order_id, :bigint
    add_column :orders, :external_order_date, :datetime

    add_column :orders, :external_system_id, :integer
    add_index  :orders, :external_system_id
    
    add_column :orders, :order_status_id, :integer
    add_index  :orders, :order_status_id
    
    add_column :orders, :customer_id, :integer
    add_index  :orders, :customer_id


  end
end
