class HomeController < ApplicationController
  def opd_patient_list
    @opd_patients = NewPatient.all
  end

  def patient_checkup_form
    @patient_info = NewPatient.find(params[:format])
    @doctor = params[:doctor_id]
    @patient = PatientCheckup.new
  end

  def save_patient_checkup_information
    @patient_id = params[:patient_id]
    @doctor_id = params[:doctor_id]
    @patient = PatientCheckup.new(save_patient_checkup_information_params)
    if @patient.save
      @patient.update(new_patient_id:@patient_id)
      @patient.update(references_doctor_id:@doctor_id)
      flash[:notice] = 'Checkup information created successfully'
      redirect_to outdoors_todays_patient_path
    else
       render 'patient_checkup_form'
    end
  end

  def edit_patient_checkup_form
    @patient = PatientCheckup.find(params[:format])
    p @patient
  end

  private

  def save_patient_checkup_information_params
    params.require(:patient_checkup).permit!
  end
end