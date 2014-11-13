class BedMaster < ActiveRecord::Base
  belongs_to :floor_master
  belongs_to :ward_master
end
