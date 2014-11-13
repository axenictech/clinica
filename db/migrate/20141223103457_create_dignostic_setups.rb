class CreateDignosticSetups < ActiveRecord::Migration
  def change
    create_table :dignostic_setups do |t|
      t.decimal :discount
      t.string :perticular
      t.references :doctor_master, index: true

      t.timestamps
    end
  end
end
