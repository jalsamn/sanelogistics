class CreateExternalSystems < ActiveRecord::Migration
  def change
    create_table :external_systems do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
