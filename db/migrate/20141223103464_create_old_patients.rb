class CreateOldPatients < ActiveRecord::Migration
  def change
    create_table :old_patients do |t|
      t.integer :HR_no
      t.integer :OPD_no
      t.integer :appointment_no
      t.string :patient_name
      t.string :gender
      t.string :marital_status
      t.string :care_of
      t.string :address
      t.integer :pin_no
      t.integer :contact_no
      t.string :remark
      t.date :date
      t.date :date_of_birth
      t.decimal :height
      t.decimal :weight
      t.string :religion
      t.string :card_no
      t.integer :serial_no
      t.date :validity
      t.binary :image_patient
      t.binary :image_pre_treatment
      t.binary :image_post_treatment
      t.references :FamilyMaster, index: true
      t.references :ShiftMaster, index: true
      t.references :DignosisMaster, index: true
      t.references :OccupationMaster, index: true

      t.timestamps
    end
  end
end
