class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.date :from_date
      t.date :to_date
      t.string :name
      t.integer :age
      t.string :address
      t.integer :total_amt

      t.timestamps
    end
  end
end
