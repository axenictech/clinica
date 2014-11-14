class CreateBloodDoners < ActiveRecord::Migration
  def change
    create_table :blood_doners do |t|
      t.date :date
      t.date :time
      t.integer :doner_no
      t.string :doner_name
      t.string :doner_father_name
      t.string :address
      t.decimal :phon
      t.integer :age
      t.string :gender
      t.string :type_of_doner
      t.string :type_of_pack
      t.integer :weight
      t.string :vol_rept
      t.string :ABO
      t.string :rhd
      t.integer :remark

      t.timestamps
    end
  end
end
