class CreateIndoorMoneyReciepts < ActiveRecord::Migration
  def change
    create_table :indoor_money_reciepts do |t|

      t.timestamps
    end
  end
end
