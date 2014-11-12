class CreateCommonItemMasters < ActiveRecord::Migration
  def change
    create_table :common_item_masters do |t|
      t.string :item_name
      t.string :print_name
      t.integer :minimum_quantity
      t.integer :maximum_quantity
      t.integer :pre_order_quantity
      t.references :company_master, index: true
      t.references :pack_master, index: true
      t.references :purchase_tax_master, index: true
      t.references :sales_tax_master, index: true
      t.references :group_master, index: true

      t.timestamps
    end
  end
end
