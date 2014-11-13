class CreateReligionMasters < ActiveRecord::Migration
  def change
    create_table :religion_masters do |t|
      t.string :Religion

      t.timestamps
    end
  end
end
