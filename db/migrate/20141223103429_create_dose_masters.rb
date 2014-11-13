class CreateDoseMasters < ActiveRecord::Migration
  def change
    create_table :dose_masters do |t|
      t.string :dose_name

      t.timestamps
    end
  end
end
