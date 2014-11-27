class PrescriptionController < ApplicationController
	def prescription
	
	end
	def search_patient
		@patient=IpdRegistration.where(ipd_no: params['search_patient']['ipdno']).take
	end
	def search_tablet

	end
	def add_tablet_prescription
		@selector=params["commit"]
	end
	def save_prescription
		flash[:notice]="Prescription saved and sent for print"
		redirect_to prescription_prescription_path
	end
	def add_group
	end
end
