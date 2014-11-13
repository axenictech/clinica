class CreateOtMasters < ActiveRecord::Migration
  def change
    create_table :ot_masters do |t|
      t.string :Ot_name

      t.timestamps
    end
  end
end
