class MoneyReciept < ActiveRecord::Base
  belongs_to :DepartmentMaster
  belongs_to :DoctorMaster
  belongs_to :ServiceMaster
end
