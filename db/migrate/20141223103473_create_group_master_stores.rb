class CreateGroupMasterStores < ActiveRecord::Migration
  def change
    create_table :group_master_stores do |t|
      t.string :group

      t.timestamps
    end
  end
end
