class CommonMasterController < ApplicationController

	def view_doctor_master
		@doctor_masters=DoctorMaster.where(is_refered:false)
	end

	def new_doctor_master
		@doctor_master=DoctorMaster.new
		@specializations=Specialization.all
		@cities=City.all
	end

	def create_doctor_master
		@doctor_master=DoctorMaster.new(params_doctor_master)
		@doctor_master.is_refered=false
		if @doctor_master.save
		    flash[:notice] = 'Doctor master created successfully'
	      	redirect_to common_master_view_doctor_master_path
    	else
      		render 'new_doctor_master'
    	end
	end

	def edit_doctor_master
		@doctor_master=DoctorMaster.find(params[:id])
		@specializations=Specialization.all
		@cities=City.all
	end

	def update_doctor_master
		@doctor_master=DoctorMaster.find(params[:id])
		if @doctor_master.update(params_doctor_master)
		 	flash[:notice] = 'Doctor master updated successfully'
	      	redirect_to common_master_view_doctor_master_path
    	else
      		render 'edit_doctor_master'
    	end
	end

	def delete_doctor_master
		@doctor_master=DoctorMaster.find(params[:id])
		if @doctor_master.destroy
		   flash[:notice] = 'Doctor master deleted successfully!'
   		   redirect_to common_master_view_doctor_master_path
   		end			
	end

	def view_referred_doctor_master
		@referred_doctor_masters=DoctorMaster.where(is_refered:true)
	end

	def new_referred_doctor_master
		@referred_doctor_master=DoctorMaster.new
		@specializations=Specialization.all
		@cities=City.all
	end

	def create_referred_doctor_master
		@referred_doctor_master=DoctorMaster.new(params_doctor_master)
		@referred_doctor_master.is_refered=true
		if @referred_doctor_master.save
			flash[:notice] = 'Referred doctor master created successfully'
	      	redirect_to common_master_view_referred_doctor_master_path
    	else
      		render 'new_referred_doctor_master'
    	end
	end

	def edit_referred_doctor_master
		@referred_doctor_master=DoctorMaster.find(params[:id])
		@specializations=Specialization.all
		@cities=City.all
	end

	def update_referred_doctor_master
		@referred_doctor_master=DoctorMaster.find(params[:id])
		if @referred_doctor_master.update(params_doctor_master)
			flash[:notice] = 'Referred doctor master updated successfully'
	      	redirect_to common_master_view_referred_doctor_master_path
    	else
      		render 'edit_referred_doctor_master'
    	end
	end

	def delete_referred_doctor_master
		@referred_doctor_master=DoctorMaster.find(params[:id])
		if @referred_doctor_master.destroy
			flash[:notice] = 'Referred doctor master created successfully'
	      	redirect_to common_master_view_referred_doctor_master_path
    	end
	end

	def view_specialized_master
		@specialized_masters=Specialization.all
	end

	def new_specialized_master
		@specialized_master=Specialization.new
	end

	def create_specialized_master
		@specialized_master=Specialization.new(params_specialized_master)
		if @specialized_master.save
		    flash[:notice] = 'Specialized master created successfully'
	      	redirect_to common_master_view_specialized_master_path
    	else
      		render 'new_specialized_master'
    	end
	end

	def edit_specialized_master
		@specialized_master=Specialization.find(params[:id])
	end

	def update_specialized_master
		@specialized_master=Specialization.find(params[:id])
		if @specialized_master.update(params_specialized_master)
		 	flash[:notice] = 'Specialized master updated successfully'
	      	redirect_to common_master_view_specialized_master_path
    	else
      		render 'edit_specialized_master'
    	end
	end

	def delete_specialized_master
		@specialized_master=Specialization.find(params[:id])
		if @specialized_master.destroy
		   flash[:notice] = 'Specialized master deleted successfully!'
   		   redirect_to common_master_view_specialized_master_path
   		end			
	end

	def view_shift_master
		@shift_masters=ShiftMaster.all
	end

	def new_shift_master
		@shift_master=ShiftMaster.new
	end

	def create_shift_master
		@shift_master=ShiftMaster.new(params_shift_master)
		if @shift_master.save
		    flash[:notice] = 'Shift master created successfully'
	      	redirect_to common_master_view_shift_master_path
    	else
      		render 'new_shift_master'
    	end
	end

	def edit_shift_master
		@shift_master=ShiftMaster.find(params[:id])
	end

	def update_shift_master
		@shift_master=ShiftMaster.find(params[:id])
		if @shift_master.update(params_shift_master)
		 	flash[:notice] = 'Shift master updated successfully'
	      	redirect_to common_master_view_shift_master_path
    	else
      		render 'edit_shift_master'
    	end
	end

	def delete_shift_master
		@shift_master=ShiftMaster.find(params[:id])
		if @shift_master.destroy
		   flash[:notice] = 'Shift master deleted successfully!'
   		   redirect_to common_master_view_shift_master_path
   		end			
	end

	def view_doctor_commission
		@doctor_commissions=DoctorCommission.all
	end

	def new_doctor_commission
		@doctor_commission=DoctorCommission.new
		@doctor_masters=DoctorMaster.all
	end

	def create_doctor_commission
		@doctor_commission=DoctorCommission.new(params_doctor_commission)
		if @doctor_commission.save
		    flash[:notice] = 'Doctor commission created successfully'
	      	redirect_to common_master_view_doctor_commission_path
    	else
      		render 'new_doctor_commission'
    	end
	end

	def edit_doctor_commission
		@doctor_commission=DoctorCommission.find(params[:id])
		@doctor_masters=DoctorMaster.all
	end

	def update_doctor_commission
		@doctor_commission=DoctorCommission.find(params[:id])
		if @doctor_commission.update(params_doctor_commission)
		 	flash[:notice] = 'Doctor commission updated successfully'
	      	redirect_to common_master_view_doctor_commission_path
    	else
      		render 'edit_doctor_commission'
    	end
	end

	def delete_doctor_commission
		@doctor_commission=DoctorCommission.find(params[:id])
		if @doctor_commission.destroy
		   flash[:notice] = 'Doctor commission deleted successfully!'
   		   redirect_to common_master_view_doctor_commission_path
   		end			
	end

	def view_state_master
		@state_masters=State.all
	end

	def new_state_master
		@state_master=State.new
	end

	def create_state_master
		@state_master=State.new(params_state_master)
		if @state_master.save
		    flash[:notice] = 'State master created successfully'
	      	redirect_to common_master_view_state_master_path
    	else
      		render 'new_state_master'
    	end
	end

	def edit_state_master
		@state_master=State.find(params[:id])
	end

	def update_state_master
		@state_master=State.find(params[:id])
		if @state_master.update(params_state_master)
		 	flash[:notice] = 'State master updated successfully'
	      	redirect_to common_master_view_state_master_path
    	else
      		render 'edit_state_master'
    	end
	end

	def delete_state_master
		@state_master=State.find(params[:id])
		if @state_master.destroy
		   flash[:notice] = 'State master deleted successfully!'
   		   redirect_to common_master_view_state_master_path
   		end			
	end

	def view_city_master
		@city_masters=City.all
	end

	def new_city_master
		@city_master=City.new
		@state_masters=State.all
	end

	def create_city_master
		@city_master=City.new(params_city_master)
		if @city_master.save
		    flash[:notice] = 'City master created successfully'
	      	redirect_to common_master_view_city_master_path
    	else
      		render 'new_city_master'
    	end
	end

	def edit_city_master
		@city_master=City.find(params[:id])
		@state_masters=State.all
	end

	def update_city_master
		@city_master=City.find(params[:id])
		if @city_master.update(params_city_master)
		 	flash[:notice] = 'City master updated successfully'
	      	redirect_to common_master_view_city_master_path
    	else
      		render 'edit_city_master'
    	end
	end

	def delete_city_master
		@city_master=City.find(params[:id])
		if @city_master.destroy
		   flash[:notice] = 'City master deleted successfully!'
   		   redirect_to common_master_view_city_master_path
   		end			
	end

	def view_family_master
		@family_masters=FamilyMaster.all
	end

	def new_family_master
		@family_master=FamilyMaster.new
	end

	def create_family_master
		@family_master=FamilyMaster.new(params_family_master)
		if @family_master.save
		    flash[:notice] = 'Family master created successfully'
	      	redirect_to common_master_view_family_master_path
    	else
      		render 'new_family_master'
    	end
	end

	def edit_family_master
		@family_master=FamilyMaster.find(params[:id])
	end

	def update_family_master
		@family_master=FamilyMaster.find(params[:id])
		if @family_master.update(params_family_master)
		 	flash[:notice] = 'Family master updated successfully'
	      	redirect_to common_master_view_family_master_path
    	else
      		render 'edit_family_master'
    	end
	end

	def delete_family_master
		@family_master=FamilyMaster.find(params[:id])
		if @family_master.destroy
		   flash[:notice] = 'Family master deleted successfully!'
   		   redirect_to common_master_view_family_master_path
   		end			
	end

	def view_ocupation_master
		@ocupation_masters=OccupationMaster.all
	end

	def new_ocupation_master
		@ocupation_master=OccupationMaster.new
	end

	def create_ocupation_master
		@ocupation_master=OccupationMaster.new(params_ocupation_master)
		if @ocupation_master.save
		    flash[:notice] = 'Ocupation master created successfully'
	      	redirect_to common_master_view_ocupation_master_path
    	else
      		render 'new_ocupation_master'
    	end
	end

	def edit_ocupation_master
		@ocupation_master=OccupationMaster.find(params[:id])
	end

	def update_ocupation_master
		@ocupation_master=OccupationMaster.find(params[:id])
		if @ocupation_master.update(params_ocupation_master)
		 	flash[:notice] = 'Ocupation master updated successfully'
	      	redirect_to common_master_view_ocupation_master_path
    	else
      		render 'edit_ocupation_master'
    	end
	end

	def delete_ocupation_master
		@ocupation_master=OccupationMaster.find(params[:id])
		if @ocupation_master.destroy
		   flash[:notice] = 'Ocupation master deleted successfully!'
   		   redirect_to common_master_view_ocupation_master_path
   		end			
	end

	def view_religion_master
		@religion_masters=ReligionMaster.all
	end

	def new_religion_master
		@religion_master=ReligionMaster.new
	end

	def create_religion_master
		@religion_master=ReligionMaster.new(params_religion_master)
		if @religion_master.save
		    flash[:notice] = 'Religion master created successfully'
	      	redirect_to common_master_view_religion_master_path
    	else
      		render 'new_religion_master'
    	end
	end

	def edit_religion_master
		@religion_master=ReligionMaster.find(params[:id])
	end

	def update_religion_master
		@religion_master=ReligionMaster.find(params[:id])
		if @religion_master.update(params_religion_master)
		 	flash[:notice] = 'Religion master updated successfully'
	      	redirect_to common_master_view_religion_master_path
    	else
      		render 'edit_religion_master'
    	end
	end

	def delete_religion_master
		@religion_master=ReligionMaster.find(params[:id])
		if @religion_master.destroy
		   flash[:notice] = 'Religion master deleted successfully!'
   		   redirect_to common_master_view_religion_master_path
   		end			
	end	

	def view_bank_master
		@bank_masters=BankMaster.all
	end

	def new_bank_master
		@bank_master=BankMaster.new
	end

	def create_bank_master
		@bank_master=BankMaster.new(params_bank_master)
		if @bank_master.save
		    flash[:notice] = 'Bank master created successfully'
	      	redirect_to common_master_view_bank_master_path
    	else
      		render 'new_bank_master'
    	end
	end

	def edit_bank_master
		@bank_master=BankMaster.find(params[:id])
	end

	def update_bank_master
		@bank_master=BankMaster.find(params[:id])
		if @bank_master.update(params_bank_master)
		 	flash[:notice] = 'Bank master updated successfully'
	      	redirect_to common_master_view_bank_master_path
    	else
      		render 'edit_bank_master'
    	end
	end

	def delete_bank_master
		@bank_master=BankMaster.find(params[:id])
		if @bank_master.destroy
		   flash[:notice] = 'Bank master deleted successfully!'
   		   redirect_to common_master_view_bank_master_path
   		end			
	end
	
	def view_company_master
		@company_masters=CompanyMaster.all
	end

	def new_company_master
		@company_master=CompanyMaster.new
		@cities=City.all
	end

	def create_company_master
		@company_master=CompanyMaster.new(params_company_master)
		if @company_master.save
		    flash[:notice] = 'Company master created successfully'
	      	redirect_to common_master_view_company_master_path
    	else
      		render 'new_company_master'
    	end
	end

	def edit_company_master
		@company_master=CompanyMaster.find(params[:id])
		@cities=City.all
	end

	def update_company_master
		@company_master=CompanyMaster.find(params[:id])
		if @company_master.update(params_company_master)
		 	flash[:notice] = 'Company master updated successfully'
	      	redirect_to common_master_view_company_master_path
    	else
      		render 'edit_company_master'
    	end
	end

	def delete_company_master
		@company_master=CompanyMaster.find(params[:id])
		if @company_master.destroy
		   flash[:notice] = 'Company master deleted successfully!'
   		   redirect_to common_master_view_company_master_path
   		end			
	end

	def view_diagnosis_master
		@diagnosis_masters=DignosisMaster.all
	end

	def new_diagnosis_master
		@diagnosis_master=DignosisMaster.new
	end

	def create_diagnosis_master
		@diagnosis_master=DignosisMaster.new(params_diagnosis_master)
		if @diagnosis_master.save
		    flash[:notice] = 'Diagnosis master created successfully'
	      	redirect_to common_master_view_diagnosis_master_path
    	else
      		render 'new_diagnosis_master'
    	end
	end

	def edit_diagnosis_master
		@diagnosis_master=DignosisMaster.find(params[:id])
	end

	def update_diagnosis_master
		@diagnosis_master=DignosisMaster.find(params[:id])
		if @diagnosis_master.update(params_diagnosis_master)
		 	flash[:notice] = 'Diagnosis master updated successfully'
	      	redirect_to common_master_view_diagnosis_master_path
    	else
      		render 'edit_diagnosis_master'
    	end
	end

	def delete_diagnosis_master
		@diagnosis_master=DignosisMaster.find(params[:id])
		if @diagnosis_master.destroy
		   flash[:notice] = 'Diagnosis master deleted successfully!'
   		   redirect_to common_master_view_diagnosis_master_path
   		end			
	end

	def view_group_master
		@group_masters=GroupMaster.all
	end

	def new_group_master
		@group_master=GroupMaster.new
	end

	def create_group_master
		@group_master=GroupMaster.new(params_group_master)
		if @group_master.save
		    flash[:notice] = 'Group master created successfully'
	      	redirect_to common_master_view_group_master_path
    	else
      		render 'new_group_master'
    	end
	end

	def edit_group_master
		@group_master=GroupMaster.find(params[:id])
	end

	def update_group_master
		@group_master=GroupMaster.find(params[:id])
		if @group_master.update(params_group_master)
		 	flash[:notice] = 'Group master updated successfully'
	      	redirect_to common_master_view_group_master_path
    	else
      		render 'edit_group_master'
    	end
	end

	def delete_group_master
		@group_master=GroupMaster.find(params[:id])
		if @group_master.destroy
		   flash[:notice] = 'Group master deleted successfully!'
   		   redirect_to common_master_view_group_master_path
   		end			
	end

	def view_service_master
		@service_masters=ServiceMaster.all
	end

	def new_service_master
		@service_master=ServiceMaster.new
	end

	def create_service_master
		@service_master=ServiceMaster.new(params_service_master)
		if @service_master.save
		    flash[:notice] = 'Service master created successfully'
	      	redirect_to common_master_view_service_master_path
    	else
      		render 'new_service_master'
    	end
	end

	def edit_service_master
		@service_master=ServiceMaster.find(params[:id])
	end

	def update_service_master
		@service_master=ServiceMaster.find(params[:id])
		if @service_master.update(params_service_master)
		 	flash[:notice] = 'Service master updated successfully'
	      	redirect_to common_master_view_service_master_path
    	else
      		render 'edit_service_master'
    	end
	end

	def delete_service_master
		@service_master=ServiceMaster.find(params[:id])
		if @service_master.destroy
		   flash[:notice] = 'Service master deleted successfully!'
   		   redirect_to common_master_view_service_master_path
   		end			
	end
	
	def view_dose_master
		@dose_masters=DoseMaster.all
	end

	def new_dose_master
		@dose_master=DoseMaster.new
	end

	def create_dose_master
		@dose_master=DoseMaster.new(params_dose_master)
		if @dose_master.save
		    flash[:notice] = 'Dose master created successfully'
	      	redirect_to common_master_view_dose_master_path
    	else
      		render 'new_dose_master'
    	end
	end

	def edit_dose_master
		@dose_master=DoseMaster.find(params[:id])
	end

	def update_dose_master
		@dose_master=DoseMaster.find(params[:id])
		if @dose_master.update(params_dose_master)
		 	flash[:notice] = 'Dose master updated successfully'
	      	redirect_to common_master_view_dose_master_path
    	else
      		render 'edit_dose_master'
    	end
	end

	def delete_dose_master
		@dose_master=DoseMaster.find(params[:id])
		if @dose_master.destroy
		   flash[:notice] = 'Dose master deleted successfully!'
   		   redirect_to common_master_view_dose_master_path
   		end			
	end

	def view_age_group_master
		@age_group_masters=AgeGroupMaster.all
	end

	def new_age_group_master
		@age_group_master=AgeGroupMaster.new
	end

	def create_age_group_master
		@age_group_master=AgeGroupMaster.new(params_age_group_master)
		if @age_group_master.save
		    flash[:notice] = 'Age group master created successfully'
	      	redirect_to common_master_view_age_group_master_path
    	else
      		render 'new_age_group_master'
    	end
	end

	def edit_age_group_master
		@age_group_master=AgeGroupMaster.find(params[:id])
	end

	def update_age_group_master
		@age_group_master=AgeGroupMaster.find(params[:id])
		if @age_group_master.update(params_age_group_master)
		 	flash[:notice] = 'Age group master updated successfully'
	      	redirect_to common_master_view_age_group_master_path
    	else
      		render 'edit_age_group_master'
    	end
	end

	def delete_age_group_master
		@age_group_master=AgeGroupMaster.find(params[:id])
		if @age_group_master.destroy
		   flash[:notice] = 'Age group master deleted successfully!'
   		   redirect_to common_master_view_age_group_master_path
   		end			
	end

	def view_vaccines_master
		@vaccines_masters=VaccinesMaster.all
	end

	def new_vaccines_master
		@vaccines_master=VaccinesMaster.new
		@age_group_masters=AgeGroupMaster.all
	end

	def create_vaccines_master
		@vaccines_master=VaccinesMaster.new(params_vaccines_master)
		if @vaccines_master.save
		    flash[:notice] = 'Vaccines master created successfully'
	      	redirect_to common_master_view_vaccines_master_path
    	else
      		render 'new_vaccines_master'
    	end
	end

	def edit_vaccines_master
		@vaccines_master=VaccinesMaster.find(params[:id])
		@age_group_masters=AgeGroupMaster.all
	end

	def update_vaccines_master
		@vaccines_master=VaccinesMaster.find(params[:id])
		if @vaccines_master.update(params_vaccines_master)
		 	flash[:notice] = 'Vaccines master updated successfully'
	      	redirect_to common_master_view_vaccines_master_path
    	else
      		render 'edit_vaccines_master'
    	end
	end

	def delete_vaccines_master
		@vaccines_master=VaccinesMaster.find(params[:id])
		if @vaccines_master.destroy
		   flash[:notice] = 'Vaccines master deleted successfully!'
   		   redirect_to common_master_view_vaccines_master_path
   		end			
	end

	def view_floor_master
		@floor_masters=FloorMaster.all
	end

	def new_floor_master
		@floor_master=FloorMaster.new
	end

	def create_floor_master
		@floor_master=FloorMaster.new(params_floor_master)
		if @floor_master.save
		    flash[:notice] = 'Floor master created successfully'
	      	redirect_to common_master_view_floor_master_path
    	else
      		render 'new_floor_master'
    	end
	end

	def edit_floor_master
		@floor_master=FloorMaster.find(params[:id])
	end

	def update_floor_master
		@floor_master=FloorMaster.find(params[:id])
		if @floor_master.update(params_floor_master)
		 	flash[:notice] = 'Floor master updated successfully'
	      	redirect_to common_master_view_floor_master_path
    	else
      		render 'edit_floor_master'
    	end
	end

	def delete_floor_master
		@floor_master=FloorMaster.find(params[:id])
		if @floor_master.destroy
		   flash[:notice] = 'Floor master deleted successfully!'
   		   redirect_to common_master_view_floor_master_path
   		end			
	end

	def view_ward_master
		@ward_masters=WardMaster.all
	end

	def new_ward_master
		@ward_master=WardMaster.new
		@floor_masters=FloorMaster.all
	end

	def create_ward_master
		@ward_master=WardMaster.new(params_ward_master)
		if @ward_master.save
		    flash[:notice] = 'Ward master created successfully'
	      	redirect_to common_master_view_ward_master_path
    	else
      		render 'new_ward_master'
    	end
	end

	def edit_ward_master
		@ward_master=WardMaster.find(params[:id])
		@floor_masters=FloorMaster.all
	end

	def update_ward_master
		@ward_master=WardMaster.find(params[:id])
		if @ward_master.update(params_ward_master)
		 	flash[:notice] = 'Ward master updated successfully'
	      	redirect_to common_master_view_ward_master_path
    	else
      		render 'edit_ward_master'
    	end
	end

	def delete_ward_master
		@ward_master=WardMaster.find(params[:id])
		if @ward_master.destroy
		   flash[:notice] = 'Ward master deleted successfully!'
   		   redirect_to common_master_view_ward_master_path
   		end			
	end

	def view_bed_master
		@bed_masters=BedMaster.all
	end

	def new_bed_master
		@bed_master=BedMaster.new
	end

	def create_bed_master
		@bed_master=BedMaster.new(params_bed_master)
		if @bed_master.save
		    flash[:notice] = 'Bed master created successfully'
	      	redirect_to common_master_view_bed_master_path
    	else
      		render 'new_bed_master'
    	end
	end

	def edit_bed_master
		@bed_master=BedMaster.find(params[:id])
	end

	def update_bed_master
		@bed_master=BedMaster.find(params[:id])
		if @bed_master.update(params_bed_master)
		 	flash[:notice] = 'Bed master updated successfully'
	      	redirect_to common_master_view_bed_master_path
    	else
      		render 'edit_bed_master'
    	end
	end

	def delete_bed_master
		@bed_master=BedMaster.find(params[:id])
		if @bed_master.destroy
		   flash[:notice] = 'Bed master deleted successfully!'
   		   redirect_to common_master_view_bed_master_path
   		end			
	end

	def view_ot_master
		@ot_masters=OtMaster.all
	end

	def new_ot_master
		@ot_master=OtMaster.new
	end

	def create_ot_master
		@ot_master=OtMaster.new(params_ot_master)
		if @ot_master.save
		    flash[:notice] = 'OT master created successfully'
	      	redirect_to common_master_view_ot_master_path
    	else
      		render 'new_ot_master'
    	end
	end

	def edit_ot_master
		@ot_master=OtMaster.find(params[:id])
	end

	def update_ot_master
		@ot_master=OtMaster.find(params[:id])
		if @ot_master.update(params_ot_master)
		 	flash[:notice] = 'OT master updated successfully'
	      	redirect_to common_master_view_ot_master_path
    	else
      		render 'edit_ot_master'
    	end
	end

	def delete_ot_master
		@ot_master=OtMaster.find(params[:id])
		if @ot_master.destroy
		   flash[:notice] = 'OT master deleted successfully!'
   		   redirect_to common_master_view_ot_master_path
   		end			
	end

	def view_ot_slot_master
		@ot_slot_masters=OtSlotMaster.all
	end

	def new_ot_slot_master
		@ot_slot_master=OtSlotMaster.new
	end

	def create_ot_slot_master
		@ot_slot_master=OtSlotMaster.new(params_ot_slot_master)
		if @ot_slot_master.save
		    flash[:notice] = 'OT slot master created successfully'
	      	redirect_to common_master_view_ot_slot_master_path
    	else
      		render 'new_ot_slot_master'
    	end
	end

	def edit_ot_slot_master
		@ot_slot_master=OtSlotMaster.find(params[:id])
	end

	def update_ot_slot_master
		@ot_slot_master=OtSlotMaster.find(params[:id])
		if @ot_slot_master.update(params_ot_slot_master)
		 	flash[:notice] = 'OT slot master updated successfully'
	      	redirect_to common_master_view_ot_slot_master_path
    	else
      		render 'edit_ot_slot_master'
    	end
	end

	def delete_ot_slot_master
		@ot_slot_master=OtSlotMaster.find(params[:id])
		if @ot_slot_master.destroy
		   flash[:notice] = 'OT slot master deleted successfully!'
   		   redirect_to common_master_view_ot_slot_master_path
   		end			
	end

	def view_ot_type_master
		@ot_type_masters=OtTypeMaster.all
	end

	def new_ot_type_master
		@ot_type_master=OtTypeMaster.new
	end

	def create_ot_type_master
		@ot_type_master=OtTypeMaster.new(params_ot_type_master)
		if @ot_type_master.save
		    flash[:notice] = 'OT type master created successfully'
	      	redirect_to common_master_view_ot_type_master_path
    	else
      		render 'new_ot_type_master'
    	end
	end

	def edit_ot_type_master
		@ot_type_master=OtTypeMaster.find(params[:id])
	end

	def update_ot_type_master
		@ot_type_master=OtTypeMaster.find(params[:id])
		if @ot_type_master.update(params_ot_type_master)
		 	flash[:notice] = 'OT type master updated successfully'
	      	redirect_to common_master_view_ot_type_master_path
    	else
      		render 'edit_ot_type_master'
    	end
	end

	def delete_ot_type_master
		@ot_type_master=OtTypeMaster.find(params[:id])
		if @ot_type_master.destroy
		   flash[:notice] = 'OT type master deleted successfully!'
   		   redirect_to common_master_view_ot_type_master_path
   		end			
	end

	def view_opd_department_master
		@opd_department_masters=OpdDepartmentMaster.all
	end

	def new_opd_department_master
		@opd_department_master=OpdDepartmentMaster.new
	end

	def create_opd_department_master
		@opd_department_master=OpdDepartmentMaster.new(params_opd_department_master)
		if @opd_department_master.save
		    flash[:notice] = 'OPD department master created successfully'
	      	redirect_to common_master_view_opd_department_master_path
    	else
      		render 'new_opd_department_master'
    	end
	end

	def edit_opd_department_master
		@opd_department_master=OpdDepartmentMaster.find(params[:id])
	end

	def update_opd_department_master
		@opd_department_master=OpdDepartmentMaster.find(params[:id])
		if @opd_department_master.update(params_opd_department_master)
		 	flash[:notice] = 'OPD department master updated successfully'
	      	redirect_to common_master_view_opd_department_master_path
    	else
      		render 'edit_opd_department_master'
    	end
	end

	def delete_opd_department_master
		@opd_department_master=OpdDepartmentMaster.find(params[:id])
		if @opd_department_master.destroy
		   flash[:notice] = 'OPD department master deleted successfully!'
   		   redirect_to common_master_view_opd_department_master_path
   		end			
	end

	def view_diet_master
		@diet_masters=DietMaster.all
	end

	def new_diet_master
		@diet_master=DietMaster.new
	end

	def create_diet_master
		@diet_master=DietMaster.new(params_diet_master)
		if @diet_master.save
		    flash[:notice] = 'Diet master created successfully'
	      	redirect_to common_master_view_diet_master_path
    	else
      		render 'new_diet_master'
    	end
	end

	def edit_diet_master
		@diet_master=DietMaster.find(params[:id])
	end

	def update_diet_master
		@diet_master=DietMaster.find(params[:id])
		if @diet_master.update(params_diet_master)
		 	flash[:notice] = 'Diet master updated successfully'
	      	redirect_to common_master_view_diet_master_path
    	else
      		render 'edit_diet_master'
    	end
	end

	def delete_diet_master
		@diet_master=DietMaster.find(params[:id])
		if @diet_master.destroy
		   flash[:notice] = 'Diet master deleted successfully!'
   		   redirect_to common_master_view_diet_master_path
   		end			
	end

	private
	def params_doctor_master
		params.require(:doctor_master).permit!
	end
	def params_specialized_master
		params.require(:specialization).permit!
	end
	def params_shift_master
		params.require(:shift_master).permit!
	end
	def params_doctor_commission
		params.require(:doctor_commission).permit!
	end
	def params_state_master
		params.require(:state).permit!
	end
	def params_city_master
		params.require(:city).permit!
	end
	def params_family_master
		params.require(:family_master).permit!
	end
	def params_ocupation_master
		params.require(:occupation_master).permit!
	end
	def params_religion_master
		params.require(:religion_master).permit!
	end
	def params_bank_master
		params.require(:bank_master).permit!
	end
	def params_company_master
		params.require(:company_master).permit!
	end
	def params_diagnosis_master
		params.require(:dignosis_master).permit!
	end
	def params_group_master
		params.require(:group_master).permit!
	end
	def params_service_master
		params.require(:service_master).permit!
	end
	def params_dose_master
		params.require(:dose_master).permit!
	end
	def params_age_group_master
		params.require(:age_group_master).permit!
	end
	def params_vaccines_master
		params.require(:vaccines_master).permit!
	end
	def params_floor_master
		params.require(:floor_master).permit!
	end
	def params_ward_master
		params.require(:ward_master).permit!
	end
	def params_bed_master
		params.require(:bed_master).permit!
	end
	def params_ot_master
		params.require(:ot_master).permit!
	end
	def params_ot_slot_master
		params.require(:ot_slot_master).permit!
	end
	def params_ot_type_master
		params.require(:ot_type_master).permit!
	end
	def params_opd_department_master
		params.require(:opd_department_master).permit!
	end
	def params_diet_master
		params.require(:diet_master).permit!
	end
end
