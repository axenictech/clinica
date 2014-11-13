class Appointment < ActiveRecord::Base
  belongs_to :DoctorMaster
  belongs_to :city
end
