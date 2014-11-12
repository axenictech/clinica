class ItemMaster < ActiveRecord::Base
  belongs_to :uses_master
  belongs_to :composition_master
  belongs_to :pack_master
  belongs_to :purchase_tax_master
  belongs_to :sales_tax_master
end
