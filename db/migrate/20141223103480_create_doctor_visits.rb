class CreateDoctorVisits < ActiveRecord::Migration
  def change
    create_table :doctor_visits do |t|

      t.timestamps
    end
  end
end
