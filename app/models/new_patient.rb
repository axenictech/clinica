class NewPatient < ActiveRecord::Base
  belongs_to :FamilyMaster
  belongs_to :ShiftMaster
  belongs_to :DignosisMaster
  belongs_to :OccupationMaster
end
