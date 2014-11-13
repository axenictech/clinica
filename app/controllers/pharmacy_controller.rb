class PharmacyController < ApplicationController

   def index

   end

   def new_credit_note
	@credit_note=PharmacyCreditNote.new
	end

	def create_credit_note
		@credit_note=PharmacyCreditNote.new(params_new_credit_note)
		if @credit_note.save
			flash[:notice]="Credit note added"
			redirect_to pharmacy_new_registration_path
		else
			render 'new_credit_note'
		end
	end

	def update_credit_note
		@credit_note=PharmacyCreditNote.find(params[:id])
		if @credit_note.update(params_new_credit_note)
			flash[:notice]="credit note updated successfully"
			redirect_to new_registration_path
		else
			render 'new_credit_note'
		end
	end
	def delete_credit_note
	@credit_note=PharmacyCreditNote.find(params[:id])
		if @credit_note.destroy
			flash[:notice]="Credit note deleted successfully"
			redirect_to new_registration_path
		else
			render 'new_credit_note'
		end
	end
	

	def new_debit_note
	  @debit_note #=PharmacyDebitNote.new
	end
	def create_debit_note
	@debit_note=PharmacyDebitNote.new(params_new_debit_note)
		if @debit_note.save
			flash[:notice]="Debit Note added successfully"
			redirect_to pharmacy_new_debit_note_path
		else
			render 'new_debit_note'
		end
	end
	def update_debit_note
	@debit_note=PharmacyDebitNote.find(params[:id])
		if @debit_note.update(params_new_debit_note)
			flash[:notice]="Debit note updated successfully"
			redirect_to pharmacy_new_debit_note_path
		else
			render 'new_debit_note'
		end
	end
	def delete_debit_note
	@debit_note=PharmacyDebitNote.find(params[:id])
		if @debit_note.destroy
			flash[:notice]="Debit note deleted successfully"
			redirect_to pharmacy_new_debit_note_path
		else
			render 'new_debit_note'
		end
	end


	def new_expiray_report
	 @debit_note
	end
	def search_expiray_report
	 @debit_note
	end

	def new_opening_stock
		 @debit_note
	end
	def search_opening_stock
		 @debit_note
	end


	def new_purchase_challan
	 @purchase_challan=PharmacyPurchaseChallan.new
	end
	def create_purchase_challan
	@purchase_challan=PharmacyPurchaseChallan.new(params_purchase_challan)
		if @purchase_challan.save
			flash[:notice]="Purchase Challan added successfully"
			redirect_to pharmacy_new_purchase_challan_path
		else
			render 'new_purchase_challan'
		end
	end
	def update_purchase_challan
	@purchase_challan=PharmacyPurchaseChallan.find(params[:id])
		if @purchase_challan.update(params_purchase_challan)
			flash[:notice]="Purchase Challan updated successfully"
			redirect_to pharmacy_new_purchase_challan_path
		else
			render 'new_purchase_challan'
		end
	end
	def delete_purchase_challan
	@purchase_challan=PharmacyPurchaseChallan.find(params[:id])
		if @purchase_challan.destroy
			flash[:notice]="Purchase Challan deleted successfully"
			redirect_to pharmacy_new_purchase_challan_path
		else
			render 'new_purchase_challan'
		end
	end


