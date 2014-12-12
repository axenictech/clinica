class Changecoloumntype < ActiveRecord::Migration
  def change
  	change_column :new_patients,:contact_no,:string
  end
end
