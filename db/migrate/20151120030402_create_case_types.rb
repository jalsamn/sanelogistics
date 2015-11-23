class CreateCaseTypes < ActiveRecord::Migration
  def change
    create_table :case_types do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
