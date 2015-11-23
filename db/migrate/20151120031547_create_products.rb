class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :name
      t.bigint :upc
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
