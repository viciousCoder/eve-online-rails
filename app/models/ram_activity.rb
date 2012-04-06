class RamActivity < ActiveRecord::Base
  self.primary_key = :activityID
  self.table_name = :ramActivities
end
