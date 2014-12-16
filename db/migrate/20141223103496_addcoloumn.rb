class Addcoloumn < ActiveRecord::Migration
  def change
  	add_column :patient_checkups,:doctor_id,:integer
  	add index :patient_checkups,:doctor_id,:integer
  end
end

