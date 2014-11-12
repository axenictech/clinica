class CreateVaccinesMasters < ActiveRecord::Migration
  def change
    create_table :vaccines_masters do |t|
      t.string :vaccines
      t.integer :dueon
      t.references :age_group_master, index: true

      t.timestamps
    end
  end
end
