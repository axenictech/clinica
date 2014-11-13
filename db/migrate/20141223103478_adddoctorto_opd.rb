class AdddoctortoOpd < ActiveRecord::Migration
  def change
  	add_column :new_patients,:doctor_master_id,:integer
  	add_index :new_patients,:doctor_master_id
  end
end
