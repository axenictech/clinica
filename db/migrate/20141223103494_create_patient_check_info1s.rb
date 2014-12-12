class CreatePatientCheckInfo1s < ActiveRecord::Migration
  def change
    create_table :patient_check_info1s do |t|
      t.string :clinical_investigation
      t.string :clinical_history
      t.string :clinical_diagnosis
      t.string :notes
      t.references :new_patient, index: true

      t.timestamps
    end
  end
end
