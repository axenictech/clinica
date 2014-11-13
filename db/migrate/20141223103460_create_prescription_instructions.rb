class CreatePrescriptionInstructions < ActiveRecord::Migration
  def change
    create_table :prescription_instructions do |t|
      t.string :instruction
      t.boolean :is_dose
      t.boolean :is_diet
      t.boolean :is_specialized_instruction

      t.timestamps
    end
  end
end
