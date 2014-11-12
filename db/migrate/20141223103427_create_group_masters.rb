class CreateGroupMasters < ActiveRecord::Migration
  def change
    create_table :group_masters do |t|
      t.string :group

      t.timestamps
    end
  end
end
