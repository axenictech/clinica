class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :hr_no
      t.date :date_time
      t.integer :BP_level_min
      t.integer :BP_level_max
      t.string :bmi
      t.date :follow_up_date
      t.string :remark

      t.timestamps
    end
  end
end
