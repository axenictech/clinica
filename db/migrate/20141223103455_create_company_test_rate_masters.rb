class CreateCompanyTestRateMasters < ActiveRecord::Migration
  def change
    create_table :company_test_rate_masters do |t|
      t.decimal :com_rate
      t.decimal :cust_rate
      t.references :test_master, index: true
      t.references :company_master, index: true

      t.timestamps
    end
  end
end
