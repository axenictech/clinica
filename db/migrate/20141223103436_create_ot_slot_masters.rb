class CreateOtSlotMasters < ActiveRecord::Migration
  def change
    create_table :ot_slot_masters do |t|
      t.string :Ot_master_name
      t.integer :rate
      t.references :ot_master

      t.timestamps
    end
  end
end
