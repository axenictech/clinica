class CreateDepartmentMasterStores < ActiveRecord::Migration
  def change
    create_table :department_master_stores do |t|
      t.string :department_name

      t.timestamps
    end
  end
end
