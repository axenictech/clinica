class CreateMoneyReciepts < ActiveRecord::Migration
  def change
    create_table :money_reciepts do |t|
      t.integer :reciept_no
      t.integer :hr_no
      t.integer :OPD_no
      t.string :patient_name
      t.integer :phone_no
      t.decimal :charge
      t.decimal :amount
      t.decimal :discount
      t.decimal :due_amount
      t.decimal :grand_total
      t.decimal :received_amount
      t.decimal :net_amount
      t.string :pay_mode
      t.string :cheque_card_no
      t.date :cheque_date
      t.string :remark
      t.references :DepartmentMaster, index: true
      t.references :DoctorMaster, index: true
      t.references :ServiceMaster, index: true

      t.timestamps
    end
  end
end
