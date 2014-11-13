class CreateIpdRegistrations < ActiveRecord::Migration
  def change
    create_table :ipd_registrations do |t|
      t.integer :ipd_no
      t.datetime :datetime
      t.integer    :hr_no

      t.timestamps
    end
  end
end
