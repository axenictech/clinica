class CreateDeluxRoomMasters < ActiveRecord::Migration
  def change
    create_table :delux_room_masters do |t|
      t.string :name
      t.references :floor_master, index: true
      t.timestamps
    end
  end
end
