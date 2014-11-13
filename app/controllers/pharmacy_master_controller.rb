class PharmacyMasterController < ApplicationController

	def new_purchase_tax_master
		@purchase_tax_master=PurchaseTaxMaster.new
	end

	def create_purchase_tax_master
		@purchase_tax_master=PurchaseTaxMaster.new(params_purchase_tax_master)
		if @purchase_tax_master.save
		    flash[:notice] = 'Purchase tax master created successfully'
	      	redirect_to pharmacy_master_new_purchase_tax_master_path
    	else
      		render 'new_purchase_tax_master'
    	end
	end

	def edit_purchase_tax_master
		@purchase_tax_master=PurchaseTaxMaster.find(params[:id])
	end

	def update_purchase_tax_master
		@purchase_tax_master=PurchaseTaxMaster.find(params[:id])
		if @purchase_tax_master.update(params_purchase_tax_master)
		 	flash[:notice] = 'Purchase tax master updated successfully'
	      	redirect_to pharmacy_master_new_purchase_tax_master_path
    	else
      		render 'edit_purchase_tax_master'
    	end
	end

	def delete_purchase_tax_master
		@purchase_tax_master=PurchaseTaxMaster.find(params[:id])
		if @purchase_tax_master.destroy
		   flash[:notice] = 'Purchase tax master deleted successfully!'
   		   redirect_to pharmacy_master_new_purchase_tax_master_path
   		end			
	end

	def new_supplier_master
		@supplier_master=SupplierMaster.new
	end

	def create_supplier_master
		@supplier_master=SupplierMaster.new(params_supplier_master)
		if @supplier_master.save
		    flash[:notice] = 'Supplier master created successfully'
	      	redirect_to pharmacy_master_new_supplier_master_path
    	else
      		render 'new_supplier_master'
    	end
	end

	def edit_supplier_master
		@supplier_master=SupplierMaster.find(params[:id])
	end

	def update_supplier_master
		@supplier_master=SupplierMaster.find(params[:id])
		if @supplier_master.update(params_supplier_master)
		 	flash[:notice] = 'Supplier master updated successfully'
	      	redirect_to pharmacy_master_new_supplier_master_path
    	else
      		render 'edit_supplier_master'
    	end
	end

	def delete_supplier_master
		@supplier_master=SupplierMaster.find(params[:id])
		if @supplier_master.destroy
		   flash[:notice] = 'Supplier master deleted successfully!'
   		   redirect_to pharmacy_master_new_supplier_master_path
   		end			
	end

	def new_uses_master
		@uses_master=UsesMaster.new
	end

	def create_uses_master
		@uses_master=UsesMaster.new(params_uses_master)
		if @uses_master.save
		    flash[:notice] = 'Uses master created successfully'
	      	redirect_to pharmacy_master_new_uses_master_path
    	else
      		render 'new_uses_master'
    	end
	end

	def edit_uses_master
		@uses_master=UsesMaster.find(params[:id])
	end

	def update_uses_master
		@uses_master=UsesMaster.find(params[:id])
		if @uses_master.update(params_uses_master)
		 	flash[:notice] = 'Uses master updated successfully'
	      	redirect_to pharmacy_master_new_uses_master_path
    	else
      		render 'edit_uses_master'
    	end
	end

	def delete_uses_master
		@uses_master=UsesMaster.find(params[:id])
		if @uses_master.destroy
		   flash[:notice] = 'Uses master deleted successfully!'
   		   redirect_to pharmacy_master_new_uses_master_path
   		end			
	end

	def new_pack_master
		@pack_master=PackMaster.new
	end

	def create_pack_master
		@pack_master=PackMaster.new(params_pack_master)
		if @pack_master.save
		    flash[:notice] = 'Pack master created successfully'
	      	redirect_to pharmacy_master_new_pack_master_path
    	else
      		render 'new_pack_master'
    	end
	end

	def edit_pack_master
		@pack_master=PackMaster.find(params[:id])
	end

	def update_pack_master
		@pack_master=PackMaster.find(params[:id])
		if @pack_master.update(params_pack_master)
		 	flash[:notice] = 'Pack master updated successfully'
	      	redirect_to pharmacy_master_new_pack_master_path
    	else
      		render 'edit_pack_master'
    	end
	end

	def delete_pack_master
		@pack_master=PackMaster.find(params[:id])
		if @pack_master.destroy
		   flash[:notice] = 'Pack master deleted successfully!'
   		   redirect_to pharmacy_master_new_pack_master_path
   		end			
	end

	def new_composition_master
		@composition_master=CompositionMaster.new
	end

	def create_composition_master
		@composition_master=CompositionMaster.new(params_composition_master)
		if @composition_master.save
		    flash[:notice] = 'Composition master created successfully'
	      	redirect_to pharmacy_master_new_composition_master_path
    	else
      		render 'new_composition_master'
    	end
	end

	def edit_composition_master
		@composition_master=CompositionMaster.find(params[:id])
	end

	def update_composition_master
		@composition_master=CompositionMaster.find(params[:id])
		if @composition_master.update(params_composition_master)
		 	flash[:notice] = 'Composition master updated successfully'
	      	redirect_to pharmacy_master_new_composition_master_path
    	else
      		render 'edit_composition_master'
    	end
	end

	def delete_composition_master
		@composition_master=CompositionMaster.find(params[:id])
		if @composition_master.destroy
		   flash[:notice] = 'Composition master deleted successfully!'
   		   redirect_to pharmacy_master_new_composition_master_path
   		end			
	end	

	def new_sales_tax_master
		@sales_tax_master=SalesTaxMaster.new
	end

	def create_sales_tax_master
		@sales_tax_master=SalesTaxMaster.new(params_sales_tax_master)
		if @sales_tax_master.save
		    flash[:notice] = 'Sales tax master created successfully'
	      	redirect_to pharmacy_master_new_sales_tax_master_path
    	else
      		render 'new_sales_tax_master'
    	end
	end

	def edit_sales_tax_master
		@sales_tax_master=SalesTaxMaster.find(params[:id])
	end

	def update_sales_tax_master
		@sales_tax_master=SalesTaxMaster.find(params[:id])
		if @sales_tax_master.update(params_sales_tax_master)
		 	flash[:notice] = 'Sales tax master updated successfully'
	      	redirect_to pharmacy_master_new_sales_tax_master_path
    	else
      		render 'edit_sales_tax_master'
    	end
	end

	def delete_sales_tax_master
		@sales_tax_master=SalesTaxMaster.find(params[:id])
		if @sales_tax_master.destroy
		   flash[:notice] = 'Sales tax master deleted successfully!'
   		   redirect_to pharmacy_master_new_sales_tax_master_path
   		end			
	end

	def new_item_master
		@item_master=ItemMaster.new
	end

	def create_item_master
		@item_master=ItemMaster.new(params_item_master)
		if @item_master.save
		    flash[:notice] = 'Item master created successfully'
	      	redirect_to pharmacy_master_new_item_master_path
    	else
      		render 'new_item_master'
    	end
	end

	def edit_item_master
		@item_master=ItemMaster.find(params[:id])
	end

	def update_item_master
		@item_master=ItemMaster.find(params[:id])
		if @item_master.update(params_item_master)
		 	flash[:notice] = 'Item master updated successfully'
	      	redirect_to pharmacy_master_new_item_master_path
    	else
      		render 'edit_item_master'
    	end
	end

	def delete_item_master
		@item_master=ItemMaster.find(params[:id])
		if @item_master.destroy
		   flash[:notice] = 'Item master deleted successfully!'
   		   redirect_to pharmacy_master_new_item_master_path
   		end			
	end

	def new_ledger_master
		@ledger_master=LedgerMaster.new
	end

	def create_ledger_master
		@ledger_master=LedgerMaster.new(params_ledger_master)
		if @ledger_master.save
		    flash[:notice] = 'Ledger master created successfully'
	      	redirect_to pharmacy_master_new_ledger_master_path
    	else
      		render 'new_ledger_master'
    	end
	end

	def edit_ledger_master
		@ledger_master=LedgerMaster.find(params[:id])
	end

	def update_ledger_master
		@ledger_master=LedgerMaster.find(params[:id])
		if @ledger_master.update(params_ledger_master)
		 	flash[:notice] = 'Ledger master updated successfully'
	      	redirect_to pharmacy_master_new_ledger_master_path
    	else
      		render 'edit_ledger_master'
    	end
	end

	def delete_ledger_master
		@ledger_master=LedgerMaster.find(params[:id])
		if @ledger_master.destroy
		   flash[:notice] = 'Ledger master deleted successfully!'
   		   redirect_to pharmacy_master_new_ledger_master_path
   		end			
	end

	def new_godown_master
		@godown_master=GodownMaster.new
	end

	def create_godown_master
		@godown_master=GodownMaster.new(params_godown_master)
		if @godown_master.save
		    flash[:notice] = 'Godown master created successfully'
	      	redirect_to pharmacy_master_new_godown_master_path
    	else
      		render 'new_godown_master'
    	end
	end

	def edit_godown_master
		@godown_master=GodownMaster.find(params[:id])
	end

	def update_godown_master
		@godown_master=GodownMaster.find(params[:id])
		if @godown_master.update(params_godown_master)
		 	flash[:notice] = 'Godown master updated successfully'
	      	redirect_to pharmacy_master_new_godown_master_path
    	else
      		render 'edit_godown_master'
    	end
	end

	def delete_godown_master
		@godown_master=GodownMaster.find(params[:id])
		if @godown_master.destroy
		   flash[:notice] = 'Godown master deleted successfully!'
   		   redirect_to pharmacy_master_new_godown_master_path
   		end			
	end

	def new_series_master
		@series_master=SeriesMaster.new
	end

	def create_series_master
		@series_master=SeriesMaster.new(params_series_master)
		if @series_master.save
		    flash[:notice] = 'Series master created successfully'
	      	redirect_to pharmacy_master_new_series_master_path
    	else
      		render 'new_series_master'
    	end
	end

	def edit_series_master
		@series_master=SeriesMaster.find(params[:id])
	end

	def update_series_master
		@series_master=SeriesMaster.find(params[:id])
		if @series_master.update(params_series_master)
		 	flash[:notice] = 'Series master updated successfully'
	      	redirect_to pharmacy_master_new_series_master_path
    	else
      		render 'edit_series_master'
    	end
	end

	def delete_series_master
		@series_master=SeriesMaster.find(params[:id])
		if @series_master.destroy
		   flash[:notice] = 'Series master deleted successfully!'
   		   redirect_to pharmacy_master_new_series_master_path
   		end			
	end

	private
	def params_purchase_tax_master
		params.require(:purchase_tax_master).permit!
	end
	def params_supplier_master
		params.require(:supplier_master).permit!
	end
	def params_uses_master
		params.require(:uses_master).permit!
	end
	def params_pack_master
		params.require(:pack_master).permit!
	end
	def params_composition_master
		params.require(:composition_master).permit!
	end
	def params_sales_tax_master
		params.require(:sales_tax_master).permit!
	end
	def params_item_master
		params.require(:item_master).permit!
	end
	def params_ledger_master
		params.require(:ledger_master).permit!
	end
	def params_godown_master
		params.require(:godown_master).permit!
	end
	def params_series_master
		params.require(:series_master).permit!
	end
end
