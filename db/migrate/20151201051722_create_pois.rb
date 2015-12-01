class CreatePois < ActiveRecord::Migration
  def change
    create_table :pois do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.string :interest

      t.timestamps null: false
    end
  end
end
