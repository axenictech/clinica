class Addstatecitytooutdoor < ActiveRecord::Migration
  def change
  	add_column :new_patients,:city_id,:integer
  	add_column :new_patients,:state_id,:integer
  	add_index :new_patients,:city_id
  	add_index :new_patients,:state_id
  end
end
