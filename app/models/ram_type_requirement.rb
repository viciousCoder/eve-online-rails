class RamTypeRequirement < ActiveRecord::Base
  self.primary_keys = [:typeID, :activityID, :requiredTypeID]
  self.table_name = :ramTypeRequirements
end
