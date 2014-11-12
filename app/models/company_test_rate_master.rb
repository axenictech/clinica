class CompanyTestRateMaster < ActiveRecord::Base
  belongs_to :test_master
  belongs_to :company_master
end
