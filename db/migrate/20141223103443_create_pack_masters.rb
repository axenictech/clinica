class CreatePackMasters < ActiveRecord::Migration
  def change
    create_table :pack_masters do |t|
      t.string :pack_name
      t.decimal :sale_in_percentage

      t.timestamps
    end
  end
end
