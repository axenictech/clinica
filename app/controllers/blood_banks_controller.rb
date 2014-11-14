class BloodBanksController < ApplicationController

	def new_rhd_master
		@rhd_master=RhdMaster.new
	end

	def create_rhd_master
		@rhd_master=RhdMaster.new(params_rhd_master)
			if @rhd_master.save
				flash[:notice]="Blood RHD Pack added successfully"
				redirect_to blood_banks_new_rhd_master_path
			else
				render 'new_rhd_master'
			end
	end

	def update_rhd_master
		@rhd_master=RhdMaster.find(params[:id])
			if  @rhd_master.update(params_rhd_master)
				flash[:notice]="Blood RHD Pack updated successfully"
				redirect_to blood_banks_new_rhd_master_path
			else
				render 'new_rhd_master'
			end
	end

	def delete_rhd_master
		@rhd_master=RhdMaster.find(params[:id])
			if @rhd_master.destroy
				flash[:notice]="Blood RHD Pack Deleted"
				redirect_to blood_banks_new_rhd_master_path
			end
	end

	def new_blood_group
		  @blood_group=BloodGroup.new
	end

	def create_blood_group
		@blood_group=BloodGroup.new(params_blood_group)
			if @blood_group.save
				flash[:notice]="Blood Group added successfully"
				redirect_to blood_banks_new_blood_group_path
			else
				render 'new_blood_group'
			end
	end

	def update_blood_group
		@blood_group=BloodGroup.find(params[:id])
			if  @blood_group.update(params_blood_group)
				flash[:notice]="Blood Group updated successfully"
				redirect_to blood_banks_new_blood_group_path
			else
				render 'new_blood_group'
			end
	end

	def delete_blood_group
		@blood_group=BloodGroup.find(params[:id])
			if @blood_group.destroy
				flash[:notice]="Blood Group  Deleted"
				redirect_to blood_banks_new_blood_group_path
			end
	end

	def new_hospital_master
		  @hospital_master=HospitalMaster.new
	end

	def create_hospital_master
		@hospital_master=HospitalMaster.new(params_hospital_master)
			if @hospital_master.save
				flash[:notice]="Hospital Master added successfully"
				redirect_to blood_banks_new_hospital_master_path
			else
				render 'new_blood_group'
			end
	end

	def update_hospital_master
		@hospital_master=HospitalMaster.find(params[:id])
			if  @hospital_master.update(params_hospital_master)
				flash[:notice]="Hospital Master updated successfully"
				redirect_to blood_banks_new_hospital_master_path
			else
				render 'new_blood_group'
			end
	end

	def delete_hospital_master
		@hospital_master=HospitalMaster.find(params[:id])
			if @hospital_master.destroy
				flash[:notice]="Hospital Master entry Deleted"
				redirect_to blood_banks_new_hospital_master_path
			end
	end

	def new_relative_group_master
	    @relative_group_master=RelativeGroupMaster.new
	end

	def create_relative_group_master
		@relative_group_master=RelativeGroupMaster.new(params_relative_group_master)
			if @relative_group_master.save
				flash[:notice]="Relative Group added successfully"
				redirect_to blood_banks_new_relative_group_master_path
			else
				render 'new_relative_group_master'
			end
	end

	def update_relative_group_master
		@relative_group_master=RelativeGroupMaster.find(params[:id])
			if  @relative_group_master.update(params_relative_group_master)
				flash[:notice]="Relative Group updated successfully"
				redirect_to blood_banks_new_relative_group_master_path
			else
				render 'new_relative_group_master'
			end
	end

	def delete_relative_group_master
		@relative_group_master=RelativeGroupMaster.find(params[:id])
			if @relative_group_master.destroy
				flash[:notice]="Relative Group entry Deleted"
				redirect_to blood_banks_new_relative_group_master_path
			end
	end

	def new_hospital_type_master
		  @hospital_type_master=HospitalTypeMaster.new
	end

	def create_hospital_type_master
		@hospital_type_master=HospitalTypeMaster.new(params_hospital_type_master)
			if @hospital_type_master.save
				flash[:notice]="Hospital Type added successfully"
				redirect_to blood_banks_new_hospital_type_master_path
			else
				render 'new_hospital_type_master'
			end
	end

	def update_hospital_type_master
		@hospital_type_master=HospitalTypeMaster.find(params[:id])
			if  @hospital_type_master.update(params_hospital_type_master)
				flash[:notice]="Hospital Type updated successfully"
				redirect_to blood_banks_new_hospital_type_master_path
			else
				render 'new_hospital_type_master'
			end
	end

	def delete_hospital_type_master
		@hospital_type_master=HospitalTypeMaster.find(params[:id])
			if @hospital_type_master.destroy
				flash[:notice]="Hospital Type Deleted"
				redirect_to blood_banks_new_hospital_type_master_path
			end
	end

	private
		def params_rhd_master
	 		params.require(:rhd_master).permit!
		end
		def params_blood_group	
	 		params.require(:blood_group).permit!
		end
		def params_hospital_master
	 		params.require(:hospital_master).permit!
		end

		def params_relative_group_master
	 		params.require(:relative_group_master).permit!
		end
		def params_hospital_type_master
	 		params.require(:hospital_type_master).permit!
		end
	
end
