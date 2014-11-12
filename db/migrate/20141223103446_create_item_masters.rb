class CreateItemMasters < ActiveRecord::Migration
  def change
    create_table :item_masters do |t|
      t.string :item_name
      t.integer :product_unit
      t.integer :minimum_quantity
      t.integer :maximum_quantity
      t.integer :reorder_quantity
      t.string :drug_form
      t.string :is_ot_items
      t.string :ot_item_category
      t.string :information
      t.references :uses_master, index: true
      t.references :composition_master, index: true
      t.references :company_master
      t.references :pack_master, index: true
      t.references :purchase_tax_master, index: true
      t.references :sales_tax_master, index: true

      t.timestamps
    end
  end
end
