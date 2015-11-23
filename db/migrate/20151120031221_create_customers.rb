class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :company
      t.text :address1
      t.text :address2
      t.text :city
      t.text :state
      t.bigint :zip
      t.bigint :phone
      t.text :contactname
      t.boolean :active

      t.timestamps null: false
    end
  end
end
