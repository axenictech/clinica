class CreateIpdRegistrations < ActiveRecord::Migration
  def change
    create_table :ipd_registrations do |t|
      t.integer :ipd_no
      t.date :date
      t.string   :time
      t.integer   :hr_no
      t.string   :advance_booking
      t.string   :advance_booking_check
      t.string   :patient_name
      t.string   :occupation
      t.string   :gender
      t.string   :marital_status
	  t.string   :family
	  t.datetime :birthdate
	  t.string :height
	  t.string :weight
		 t.string   :religion
		 t.string   :city
		 t.string   :pin
		 t.string   :address
		 t.string   :co
		 t.string   :relation
		 t.string   :company_name
		 t.string   :relative_name
		 t.string   :relative_phone_no
		 t.string   :adm_type
		 t.string   :relative_name
		 t.string   :relative_phone_no
		 t.string   :adm_type
		 t.integer  :bed_no
		 t.string   :ward_name
		 t.integer  :ref_dr
		 t.integer  :under_dr_one
		 t.integer  :under_dr_two
		 t.string   :shift
		 t.string   :diesease


      t.timestamps
    end
  end
end
