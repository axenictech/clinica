class CreateAgeGroupMasters < ActiveRecord::Migration
  def change
    create_table :age_group_masters do |t|
      t.string :age_group

      t.timestamps
    end
  end
end
