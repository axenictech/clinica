class CreateCompanyExpenseMastes < ActiveRecord::Migration
  def change
    create_table :company_expense_mastes do |t|
      t.string :expense_name
      t.string :remark

      t.timestamps
    end
  end
end
