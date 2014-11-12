class CreateLedgerMasters < ActiveRecord::Migration
  def change
    create_table :ledger_masters do |t|
      t.string :ledger_name
      t.string :address
      t.integer :phone_no
      t.integer :opaning_balance
      t.references :city, index: true

      t.timestamps
    end
  end
end
