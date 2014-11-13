class CreateUsesMasters < ActiveRecord::Migration
  def change
    create_table :uses_masters do |t|
      t.string :uses

      t.timestamps
    end
  end
end
