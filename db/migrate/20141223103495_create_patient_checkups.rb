class CreatePatientCheckups < ActiveRecord::Migration
  def change
    create_table :patient_checkups do |t|
      t.string :clinical_investigation
      t.string :clinical_history
      t.string :clinical_diagnosis
      t.string :notes
      t.references :new_patient, index: true

      t.timestamps
    end
  end
end
