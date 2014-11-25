class IndoorController < ApplicationController

	def new_registration
	@new_registration=IpdRegistration.new
	unless  IpdRegistration.last.nil?
	@new_registration.ipd_no=IpdRegistration.last.ipd_no.next
	@new_registration.hr_no=IpdRegistration.last.hr_no.next
	else
	@new_registration.ipd_no=1
	@new_registration.hr_no=1
	
	end
	@doctor_masters= DoctorMaster.all
	@city=City.all
	end

	def create_registration
		@ipd_registration=IpdRegistration.new(params_create_registration)
		if @ipd_registration.save
			flash[:notice]="Patient Registered successfully"
			redirect_to indoor_new_registration_path
		else
			render 'new_registration'
		end
	end

	def update_registration
		@ipd_registration=IpdRegistration.find(params[:id])
		if @ipd_registration.update(params_create_registration)
			flash[:notice]="Patient Updated successfully"
			redirect_to indoor_new_registration_path
		else
			render 'new_registration'
		end
	end
	def delete_registration
	@ipd_registration=IpdRegistration.find(params[:id])
		if @ipd_registration.destroy
			flash[:notice]="Patient deleted successfully"
			redirect_to indoor_new_registration_path
		else
			render 'new_registration'
		end
	end
	

	def new_advance_booking
	@advance_booking=AdvanceBooking.new 
	end
	def create_advance_booking
	
		@advance_booking=AdvanceBooking.new(params_advance_booking)
		if @advance_booking.save
			flash[:notice]="Advanced booking saved successfully"
			redirect_to indoor_new_advance_booking_path
		else
			render 'new_advance_booking'
		end
	end

	def update_advance_booking
	@advance_booking=AdvanceBooking.find(params[:id])
		if @advance_booking.update(params_advance_booking)
			flash[:notice]="Advanced booking updated successfully"
			redirect_to update_advance_booking_path
		else
			render 'new_advance_booking'
		end
	end
	def delete_advance_booking
	@advance_booking=AdvanceBooking.find(params[:id])
		if @advance_booking.destroy
			flash[:notice]="Advanced booking deleted successfully"
		else
			render 'new_advance_booking'
		end
	end


	def new_other_service
	 @service=OtherService.last
	  if  @service.nil?
	  	@service=OtherService.new
		@service.oc_no=0
	  end
	  @service.oc_no=@service.oc_no.next
   	 @patient=IpdRegistration.new
   	 @patient.ipd_no=0
	end
	def create_other_service
	   @other_service=OtherService.new(params_other_service)
	    @other_service.doctor_master_id=params[:other_service][:ipd_no]
	    if@other_service.save
		
			flash[:notice]="Other Service saved successfully"
			redirect_to indoor_new_other_service_path
		else
			render 'new_other_service'
		end
	end
	def update_other_service
	@other_service=OtherService.find(params[:id])
		if@other_service.update(params_other_service)
			flash[:notice]="Other Service updated successfully"
			redirect_to indoor_new_other_service_path
		else
			render 'new_other_service'
		end
	end
	def delete_other_service
	@other_service=OtherService.find(params[:id])
		if@other_service.destroy
			flash[:notice]="Other Service deleted successfully"
			redirect_to indoor_new_other_service_path
		end
	end

	def other_service_find_patient
    @service=OtherService.last
	  if  @service.nil?
	  	@service=OtherService.new
		@service.oc_no=0
	  end
	  @service.oc_no=@service.oc_no.next
   	  @patient=IpdRegistration.where(ipd_no:params[:search][:id]).take
  end
	def services_given
		@other_service=OtherService.all
	end
	def new_doctor_visit_details
	 @doctor_visit_details=DoctorVisitDetail.new
	end
	def create_doctor_visit_details
	@other_service=DoctorVisitDetail.new(params_doctor_visit_details)
		if@other_service.save
			flash[:notice]="Doctor visit details saved successfully"
			redirect_to indoor_new_doctor_visit_details_path
		else
			render 'new_doctor_visit_details'
		end
	end
	def update_doctor_visit_details
	
	@other_service=DoctorVisitDetail.find(:id)
		if@other_service.update(params_doctor_visit_details)
			flash[:notice]="Doctor visit details updated successfully"
			redirect_to indoor_new_doctor_visit_details_path
		else
			render 'new_doctor_visit_details'
		end
	end

	def delete_doctor_visit_details
		@other_service=DoctorVisitDetail.find(params[:id])
		if@other_service.destroy
			flash[:notice]="Other Service deleted successfully"
			redirect_to indoor_services_given_path
		end
	end




	def new_bed_transfer
	 @bed_transfer=BedTransfer.new
	end
	def create_bed_transfer
	
	end
	def update_bed_transfer
	
	end
	def delete_bed_transfer
	
	end



	def new_ot_billing
	 @ot_billing=OtBilling.new
	end
	def create_ot_billing
	ot_billing=OtBilling.new(params_ot_billing)
		if ot_billing.save
			flash[:notice]="OT billing saved successfully"
			redirect_to indoor_new_ot_billing_path
		else
			render 'new_ot_billing'
		end
	end
	def update_ot_billing
	
	ot_billing=OtBilling.find(params[:id])
		if ot_billing.update(params_ot_billing)
			flash[:notice]="OT billing updated successfully"
			redirect_to indoor_new_ot_billing_path
		else
			render 'new_ot_billing'
		end
	end
	def delete_ot_billing
	@ot_billing=DoctorVisitDetail.find(params[:id])
		if@ot_billing.destroy
			flash[:notice]="OT billing deleted successfully"
			redirect_to indoor_new_ot_billing_path
		end
	end

	def new_money_reciept
	 @money_reciept#=MoneyReciept.new
	 @reciept=IpdMoneyReciept.last
	 if  @reciept.nil?
	 	@reciept=IpdMoneyReciept.new
	 end
	 @reciept.reciept_no=@reciept.reciept_no.next
   	 @patient=IpdRegistration.new
   	 @patient.ipd_no=0
	end


	def new_money_reciept_find_patient
	 @money_reciept#=MoneyReciept.new
	 @reciept=IpdMoneyReciept.last
	 if  @reciept.nil?
	 	@reciept=IpdMoneyReciept.new
	 	@reciept.reciept_no=0
	 end
	 @reciept.reciept_no=@reciept.reciept_no.next

	@patient=IpdRegistration.where(ipd_no:params[:search][:id]).take
	end

	def create_money_reciept
	 @money_reciept=IpdMoneyReciept.new(params_money_reciept)
		if  @money_reciept.save
			redirect_to indoor_money_reciept_path(@money_reciept)
			flash[:notice]="Money Reciept saved successfully"
		else
			render 'new_money_reciept'
		end
	end

	def money_reciept
		@money_reciept=IpdMoneyReciept.find(params[:id])
		@patient=IpdRegistration.where(ipd_no:@money_reciept.ipd_no).take
	end

	def pdf_reciept
		@money_reciept=IpdMoneyReciept.find(params[:id])
		@patient=IpdRegistration.where(ipd_no:@money_reciept.ipd_no).take
		render 'money_reciept',layout:false
	end

	def update_money_reciept
	@money_reciept=IpdMoneyReciept.find(params[:id])
		if  @money_reciept.update(params_money_reciept)
			flash[:notice]="Money Reciept updated successfully"
			redirect_to indoor_new_money_reciept_path
		else
			render 'new_money_reciept'
		end
	end

	def update_money_reciept
		@money_reciept=IpdMoneyReciept.find(params[:id])
		if  @money_reciept.update(params_money_reciept)
			flash[:notice]="Money Reciept updated successfully"
			redirect_to indoor_new_money_reciept_path
		else
			render 'new_money_reciept'
		end
	end

	def delete_money_reciept
	@money_reciept=IpdMoneyReciept.find(params[:id])
		if @money_reciept.destroy
			flash[:notice]="Money Reciept deleted successfully"
			redirect_to indoor_new_money_reciept_path
		end
	end

	def new_discharge
	 @discharge=Discharge.new
	end
	def create_discharge
	
	end
	def update_discharge
	
	end
	def delete_discharge
	
	end

	def new_final_bill
	 @final_bill#=FinalBill.new
	end
	def create_final_bill
	@final_bill=FinalBill.new(params_final_bill)
		if  @final_bill.save
			flash[:notice]="Money Reciept saved successfully"
			redirect_to indoor_new_final_bill_path
		else
			render 'new_final_bill'
		end
	end
	def update_final_bill
	@final_bill=FinalBill.find(params[:id])
		if  @final_bill.update(params_final_bill)
			flash[:notice]="Money Reciept updated successfully"
			redirect_to indoor_new_final_bill_path
		else
			render 'new_final_bill'
		end
	end
	def delete_final_bill
	@final_bill=FinalBill.find(params[:id])
		if @final_bill.destroy
			flash[:notice]="Bill deleted successfully"
			redirect_to indoor_new_money_reciept_path
		end
	end


	def new_ipd_clinical_report
	 @clinical_report=IpdClinicalReport.new
	end
	def create_ipd_clinical_report
	@clinical_report=IpdClinicalReport.new(params_clinical_report)
		if  @clinical_report.save
			flash[:notice]="Money Reciept saved successfully"
			redirect_to indoor_new_ipd_clinical_report_path
		else
			render 'new_ipd_clinical_report'
		end
	end
	def update_ipd_clinical_report
	@clinical_report=IpdClinicalReport.find(params[:id])
		if  @clinical_report.update(params_clinical_report)
			flash[:notice]="Money Reciept saved successfully"
			redirect_to indoor_new_ipd_clinical_report_path
		else
			render 'new_ipd_clinical_report'
		end
	end
	def delete_ipd_clinical_report
	@clinical_report=IpdClinicalReport.find(params[:id])
		if @clinical_report.destroy
			flash[:notice]="Bill deleted successfully"
			redirect_to indoor_new_ipd_clinical_report_path
		end
	end
	end


	def new_ipd_admission
	 @ipd_admission=IpdAdmission.new
	end
	def create_ipd_admission
	@ipd_admission=IpdAdmission.new(params_ipd_admission)
		if  @ipd_admission.save
			flash[:notice]="Admitted successfully"
			redirect_to indoor_new_ipd_admission_path
		else
			render 'new_ipd_admission'
		end
	end
	def update_ipd_admission
	@ipd_admission=IpdAdmission.find(params[:id])
		if  @ipd_admission.update(params_ipd_admission)
			flash[:notice]="Updated successfully"
			redirect_to indoor_new_ipd_admission_path
		else
			render 'new_ipd_admission'
		end
	end
	def delete_ipd_admission
	@ipd_admission=IpdAdmission.find(params[:id])
		if @ipd_admission.destroy
			flash[:notice]="Admission cancelled successfully"
			redirect_to indoor_new_ipd_admission_path
		end
	end


	def new_birth_certificate
	 @birth_certificate.n=BirthCertificate.new
	end
	def create_birth_certificate
	@birth_certificate=BirthCertificate.new(params_birth_certificate)
		if  @birth_certificate.save
			flash[:notice]="Birth Certificate Printed successfully"
			redirect_to indoor_new_birth_certificate_path
		else
			render 'new_birth_certificate'
		end
	end
	def update_birth_certificate
	@birth_certificate=BirthCertificate.find(params[:id])
		if  @birth_certificate.update(params_birth_certificate)
			flash[:notice]="Birth Certificate Updated successfully"
			redirect_to indoor_new_birth_certificate_path
		else
			render 'new_birth_certificate'
		end
	end
	def delete_birth_certificate
	@birth_certificate=BirthCertificate.find(params[:id])
		if @birth_certificate.destroy
			flash[:notice]="Birth Certificate deleted"
			redirect_to indoor_new_birth_certificate_path
		end
	end

	def new_death_certificate
	  @death_certificate=DeathCertificate.new
	end
	def create_death_certificate
	@death_certificate=DeathCertificate.new(params_death_certificate)
		if  @death_certificate.save
			flash[:notice]="Death Certificate Printed successfully"
			redirect_to indoor_new_death_certificate_path
		else
			render 'new_death_certificate'
		end
	end
	def update_death_certificate
	@death_certificate=DeathCertificate.find(params[:id])
		if  @death_certificate.update(params_death_certificate)
			flash[:notice]="Death Certificate updated successfully"
			redirect_to indoor_new_death_certificate_path
		else
			render 'new_death_certificate'
		end
	end
	def delete_death_certificate
	@death_certificate=DeathCertificate.find(params[:id])
		if @death_certificate.destroy
			flash[:notice]="Certificate Deleted"
			redirect_to indoor_new_death_certificate_path
		end
	end

	def new_nurse_master
	 @nurse=Nurse.new
	end
	def create_nurse_master
	@nurse=Nurse.new(params_nurse_master)
		if  @nurse.save
			flash[:notice]="Nurse added successfully"
			redirect_to indoor_new_nurse_master_path
		else
			render 'new_nurse_master'
		end
	end
	def update_nurse_master
	@nurse=Nurse.find(params[:id])
		if  @nurse.update(params_nurse_master)
			flash[:notice]="Nurse updated successfully"
			redirect_to indoor_new_nurse_master_path
		else
			render 'new_nurse_master'
		end
	end
	def delete_nurse_master
	@nurse=Nurse.find(params[:id])
		if @nurse.destroy
			flash[:notice]="Nurse Deleted"
			redirect_to indoor_new_nurse_master_path
		end
	end
	def new_nurseing_counter_entry
	  @nursingcounter=NursingCounter.new
	end
	def create_nurseing_counter_entry
	@nursingcounter=NursingCounter.new(params_nurseing_counter_entry)
		if  @nursingcounter.save
			flash[:notice]="Nursing Counter added successfully"
			redirect_to indoor_new_nurseing_counter_entry_path
		else
			render 'new_nurseing_counter_entry'
		end
	end
	def update_nurseing_counter_entry
	@nursingcounter=NursingCounter.find(params[:id])
		if  @nursingcounter.update(params_nurseing_counter_entry)
			flash[:notice]="Nursing Counter updated successfully"
			redirect_to indoor_new_nurseing_counter_entry_path
		else
			render 'new_nurseing_counter_entry'
		end
	end
	def delete_nurseing_counter_entry
	@nursingcounter=NursingCounter.find(params[:id])
		if @nursingcounter.destroy
			flash[:notice]="nursing counter Deleted"
			redirect_to indoor_new_nurseing_counter_entry_path
		end
	end



