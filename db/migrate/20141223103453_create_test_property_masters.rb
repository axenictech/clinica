class CreateTestPropertyMasters < ActiveRecord::Migration
  def change
    create_table :test_property_masters do |t|
      t.string :test_property
      t.string :unit_of_measure
      t.string :named_value
      t.references :test_master, index: true

      t.timestamps
    end
  end
end
