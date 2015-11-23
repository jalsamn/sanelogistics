class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.text :setting
      t.text :setting_value

      t.timestamps null: false
    end
  end
end
