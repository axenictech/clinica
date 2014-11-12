class CreateBillOfMaterials < ActiveRecord::Migration
  def change
    create_table :bill_of_materials do |t|
      t.integer :quantity
      t.references :test_master, index: true

      t.timestamps
    end
  end
end
