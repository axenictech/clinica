class CreatePurchaseTaxMasters < ActiveRecord::Migration
  def change
    create_table :purchase_tax_masters do |t|
      t.string :name
      t.integer :percentage

      t.timestamps
    end
  end
end
