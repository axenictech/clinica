class CreateFloorMasters < ActiveRecord::Migration
  def change
    create_table :floor_masters do |t|
      t.string :floor_name

      t.timestamps
    end
  end
end
