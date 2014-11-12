class CreateSampleCenterMasters < ActiveRecord::Migration
  def change
    create_table :sample_center_masters do |t|
      t.string :sample_center_name
      t.string :address
      t.integer :phon_no
      t.integer :comission
      t.string :email_id
      t.references :city, index: true

      t.timestamps
    end
  end
end
