class LabController < ApplicationController
	
	def new
		 @lab_case=CaseEntry.new
	end

	def lab_case_create
	     @lab_case=CaseEntry.new(lab_case_params)
        if @lab_case.save
      		 flash[:notice] = 'Lab CaseEntry created successfully'
  	   		 redirect_to labs_new_path
        else
          render 'new'
      end
    end

    def edit_lab_case
    	 @lab_case = CaseEntry.find(params[:id])
    end

    def update_lab_case
    	 @lab_case = CaseEntry.find(params[:id])

    	  if @lab_case.update(lab_case_params)
            flash[:notice] ='Lab case updated successfully!'
            redirect_to labs_new_path
          else
           render 'new'
         end
    end


	def destroy_lab_case
		@lab_case = CaseEntry.find(params[:id])
        if@lab_case.destroy
		      flash[:notice] = 'Lab case  deleted successfully!'
		       redirect_to labs_new_path 
   		 end
	end


	def test_cancellation
		 @test=TestCancellation.new
	end

	def test_cancellation_create
	     @test=TestCancellation.new(test_cancellation_params)
        if @test.save
      		 flash[:notice] = 'Lab test cancellation created successfully'
  	   		 redirect_to labs_test_cancellation_path
        else
          render ' test_cancellation'
      end
    end

    def edit_test_cancellation
    	 @test = TestCancellation.find(params[:id])
    end

    def update_lab_case
    	 @test = TestCancellation.find(params[:id])

    	  if @test.update(test_cancellation_params)
            flash[:notice] ='Lab  test cancellation updated successfully!'
            redirect_to labs_test_cancellation_path
          else
           render 'test_cancellation'
         end
    end


	def destroy_lab_case
		@test=TestCancellation.find(params[:id])
        if@test.destroy
		      flash[:notice] = 'Lab test cancellation deleted successfully!'
		       redirect_to labs_test_cancellation_path 
   		 end
	end


	private

	def lab_case_params
			params.require(:doctor_prescription).permit!
	end

	def  test_cancellation
		  params.require(:test_cancellation).permit!
	end
end
