class CreateHospitalUsers < ActiveRecord::Migration
  def change
    create_table :hospital_users do |t|
      t.string :user_name
      t.string :password
      t.decimal :max_discount
      t.boolean :is_deactive

      t.timestamps
    end
  end
end
