class Addstatecitytooutdoorold < ActiveRecord::Migration
  def change
  	add_column :old_patients,:city_id,:integer
  	add_column :old_patients,:state_id,:integer
  	add_column :old_patients,:doctor_master_id,:integer
  	
  	add_index :old_patients,:city_id
  	add_index :old_patients,:state_id
    add_index :old_patients,:doctor_master_id
  end
end
