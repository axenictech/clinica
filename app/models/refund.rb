class Refund < ActiveRecord::Base
  belongs_to :DoctorMaster
  belongs_to :city
end
