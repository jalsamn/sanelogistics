class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.datetime :deliverydate

      t.timestamps null: false
    end
  end
end
