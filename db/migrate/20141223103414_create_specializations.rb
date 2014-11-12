class CreateSpecializations < ActiveRecord::Migration
  def change
    create_table :specializations do |t|
      t.string :specialized

      t.timestamps
    end
  end
end
