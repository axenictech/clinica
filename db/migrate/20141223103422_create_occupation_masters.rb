class CreateOccupationMasters < ActiveRecord::Migration
  def change
    create_table :occupation_masters do |t|
      t.string :occupation

      t.timestamps
    end
  end
end
