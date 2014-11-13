class CreateShiftMasters < ActiveRecord::Migration
  def change
    create_table :shift_masters do |t|
      t.integer :shift_code
      t.string :shift_name
      t.integer :time_form
      t.integer :time_to

      t.timestamps
    end
  end
end
