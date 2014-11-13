class CreateOtTypeMasters < ActiveRecord::Migration
  def change
    create_table :ot_type_masters do |t|
      t.string :ot_type_name

      t.timestamps
    end
  end
end
