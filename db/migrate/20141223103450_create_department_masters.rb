class CreateDepartmentMasters < ActiveRecord::Migration
  def change
    create_table :department_masters do |t|
      t.string :department_name

      t.timestamps
    end
  end
end
