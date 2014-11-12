class CreatePathologistMasters < ActiveRecord::Migration
  def change
    create_table :pathologist_masters do |t|
      t.string :pathologist_name
      t.integer :age
      t.string :gender
      t.date :date_of_birth
      t.string :address
      t.string :mobile_no
      t.integer :phone_no
      t.string :email_id
      t.integer :room_no
      t.integer :visit_rate
      t.boolean :is_rmo
      t.references :city, index: true
      t.references :specialization, index: true

      t.timestamps
    end
  end
end
