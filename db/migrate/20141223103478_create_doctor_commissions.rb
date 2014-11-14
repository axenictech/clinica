class CreateDoctorCommissions < ActiveRecord::Migration
  def change
    create_table :doctor_commissions do |t|
      t.string		:type
      t.decimal		:discount
      t.string		:ot
      t.references	:doctor_master,index:true

      t.timestamps
    end
  end
end
