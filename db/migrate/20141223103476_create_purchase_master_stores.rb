class CreatePurchaseMasterStores < ActiveRecord::Migration
  def change
    create_table :purchase_master_stores do |t|
      t.string :name
      t.integer :percentage

      t.timestamps
    end
  end
end
