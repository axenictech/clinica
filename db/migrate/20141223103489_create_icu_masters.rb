class CreateIcuMasters < ActiveRecord::Migration
  def change
    create_table :icu_masters do |t|
    	 t.string :icu_name
	     t.references :floor_master, index: true

      t.timestamps
    end
  end
end
