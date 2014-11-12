class BloodBanksController < ApplicationController


	def new_pack_master
	  @pack_master=PackMaster.new
	end
	def create_pack_master
	@pack_master=PackMaster.new(params_nurseing_counter_entry)
		if @pack_master.save
			flash[:notice]="Blood Pack added successfully"
			redirect_to indoor_new_pack_master_path
		else
			render 'new_pack_master'
		end
	end
	end
	def update_pack_master
	@pack_master=PackMaster.find(params[:id])
		if  @pack_master.update(params_nurseing_counter_entry)
			flash[:notice]="Blood Pack updated successfully"
			redirect_to indoor_new_pack_master_path
		else
			render 'new_pack_master'
		end
	end
	def delete_pack_master
	@pack_master=PackMaster.find(params[:id])
		if @pack_master.destroy
			flash[:notice]="Blood Pack Deleted"
			redirect_to indoor_new_pack_master_path
		end
	end


    def new_rhd_master
	  @rhd_master=RhdMaster.new
	end
	def create_rhd_master
	@rhd_master=RhdMaster.new(params_rhd_master)
		if @rhd_master.save
			flash[:notice]="Blood RHD Pack added successfully"
			redirect_to indoor_new_rhd_master_path
		else
			render 'new_rhd_master'
		end
	end
	end
	def update_rhd_master
	@rhd_master=RhdMaster.find(params[:id])
		if  @rhd_master.update(params_rhd_master)
			flash[:notice]="Blood RHD Pack updated successfully"
			redirect_to indoor_new_rhd_master_path
		else
			render 'new_rhd_master'
		end
	end
	def delete_rhd_master
	@rhd_master=RhdMaster.find(params[:id])
		if @rhd_master.destroy
			flash[:notice]="Blood RHD Pack Deleted"
			redirect_to indoor_new_rhd_master_path
		end
	end



	def new_rhd_master
	  @rhd_master=RhdMaster.new
	end
	def create_rhd_master
	@rhd_master=RhdMaster.new(params_rhd_master)
		if @rhd_master.save
			flash[:notice]="Blood RHD Pack added successfully"
			redirect_to indoor_new_rhd_master_path
		else
			render 'new_rhd_master'
		end
	end
	end
	def update_rhd_master
	@rhd_master=RhdMaster.find(params[:id])
		if  @rhd_master.update(params_rhd_master)
			flash[:notice]="Blood RHD Pack updated successfully"
			redirect_to indoor_new_rhd_master_path
		else
			render 'new_rhd_master'
		end
	end
	def delete_rhd_master
	@rhd_master=RhdMaster.find(params[:id])
		if @rhd_master.destroy
			flash[:notice]="Blood RHD Pack Deleted"
			redirect_to indoor_new_rhd_master_path
		end
	end



def new_blood_group
	  @blood_group=BloodGroup.new
	end
	def create_blood_group
	@blood_group=BloodGroup.new(params_blood_group)
		if @blood_group.save
			flash[:notice]="Blood Group added successfully"
			redirect_to indoor_new_blood_group_path
		else
			render 'new_blood_group'
		end
	end
	end
	def update_blood_group
	@blood_group=BloodGroup.find(params[:id])
		if  @blood_group.update(params_blood_group)
			flash[:notice]="Blood Group updated successfully"
			redirect_to indoor_new_blood_group_path
		else
			render 'new_blood_group'
		end
	end
	def delete_blood_group
	@blood_group=BloodGroup.find(params[:id])
		if @blood_group.destroy
			flash[:notice]="Blood Group  Deleted"
			redirect_to indoor_new_blood_group_path
		end
	end



def new_hospital_master
	  @hospital_master=BloodGroup.new
	end
	def create_blood_group
	@blood_group=BloodGroup.new(params_blood_group)
		if @blood_group.save
			flash[:notice]="Blood Group added successfully"
			redirect_to indoor_new_blood_group_path
		else
			render 'new_blood_group'
		end
	end
	end
	def update_blood_group
	@blood_group=BloodGroup.find(params[:id])
		if  @blood_group.update(params_blood_group)
			flash[:notice]="Blood Group updated successfully"
			redirect_to indoor_new_blood_group_path
		else
			render 'new_blood_group'
		end
	end
	def delete_blood_group
	@blood_group=BloodGroup.find(params[:id])
		if @blood_group.destroy
			flash[:notice]="Blood Group  Deleted"
			redirect_to indoor_new_blood_group_path
		end
	end




	private
	def params_pack_master
 		params.require(:pack_master).permit!
	end
	def params_rhd_master
 		params.require(:rhd_master).permit!
	end
	def params_blood_group	
 		params.require(:blood_group).permit!
	end


end
