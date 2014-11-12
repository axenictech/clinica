class CreateOpdDepartmentMasters < ActiveRecord::Migration
  def change
    create_table :opd_department_masters do |t|
      t.string :department_name

      t.timestamps
    end
  end
end
