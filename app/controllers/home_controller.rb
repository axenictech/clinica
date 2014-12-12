class HomeController < ApplicationController
  def opd_patient_list
    @opd_patients = NewPatient.all
  end

  def patient_checkup_form
    @patient_info = NewPatient.find(params[:format])
    p @patient_info.id
    @patient = PatientCheckup.new
  end

  def save_patient_checkup_information
    @patient_id = params[:id]
    @patient = PatientCheckup.new(save_patient_checkup_information_params)
    if @patient.save
       @patient.update(new_patient_id:@patient_id)
       flash[:notice] = 'Checkup information created successfully'
       redirect_to home_opd_patient_list_path
    else
       render 'patient_checkup_form'
    end
  end

  private

  def save_patient_checkup_information_params
    params.require(:patient_checkup).permit!
  end
end