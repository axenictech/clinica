class CreatePatientRegistrations < ActiveRecord::Migration
  def change
    create_table :patient_registrations do |t|
      t.integer :ipd_no
      t.string :advance_booking
      t.boolean :is_advance
      t.date :date_time
      t.string :patient_name
      t.string :gender
      t.string :marital_status
      t.decimal :age
      t.string :address
      t.string :address
      t.references :city, index: true

      t.timestamps
    end
  end
end
