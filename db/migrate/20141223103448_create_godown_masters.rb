class CreateGodownMasters < ActiveRecord::Migration
  def change
    create_table :godown_masters do |t|
      t.string :godown_name

      t.timestamps
    end
  end
end
