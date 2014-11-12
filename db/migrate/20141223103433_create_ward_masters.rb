class CreateWardMasters < ActiveRecord::Migration
  def change
    create_table :ward_masters do |t|
      t.string :ward_name
      t.references :floor_master

      t.timestamps
    end
  end
end
