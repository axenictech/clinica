class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date_time
      t.string :hr_no
      t.string :patient_name
      t.string :gender
      t.string :marital_status
      t.string :address
      t.integer :pin_no
      t.integer :phone_no
      t.references :DoctorMaster, index: true
      t.references :city, index: true

      t.timestamps
    end
  end
end
