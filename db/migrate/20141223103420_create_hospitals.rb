class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :company_name
      t.string :short_name
      t.string :address
      t.string :phone_no
      t.integer :fax_no
      t.string :email
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
