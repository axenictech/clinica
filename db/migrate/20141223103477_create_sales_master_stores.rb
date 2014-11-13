class CreateSalesMasterStores < ActiveRecord::Migration
  def change
    create_table :sales_master_stores do |t|
      t.string :name
      t.decimal :tax

      t.timestamps
    end
  end
end
