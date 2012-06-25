class RamTypeRequirement < ActiveRecord::Base
  self.primary_keys = [:typeID, :activityID, :requiredTypeID]
  self.table_name = :ramTypeRequirements
  belongs_to :type, :foreign_key => :typeID, :class_name => InvType
  belongs_to :activity, :foreign_key => :activityID, :class_name => RamActivity
  belongs_to :required_type, :foreign_key => :requiredTypeID, :class_name => InvType
end
