class CreateDoctorMasters < ActiveRecord::Migration
  def change
    create_table :doctor_masters do |t|
      t.string :name
      t.integer :age
      t.date :date_of_birth
      t.string :gender
      t.string :address
      t.string :mobile_no
      t.integer :phone_no
      t.string :email_id
      t.integer :room_no
      t.string :is_rmo
      t.integer :vistit_rate
      t.integer :visit_limit
      t.boolean :is_refered
      t.references :city, index: true
      t.references :shift_master, index: true
      t.references :specialization, index: true

      t.timestamps
    end
  end
end