def indoor_dashboard
end

def bed_transfer
end

def discharge_details
end

def doctor_visit_form
end

def ipd_clinical_report
end

def manual_final_bill
end

def ot_billing
end
def advance_booking_form
end












#parameters to permit
	private 
	def params_create_registration
 		params.require(:ipd_registration).permit!
	end

	def params_advance_booking
 		params.require(:advance_booking).permit!
	end
	def params_other_service
 		params.require(:other_service).permit(:oc_no,:ipd_no,:date,:time,:complaint,:complaint_description,:service_name,:rate,:quantiry,:total,:remark)
	end
	def params_doctor_visit_details
 		params.require(:doctor_visit_details).permit!
	end
	def params_bed_transfer
 		params.require(:bed_transfer).permit!
	end
	def params_ot_billing
 		params.require(:ot_billing).permit!
	end
	def params_money_reciept
 		params.require(:money_reciept).permit(:reciept_no,:ipd_no,:date,:time,:reciept_type,:amount,:discount,:recieved_amount,:payment_type,:bank_name,:cheque_number,:remark)
	end
	def params_discharge
 		params.require(:discharge).permit!
	end

    def params_final_bill
 		params.require(:final_bill).permit!
	end
    def params_clinical_report
 		params.require(:clinical_report).permit!
	end

    def params_ipd_admission
 		params.require(:ipd_admission).permit!
	end

    def params_birth_certificate
 		params.require(:birth_certificate).permit!
	end

    def params_death_certificate
 		params.require(:death_certificate).permit!
	end

    def params_nurse_master
 		params.require(:nurse_master).permit!
	end

    def params_nurseing_counter_entry
 		params.require(:nurseing_counter_entry).permit!
	end


