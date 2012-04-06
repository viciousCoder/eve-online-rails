class CrpActivity < ActiveRecord::Base
  self.primary_key = :activityID
  self.table_name = :crpActivities
end
