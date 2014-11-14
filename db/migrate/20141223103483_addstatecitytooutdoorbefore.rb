class Addstatecitytooutdoorbefore < ActiveRecord::Migration
  def change
  	add_column :before_patient_entries,:city_id,:integer
  	add_column :before_patient_entries,:state_id,:integer
  	add_column :before_patient_entries,:doctor_master_id,:integer
  	
  	add_index :before_patient_entries,:city_id
  	add_index :before_patient_entries,:state_id
    add_index :before_patient_entries,:doctor_master_id
  end
end
