class CreateServiceMasters < ActiveRecord::Migration
  def change
    create_table :service_masters do |t|
      t.date :service_date
      t.string :name
      t.boolean :is_active
      t.decimal :charge
      t.decimal :service_charge
      t.decimal :luxury_tax

      t.timestamps
    end
  end
end
