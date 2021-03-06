class OutdoorsController < ApplicationController
	def new_registration
		 @new_patient=NewPatient.new
		 if NewPatient.first.nil?
             @new_patient.HR_no=1
             flash[:notice] = "Hr No of first patient is #{@new_patient.HR_no}" 
         else
             @last_patient=NewPatient.last
             @new_patient.HR_no=@last_patient.HR_no.next
             flash[:notice] = "HR_no of last Patient is #{@new_patient.HR_no}" 
	    end
   end
	
	def create_registration
    @ref= params[:doctor][:id]
    @new_patient=NewPatient.new(new_patient_params)
      if @new_patient.save
        @new_patient.update(references_doctor_id:@ref)
    	  flash[:notice] = 'New Patient created successfully'
  	   	redirect_to outdoors_disp_patient_path
      else
        render 'new_registration'
      end
  end

    def patient_list
      @doctor = params[:doctor_master][:doctor_master_id]
      @opd_patients=NewPatient.where("doctor_master_id=? AND date_time=? ",params[:doctor_master][:doctor_master_id],Date.today)
      @checked_patients=PatientCheckup.all
    end

    def disp_patient
    	 @new_patients=NewPatient.all
    end

    def edit_registration
    	 @new_patient = NewPatient.find(params[:id])
    end

    def update_registration
    	 @new_patient = NewPatient.find(params[:id])

    	  if @new_patient.update(new_patient_params)
            flash[:notice] = 'New Patient updated successfully!'
           redirect_to outdoors_disp_patient_path
          else
           render 'new_registration'
         end
    end


	def destroy_patient
		@new_patient = NewPatient.find(params[:id])
        if@new_patient.destroy
		      flash[:notice] = 'New Patient deleted successfully!'
		       redirect_to outdoors_disp_patient_path 
   		 end
	end

	def old_registration
		   @old_patient=OldPatient.new
		 if OldPatient.first.nil?
             @old_patient.HR_no=1
             flash[:notice] = "Hr No of first old patient is #{@old_patient.HR_no}" 
         else
             @last_patient=OldPatient.last
             @old_patient.HR_no=@last_patient.HR_no.next
             flash[:notice] = "HR_no of last old Patient is #{@old_patient.HR_no}" 
	    end
	end

	def old_registration_create
			  @old_patient=OldPatient.new(old_patient_params)
        if @old_patient.save
      		 flash[:notice] = 'Old Patient created successfully'
  	   		 redirect_to outdoors_disp_patient_old_path
        else
          render 'old_registration'
      end
	end

	def disp_patient_old
    	 @old_patients=OldPatient.all
    end


	def edit_registration_old
    	 @old_patient = OldPatient.find(params[:id])
    end

    def update_registration_old
    	 @old_patient = OldPatient.find(params[:id])

    	  if @old_patient.update(old_patient_params)
            flash[:notice] = 'Old Patient updated successfully!'
           redirect_to outdoors_disp_patient_old_path
          else
           render 'old_registration'
         end
    end


	def destroy_patient_old
		@old_patient = OldPatient.find(params[:id])
        if@old_patient.destroy
		      flash[:notice] = 'Patient deleted successfully!'
		       redirect_to outdoors_disp_patient_old_path
   		 end
	end


	def before_patient_entry
		@patient=BeforePatientEntry.new
		if BeforePatientEntry.first.nil?
             @patient.HR_no=1
             flash[:notice] = "Hr No of first before patient entry is #{@patient.HR_no}" 
         else
             @last_patient=BeforePatientEntry.last
             @patient.HR_no=@last_patient.HR_no.next
             flash[:notice] = "HR_no of last before patient entry is #{@patient.HR_no}" 
	    end
	end

	def before_patient_entry_create
	    @patient=BeforePatientEntry.new(before_patient_params)
        if @patient.save
      		 flash[:notice] = 'before_patient_entry created successfully'
  	   		 redirect_to outdoors_disp_patient_before_path
        else
          render 'before_patient_entry'
      end
	end

	def disp_patient_before
    	 @patients=BeforePatientEntry.all
    end

	def edit_before_patient_entry
    	 @patient = BeforePatientEntry.find(params[:id])
    end

    def update_before_patient_entry
    	 @patient = BeforePatientEntry.find(params[:id])

    	  if @patient.update(before_patient_params)
            flash[:notice] = 'Old Patient updated successfully!'
            redirect_to outdoors_disp_patient_before_path 
          else
           render 'before_patient_entry'
         end
    end


	def destroy_before_patient_entry
		@patient = BeforePatientEntry.find(params[:id])
        if@patient.destroy
		      flash[:notice] = 'Patient deleted successfully!'
		       redirect_to outdoors_disp_patient_before_path 
   		 end
	end


	def clinical_report
		@report=ClinicalReport.new
	end

	def clinic_values
		
			 @HR_no=params[:hr_no]
            p "================================"
            p @HR_no
         @patient=NewPatient.where(HR_no: @HR_no).take
         p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
         p @patient
	end

	def clinical_report_create
           
    		@report=ClinicalReport.new(clinical_report_params)
        if @report.save
      		 flash[:notice] = 'Clinical Reports created successfully'
  	   		 redirect_to outdoors_clinical_report_path
        else
          render 'clinical_report'
      end
	end

	def edit_clinical_report
		 @report =ClinicalReport.find(params[:id])
	end

	def update_clinical_report
		 @report =ClinicalReport.find(params[:id])

    	  if @report.update(clinical_report_params)
            flash[:notice] = 'clinical reports updated successfully!'
           redirect_to outdoors_clinical_report_path
          else
           render 'clinical_report'
         end
	end

	def destroy_clinical_report
		@report =ClinicalReport.find(params[:id])
        if@report.destroy
		      flash[:notice] = 'clinical report deleted successfully!'
		       redirect_to outdoors_before_clinical_report_path 
   		 end
	end




	def money_receipt
		#@receipt=MoneyReceipt.new
	end

	def  money_receipt_create
		@receipt=MoneyReceipt.new(money_receipt_params)
        if @receipt.save
      		 flash[:notice] = 'money receipt created successfully'
  	   		 redirect_to outdoors_money_receipt_path
        else
          render 'money_receipt'
      end
	end

	def  edit_money_receipt
		 @receipt =MoneyReceipt.find(params[:id])
	end

	def update_money_receipt
		 @receipt =MoneyReceipt.find(params[:id])

    	  if @receipt.update(money_receipt_params)
            flash[:notice] = 'money receipt updated successfully!'
           redirect_to outdoors_money_receipt_path
          else
           render 'money_receipt'
         end
	end

	def destroy_money_receipt
		@receipt=MoneyReceipt.find(params[:id])
        
        if@receipt.destroy
		      flash[:notice] = 'money receipt deleted successfully!'
		       redirect_to outdoors_money_receipt_path 
   		 end
	end



	def appoitment
		#@appoitment=Appoitment.new
	end

	def  appoitment_create
		@appoitment=Appoitment.new(appoitment_params)
        if @appoitment.save
      		 flash[:notice] = 'Appoitment created successfully'
  	   		 redirect_to outdoors_appoitment_path
        else
          render 'appoitment'
      end
	end

	def  edit_appoitment
		 @appoitment =Appoitment.find(params[:id])
	end

	def update_appoitment
		 @appoitment =Appoitment.find(params[:id])

    	  if @appoitment.update(appoitment_params)
            flash[:notice] = 'Appoitment updated successfully!'
           redirect_to outdoors_appoitment_path
          else
           render 'appoitment'
         end
	end

	def destroy_appoitment
		@appoitment=Appoitment.find(params[:id])
        
        if@appoitment.destroy
		      flash[:notice] = 'Appoitment deleted successfully!'
		       redirect_to outdoors_appoitment_path 
   		 end
	end


	def prescription
		# @prescription=DoctorPrescription.new
	end

	def  prescription_create
		@prescription=DoctorPrescription.new(prescription_params)
        if @prescription.save
      		 flash[:notice] = 'prescription created successfully'
  	   		 redirect_to outdoors_prescription_path
        else
          render 'prescription'
      end
	end

	def  edit_prescription
		 @prescription =DoctorPrescription.find(params[:id])
	end

	def update_prescription
		 @prescription =DoctorPrescription.find(params[:id])

    	  if @prescription.update(prescription_params)
            flash[:notice] = 'prescription updated successfully!'
           redirect_to outdoors_prescription_path
          else
           render 'prescription'
         end
	end

	def destroy_appoitment
		@prescription=DoctorPrescription.find(params[:id])
        
        if@prescription.destroy
		      flash[:notice] = 'prescription deleted successfully!'
		       redirect_to outdoors_prescription_path 
   		 end
	end

	def immunization_schedule
		#@immunization=ImmunizationSchedule.new
	end

	def  immunization_create
		@immunization=ImmunizationSchedule.new(immunization_schedule_params)
        if @immunization.save
      		 flash[:notice] = ' immunization schedule created successfully'
  	   		 redirect_to outdoors_prescription_path
        else
          render 'immunization_schedule'
      end
	end

	def  edit_immunization
		 @immunization =ImmunizationSchedule.find(params[:id])
	end

	def update_immunization
		 @immunization =ImmunizationSchedule.find(params[:id])

    	  if @immunization.update(immunization_schedule_params)
            flash[:notice] = 'immunization schedule updated successfully!'
           redirect_to outdoors_immunization_schedule_path
          else
           render 'immunization_schedule'
         end
	end

	def destroy_immunization
		@immunization=ImmunizationSchedule.find(params[:id])
        
        if@immunization.destroy
		      flash[:notice] ='immunization schedule deleted successfully!'
		       redirect_to outdoors_immunization_schedule_path 
   		 end
	end

	def doctor_patient_list
		
	end

	
	private 
	
	def new_patient_params
			params.require(:new_patient).permit!
	end

	def old_patient_params
			params.require(:old_patient).permit!
	end

	def before_patient_params
			params.require(:before_patient_entry).permit!
	end

	def clinical_report_params
			params.require(:clinical_report).permit!
	end

	def money_receipt_params
			params.require(:money_receipt).permit!
	end

	def appoitment_params
			params.require(:appoitment).permit!
	end

	def prescription_params
			params.require(:doctor_prescription).permit!
	end

	def immunization_schedule_params
			params.require(:doctor_prescription).permit!
	end
end