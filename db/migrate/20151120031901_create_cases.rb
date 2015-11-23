class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.references :product, index: true, foreign_key: true
      t.decimal :quantity_in_case
      t.date :expiration_date
      t.references :location, index: true, foreign_key: true
      t.references :case_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
