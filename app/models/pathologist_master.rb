class PathologistMaster < ActiveRecord::Base
  belongs_to :city
  belongs_to :specialization
end
