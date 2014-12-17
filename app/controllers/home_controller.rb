class HomeController < ApplicationController
  def opd_patient_list
    @opd_patients = NewPatient.all
  end

  def patient_checkup_form
    @patient_info = NewPatient.find(params[:format])
    @doctor = DoctorMaster.find(params[:doctor_id])
    @patient = PatientCheckup.new
  end

  def save_patient_checkup_information
    @patient_id = params[:patient_id]
    @doctor_id = params[:doctor_id]
    @patient = PatientCheckup.new(patient_checkup_information_params)
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
    @patient = PatientCheckup.find_by_new_patient_id(params[:format])
    @patient_info = NewPatient.find(params[:format])
    @doctor = DoctorMaster.find(@patient.references_doctor_id)
  end

  def update_patient_checkup_information
    @patient = PatientCheckup.find(params[:id])
      if @patient.update(patient_checkup_information_params)
        flash[:notice] = 'Patient checkup information updated successfully!'
        redirect_to outdoors_todays_patient_path
      else
        render 'edit_patient_checkup_form'
      end
  end

  private

  def patient_checkup_information_params
    params.require(:patient_checkup).permit!
  end
end