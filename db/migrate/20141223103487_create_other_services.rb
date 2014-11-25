class CreateOtherServices < ActiveRecord::Migration
  def change
    create_table :other_services do |t|
     t.integer  :oc_no
     t.integer  :ipd_no
	 t.date     :date
     t.string   :time
     t.string  :complaint
     t.string  :complaint_description
     t.string  :service_name
     t.string  :rate
     t.string  :quantiry
     t.string  :total
     t.string  :remark
     t.references :doctor_master, index: true
     t.timestamps
    end
  end
end
