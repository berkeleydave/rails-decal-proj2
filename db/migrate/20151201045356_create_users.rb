class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.string :location
      t.string :interest
      t.integer :phone

      t.timestamps null: false
    end
  end
end
