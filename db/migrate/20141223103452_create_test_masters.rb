class CreateTestMasters < ActiveRecord::Migration
  def change
    create_table :test_masters do |t|
      t.string :test_name
      t.string :reporting_name
      t.string :method
      t.integer :rate
      t.integer :dilivery
      t.references :sub_department_master, index: true

      t.timestamps
    end
  end
end
