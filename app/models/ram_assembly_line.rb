class RamAssemblyLine < ActiveRecord::Base
  self.primary_key = :assemblyLineID
  self.table_name = :ramAssemblyLines
  belongs_to :assembly_line_type, :foreign_key => :assemblyLineTypeID, :class_name => RamAssemblyLineType
  # below could also be MapDenormalize (might want to do this for perf)
  belongs_to :station, :foreign_key => :containerID, :class_name => StaStation
  belongs_to :owner, :foreign_key => :ownerID, :class_name => CrpNpcCorporation
  belongs_to :activity, :foreign_key => :activityID, :class_name => RamActivity
end
