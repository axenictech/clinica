class CreateCompositionMasters < ActiveRecord::Migration
  def change
    create_table :composition_masters do |t|
      t.string :composition_name

      t.timestamps
    end
  end
end
