class RamActivity < ActiveRecord::Base
  self.primary_key = :activityID
  self.table_name = :ramActivities
  has_many :assembly_lines, :foreign_key => :activityID, :class_name => RamAssemblyLine
end
