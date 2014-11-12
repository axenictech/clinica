class CreateSubDepartmentMasters < ActiveRecord::Migration
  def change
    create_table :sub_department_masters do |t|
      t.string :sub_department_name
      t.references :department_master, index: true

      t.timestamps
    end
  end
end
