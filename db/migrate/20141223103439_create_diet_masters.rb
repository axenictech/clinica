class CreateDietMasters < ActiveRecord::Migration
  def change
    create_table :diet_masters do |t|
      t.date :form_time
      t.date :to_time
      t.string :advice
      t.string :remark

      t.timestamps
    end
  end
end
