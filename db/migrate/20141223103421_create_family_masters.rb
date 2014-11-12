class CreateFamilyMasters < ActiveRecord::Migration
  def change
    create_table :family_masters do |t|
      t.string :family
      t.boolean :allow_discount
      t.integer :discount

      t.timestamps
    end
  end
end
