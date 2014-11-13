class DiagnosticMasterController < ApplicationController

	def new_department_master
		@department_master=DepartmentMaster.new
	end

	def create_department_master
		@department_master=DepartmentMaster.new(params_department_master)
		if @department_master.save
		    flash[:notice] = 'Department master created successfully'
	      	redirect_to diagnostic_master_new_department_master_path
    	else
      		render 'new_department_master'
    	end
	end

	def edit_department_master
		@department_master=DepartmentMaster.find(params[:id])
	end

	def update_department_master
		@department_master=DepartmentMaster.find(params[:id])
		if @department_master.update(params_department_master)
		 	flash[:notice] = 'Department master updated successfully'
	      	redirect_to diagnostic_master_new_department_master_path
    	else
      		render 'edit_department_master'
    	end
	end

	def delete_department_master
		@department_master=DepartmentMaster.find(params[:id])
		if @department_master.destroy
		   flash[:notice] = 'Department master deleted successfully!'
   		   redirect_to diagnostic_master_new_department_master_path
   		end			
	end

	def new_sub_department_master
		@sub_department_master=SubDepartmentMaster.new
	end

	def create_sub_department_master
		@sub_department_master=SubDepartmentMaster.new(params_sub_department_master)
		if @sub_department_master.save
		    flash[:notice] = 'Sub department master created successfully'
	      	redirect_to diagnostic_master_new_sub_department_master_path
    	else
      		render 'new_sub_department_master'
    	end
	end

	def edit_sub_department_master
		@sub_department_master=SubDepartmentMaster.find(params[:id])
	end

	def update_sub_department_master
		@sub_department_master=SubDepartmentMaster.find(params[:id])
		if @sub_department_master.update(params_sub_department_master)
		 	flash[:notice] = 'Sub department master updated successfully'
	      	redirect_to diagnostic_master_new_sub_department_master_path
    	else
      		render 'edit_sub_department_master'
    	end
	end

	def delete_sub_department_master
		@sub_department_master=SubDepartmentMaster.find(params[:id])
		if @sub_department_master.destroy
		   flash[:notice] = 'Sub department master deleted successfully!'
   		   redirect_to diagnostic_master_new_sub_department_master_path
   		end			
	end

	def new_test_master
		@test_master=TestMaster.new
	end

	def create_test_master
		@test_master=TestMaster.new(params_test_master)
		if @test_master.save
		    flash[:notice] = 'Test master created successfully'
	      	redirect_to diagnostic_master_new_test_master_path
    	else
      		render 'new_test_master'
    	end
	end

	def edit_test_master
		@test_master=TestMaster.find(params[:id])
	end

	def update_test_master
		@test_master=TestMaster.find(params[:id])
		if @test_master.update(params_test_master)
		 	flash[:notice] = 'Test master updated successfully'
	      	redirect_to diagnostic_master_new_test_master_path
    	else
      		render 'edit_test_master'
    	end
	end

	def delete_test_master
		@test_master=TestMaster.find(params[:id])
		if @test_master.destroy
		   flash[:notice] = 'Test master deleted successfully!'
   		   redirect_to diagnostic_master_new_test_master_path
   		end			
	end

	def new_test_property
		@test_property=TestProperty.new
	end

	def create_test_property
		@test_property=TestProperty.new(params_test_property)
		if @test_property.save
		    flash[:notice] = 'Test property created successfully'
	      	redirect_to diagnostic_master_new_test_property_path
    	else
      		render 'new_test_property'
    	end
	end

	def edit_test_property
		@test_property=TestProperty.find(params[:id])
	end

	def update_test_property
		@test_property=TestProperty.find(params[:id])
		if @test_property.update(params_test_property)
		 	flash[:notice] = 'Test property updated successfully'
	      	redirect_to diagnostic_master_new_test_property_path
    	else
      		render 'edit_test_property'
    	end
	end

	def delete_test_property
		@test_property=TestProperty.find(params[:id])
		if @test_property.destroy
		   flash[:notice] = 'Test property deleted successfully!'
   		   redirect_to diagnostic_master_new_test_property_path
   		end			
	end

	def new_package_master
		@package_master=PackageMaster.new
	end

	def create_package_master
		@package_master=PackageMaster.new(params_package_master)
		if @package_master.save
		    flash[:notice] = 'Package master created successfully'
	      	redirect_to diagnostic_master_new_package_master_path
    	else
      		render 'new_package_master'
    	end
	end

	def edit_package_master
		@package_master=PackageMaster.find(params[:id])
	end

	def update_package_master
		@package_master=PackageMaster.find(params[:id])
		if @package_master.update(params_package_master)
		 	flash[:notice] = 'Package master updated successfully'
	      	redirect_to diagnostic_master_new_package_master_path
    	else
      		render 'edit_package_master'
    	end
	end

	def delete_package_master
		@package_master=PackageMaster.find(params[:id])
		if @package_master.destroy
		   flash[:notice] = 'Package master deleted successfully!'
   		   redirect_to diagnostic_master_new_package_master_path
   		end			
	end

	def new_company_test_rate_master
		@company_test_rate_master=CompanyTestRateMaster.new
	end

	def create_company_test_rate_master
		@company_test_rate_master=CompanyTestRateMaster.new(params_company_test_rate_master)
		if @company_test_rate_master.save
		    flash[:notice] = 'Company test rate master created successfully'
	      	redirect_to diagnostic_master_new_company_test_rate_master_path
    	else
      		render 'new_company_test_rate_master'
    	end
	end

	def edit_company_test_rate_master
		@company_test_rate_master=CompanyTestRateMaster.find(params[:id])
	end

	def update_company_test_rate_master
		@company_test_rate_master=CompanyTestRateMaster.find(params[:id])
		if @company_test_rate_master.update(params_company_test_rate_master)
		 	flash[:notice] = 'Company test rate master updated successfully'
	      	redirect_to diagnostic_master_new_company_test_rate_master_path
    	else
      		render 'edit_company_test_rate_master'
    	end
	end

	def delete_company_test_rate_master
		@company_test_rate_master=CompanyTestRateMaster.find(params[:id])
		if @company_test_rate_master.destroy
		   flash[:notice] = 'Company test rate master deleted successfully!'
   		   redirect_to diagnostic_master_new_company_test_rate_master_path
   		end			
	end

	private
	def params_department_master
		params.require(:department_master).permit!
	end
	def params_sub_department_master
		params.require(:sub_department_master).permit!
	end
	def params_test_master
		params.require(:test_master).permit!
	end
	def params_test_property
		params.require(:test_property).permit!
	end
	def params_package_master
		params.require(:package_master).permit!
	end
	def params_company_test_rate_master
		params.require(:company_test_rate_master).permit!
	end
end
