class CrpActivity < ActiveRecord::Base
  self.primary_key = :activityID
  self.table_name = :crpActivities
  has_many :operations, :foreign_key => :activityID, :class_name => StaOperation
end
