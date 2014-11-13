class CreateCompanyMasters < ActiveRecord::Migration
  def change
    create_table :company_masters do |t|
      t.string :company_name
      t.string :address
      t.integer :phone_no
      t.string :email_id
      t.references :city, index: true

      t.timestamps
    end
  end
end
