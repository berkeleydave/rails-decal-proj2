class AlterColumnUsersPhone < ActiveRecord::Migration
  def self.up
  	change_table :users do |t|
  	    t.change :phone, :string
  	end 
  end
  def self.down
  	change_table :users do |t|
  		t.change :users, :integer
  	end
  end 
end
