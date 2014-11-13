class CreateBankMasters < ActiveRecord::Migration
  def change
    create_table :bank_masters do |t|
      t.integer :bank_no
      t.string :bank_name
      t.string :address
      t.integer :phon_no

      t.timestamps
    end
  end
end
