class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
    	t.integer :bill_no
    	t.date    :date
    	t.string  :time
    	t.decimal :bed_charges
    	t.decimal :laxury_charges
    	t.decimal :service_charges
    	t.decimal :other_charges
    	t.decimal :ot_charges
    	t.decimal :doctor_charges
    	t.decimal :diagnostic_charges
    	t.decimal :medicine_charges
    	t.decimal :total_charges
    	t.string  :pay_type
    	t.string  :bank_name
    	t.string  :cheque_no
    	t.decimal :bill_amount
    	t.decimal :discount
    	t.decimal :net_amount
    	t.string  :remark
    	t.references :ipd_registration, index: true
    	t.boolean  :is_desabled
      t.timestamps
    end
  end
end
