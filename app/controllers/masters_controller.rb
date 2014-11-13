class MastersController < ApplicationController

	def new_company_expence_master
		@company_expence_master=CompanyExpenceMaster.new
	end

	def create_company_expence_master
		@company_expence_master=CompanyExpenceMaster.new(params_company_expence_master)
		if @company_expence_master.save
		    flash[:notice] = 'Company expence master created successfully'
	      	redirect_to masters_new_company_expence_master_path
    	else
      		render 'new_company_expence_master'
    	end
	end

	def edit_company_expence_master
		@company_expence_master=CompanyExpenceMaster.find(params[:id])
	end

	def update_company_expence_master
		@company_expence_master=CompanyExpenceMaster.find(params[:id])
		if @company_expence_master.update(params_company_expence_master)
		 	flash[:notice] = 'Company expence master updated successfully'
	      	redirect_to masters_new_company_expence_master_path
    	else
      		render 'edit_company_expence_master'
    	end
	end

	def delete_company_expence_master
		@company_expence_master=CompanyExpenceMaster.find(params[:id])
		if @company_expence_master.destroy
		   flash[:notice] = 'Company expence master deleted successfully!'
   		   redirect_to masters_new_company_expence_master_path
   		end			
	end

	private
	def params_company_expence_master
		params.require(:company_expence_master).permit!
	end
end
