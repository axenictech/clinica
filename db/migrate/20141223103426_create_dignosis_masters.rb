class CreateDignosisMasters < ActiveRecord::Migration
  def change
    create_table :dignosis_masters do |t|
      t.string :dignosis

      t.timestamps
    end
  end
end