def new_purchase_master
	 @purchase_master=PharmacyPurchaseMaster.new
	end
	def create_purchase_master
	@purchase_master=PharmacyPurchaseMaster.new(params_purchase_master)
		if @purchase_master.save
			flash[:notice]="Purchase Challan added successfully"
			redirect_to pharmacy_new_purchase_master_path
		else
			render 'new_purchase_master'
		end
	end
	def update_purchase_master
	@purchase_master=PharmacyPurchaseMaster.find(params[:id])
		if @purchase_master.update(params_purchase_master)
			flash[:notice]="Purchase Challan updated successfully"
			redirect_to pharmacy_new_purchase_master_path
		else
			render 'new_purchase_master'
		end
	end
	def delete_purchase_master
	@purchase_master=PharmacyPurchaseMaster.find(params[:id])
		if @purchase_master.destroy
			flash[:notice]="Purchase Challan deleted successfully"
			redirect_to pharmacy_new_purchase_master_path
		else
			render 'new_purchase_master'
		end
	end




	def new_pharmacy_sales_master
	 @sales_master=PharmacySalesMaster.new
	end
	def create_pharmacy_sales_master
	@sales_master=PharmacySalesMaster.new(params_pharmacy_sales_master)
		if @sales_master.save
			flash[:notice]="Sales entry added successfully"
			redirect_to pharmacy_new_pharmacy_sales_master_path
		else
			render 'new_pharmacy_sales_master'
		end
	end
	def update_pharmacy_sales_master
	@sales_master=PharmacySalesMaster.find(params[:id])
		if @sales_master.update(params_pharmacy_sales_master)
			flash[:notice]="Sales entry updated successfully"
			redirect_to pharmacy_new_pharmacy_sales_master_path
		else
			render 'new_pharmacy_sales_master'
		end
	end
	def delete_pharmacy_sales_master
	@sales_master=PharmacySalesMaster.find(params[:id])
		if @sales_master.destroy
			flash[:notice]="Sales entry deleted successfully"
			redirect_to pharmacy_new_pharmacy_sales_master_path
		else
			render 'new_pharmacy_sales_master'
		end
	end

	
	def new_stock_transfer_godown_sale
	 @stock_transfer#=PharmacyStockTransfer.new
	end
	def create_stock_transfer_godown_sale
	@stock_transfer=PharmacyStockTransfer.new(params_stock_transfer_godown_sale)
		if @stock_transfer.save
			flash[:notice]="Stock transfered successfully"
			redirect_to pharmacy_new_stock_transfer_godown_sale_path
		else
			render 'new_stock_transfer_godown_sale'
		end
	end
	def update_stock_transfer_godown_sale
	@stock_transfer=PharmacyStockTransfer.find(params[:id])
		if @stock_transfer.update(params_stock_transfer_godown_sale)
			flash[:notice]="Stock  updated successfully"
			redirect_to pharmacy_new_stock_transfer_godown_sale_path
		else
			render 'new_stock_transfer_godown_sale'
		end
	end
	def delete_stock_transfer_godown_sale
	@stock_transfer=PharmacyStockTransfer.find(params[:id])
		if @stock_transfer.destroy
			flash[:notice]="Stock transfer entry deleted successfully"
			redirect_to pharmacy_new_stock_transfer_godown_sale_path
		else
			render 'new_stock_transfer_godown_sale'
		end
	end


	def new_sale_return
	 @sale_return=SaleReturn.new
	end
	def create_sale_return
	 @sale_return=SaleReturn.new(params_sale_return)
		if  @sale_return.save
			flash[:notice]="Sales returned successfully"
			redirect_to pharmacy_new_sale_return_path
		else
			render 'new_sale_return'
		end
	end
	def update_sale_return
	 @sale_return=SaleReturn.find(params[:id])
		if  @sale_return.update(params_sale_return)
			flash[:notice]="Sales updated successfully"
			redirect_to pharmacy_new_sale_return_path
		else
			render 'new_sale_return'
		end
	end
	def delete_sale_return
	 @sale_return=SaleReturn.find(params[:id])
		if  @sale_return.destroy
			flash[:notice]="Sales return deleted successfully"
			redirect_to pharmacy_new_sale_return_path
		else
			render 'new_sale_return'
		end
	end

private
	def params_new_credit_note
 		params.require(:credit_note).permit!
	end
	def params_new_debit_note
 		params.require(:debit_note).permit!
	end
	def params_purchase_challan
 		params.require(:purchase_challan).permit!
	end
	def params_purchase_master
 		params.require(:purchase_master).permit!
	end
	def params_pharmacy_sales_master
 		params.require(:sales_master).permit!
	end

	def params_stock_transfer_godown_sale
 		params.require(:stock_transfer).permit!
	end
	def params_sale_return
 		params.require(:sale_return).permit!
	end
	
end
