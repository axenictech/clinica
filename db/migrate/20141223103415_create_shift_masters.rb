class CreateShiftMasters < ActiveRecord::Migration
  def change
    create_table :shift_masters do |t|
      t.integer :shift_code
      t.string :shift_name
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
