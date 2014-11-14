class CreateIpdMoneyReciepts < ActiveRecord::Migration
  def change
    create_table :ipd_money_reciepts do |t|
      t.integer  :reciept_no
      t.integer  :ipd_no
      t.date     :date
      t.string   :time
      t.string   :reciept_type
      t.decimal  :amount
      t.decimal  :discount
      t.decimal  :recieved_amount
      t.string  :payment_type
      t.string  :bank_name
      t.string  :cheque_number
      t.string  :remark
      t.timestamps
    end
  end
end
