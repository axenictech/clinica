class CreateSupplierMasters < ActiveRecord::Migration
  def change
    create_table :supplier_masters do |t|
      t.string :supplier_name
      t.string :address
      t.integer :phone_no
      t.integer :tin_no
      t.integer :DL_no
      t.references :city, index: true

      t.timestamps
    end
  end
end
