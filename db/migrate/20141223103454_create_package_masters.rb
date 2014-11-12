class CreatePackageMasters < ActiveRecord::Migration
  def change
    create_table :package_masters do |t|
      t.string :package_name
      t.string :package_rate
      t.string :rate
      t.references :test_master, index: true

      t.timestamps
    end
  end
end
