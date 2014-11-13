class CreateBedMasters < ActiveRecord::Migration
  def change
    create_table :bed_masters do |t|
      t.integer :bed_no
      t.boolean :is_active
      t.integer :bed_rent
      t.integer :total_bed_change
      t.integer :increase
      t.integer :leave_time
      t.integer :l_tax
      t.integer :s_tax
      t.string :link_service
      t.boolean :is_bed_repair
      t.references :floor_master, index: true
      t.references :ward_master, index: true
      t.timestamps
    end
  end
end
