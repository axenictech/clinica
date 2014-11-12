class CreateClinicalReports < ActiveRecord::Migration
  def change
    create_table :clinical_reports do |t|
      t.integer :hr_no
      t.integer :opd_no
      t.date :date_time
      t.string :remark
      t.string :operation_note
      t.string :history_examination
      t.string :summary
      t.string :treatement_given
      t.string :treatement_advice
      t.string :medicine_advice
      t.string :description
      t.references :DignosisMaster, index: true
      t.string :investigation

      t.timestamps
    end
  end
end
