class WorkTimes < ActiveRecord::Migration[5.0]
  def self.up
        create_table :work_times do |t|
           t.column :employee_id, :integer
           t.column :date, :datetime
           t.column :timein, :timestamp
           t.column :timeout, :timestamp 
        end
     end

     def self.down
        drop_table :work_times
     end
end
