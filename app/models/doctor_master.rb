class DoctorMaster < ActiveRecord::Base
  belongs_to :city
  belongs_to :shift_master
  belongs_to :specialization
end
