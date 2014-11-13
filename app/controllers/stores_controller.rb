class StoresController < ApplicationController
	class StocksController < ApplicationController
	def new_common_opening_stock
		 @opening_stock=CommonOpeningStock.new
	end

	def create_common_opening_stock
	@opening_stock=CommonOpeningStock.new(params_common_opening_stock)
		if @opening_stock.save
			flash[:notice]="common opening stock added successfully"
			redirect_to stores_new_common_opening_stock_path
		else
			render 'new_common_opening_stock'
		end
	end
	end
	def update_common_opening_stock
	@opening_stock=CommonOpeningStock.find(params[:id])
		if  @opening_stock.update(params_common_opening_stock)
			flash[:notice]="common opening stock updated successfully"
			redirect_to stores_new_common_opening_stock_path
		else
			render 'new_common_opening_stock'
		end
	end
	def delete_common_opening_stock
	@opening_stock=CommonOpeningStock.find(params[:id])
		if @opening_stock.destroy
			flash[:notice]="common opening stock Deleted"
			redirect_to stores_new_common_opening_stock_path
		end
	end

	def new_purchase_master_store
		 @purchase_master=PurchaseMasterStore.new
	end

	def create_purchase_master_store
	 @purchase_master=PurchaseMasterStore.new( params_purchase_master_store)
		if @purchase_master.save
			flash[:notice]="purchase master added successfully"
			redirect_to stores_new_purchase_master_store_path
		else
			render 'new_purchase_master_store'
		end
	end
	end
	def update_purchase_master_store
	 @purchase_master=PurchaseMasterStore.find(params[:id])
		if   @purchase_master.update(params_purchase_master_store)
			flash[:notice]="purchase master updated successfully"
			redirect_to stores_new_purchase_master_store_path
		else
			render 'new_purchase_master_store'
		end
	end
	def delete_purchase_master_store
	 @purchase_master=PurchaseMasterStore.find(params[:id])
		if  @purchase_master.destroy
			flash[:notice]="purchase master Deleted"
			redirect_to stores_new_purchase_master_store_path
		end
	end

    def new_issue_counter
		 @issue_counter=IssueCounter.new
	end

	def create_issue_counter
	 @issue_counter=IssueCounter.new(params_issue_counter)
		if @issue_counter.save
			flash[:notice]="Issue Counter added successfully"
			redirect_to stores_new_issue_counter_path
		else
			render 'new_issue_counter'
		end
	end
	end
	def update_issue_counter
	@issue_counter=IssueCounter.find(params[:id])
		if  @issue_counter.update(params_issue_counter)
			flash[:notice]="Issue Counter updated successfully"
			redirect_to stores_new_issue_counter_path
		else
			render 'new_issue_counter'
		end
	end
	def delete_issue_counter
	@issue_counter=IssueCounter.find(params[:id])
		if  @issue_counter.destroy
			flash[:notice]="Issue Counter Deleted"
			redirect_to stores_new_issue_counter_path
		end
	end

  
	private
	def params_purchase_master_store
 		params.require(:purchase_master_store).permit!
	end
	def params_common_opening_stock
 		params.require(:common_opening_stock).permit!
	end
	def params_issue_counter	
 		params.require(:issue_counter).permit!
	end

end
