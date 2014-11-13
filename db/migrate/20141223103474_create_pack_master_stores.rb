class CreatePackMasterStores < ActiveRecord::Migration
  def change
    create_table :pack_master_stores do |t|
      t.string :pack_name
      t.decimal :sale_in_percentage

      t.timestamps
    end
  end
end
