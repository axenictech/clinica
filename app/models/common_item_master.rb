class CommonItemMaster < ActiveRecord::Base
  belongs_to :company_master
  belongs_to :pack_master
  belongs_to :purchase_tax_master
  belongs_to :sales_tax_master
  belongs_to :group_master
end
