class CreateSeriesMasters < ActiveRecord::Migration
  def change
    create_table :series_masters do |t|
      t.string :series_name

      t.timestamps
    end
  end
end
