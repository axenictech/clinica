class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :city_name
      t.references :state, index: true

      t.timestamps
    end
  end
end
