class CreateSalesTaxMasters < ActiveRecord::Migration
  def change
    create_table :sales_tax_masters do |t|
      t.string :name
      t.decimal :tax

      t.timestamps
    end
  end
end
