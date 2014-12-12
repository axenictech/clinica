class Addcoltonewpatient < ActiveRecord::Migration
  def change
  	add_column :new_patients,:references_doctor_id,:integer
  end
end
