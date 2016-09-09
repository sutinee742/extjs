class Employees < ActiveRecord::Migration[5.0]
  def self.up
      create_table :employees do |t|
        t.column :username, :string, :limit => 10, :null => false
        t.column :password, :string, :limit => 10, :null => false
        t.column :name, :string, :limit => 32, :null => false
      end
   end

   def self.down
      drop_table :employees
   end

end
