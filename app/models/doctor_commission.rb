class DoctorCommission < ActiveRecord::Base
	self.inheritance_column = nil
	belongs_to :doctor_master
end
