class RamAssemblyLineType < ActiveRecord::Base
  self.primary_key = :assemblyLineTypeID
  self.table_name = :ramAssemblyLineTypes
  has_many :assembly_lines, :foreign_key => :assemblyLineTypeID, :class_name => RamAssemblyLine
  has_many :assembly_line_stations, :foreign_key => :assemblyLineTypeID, :class_name => RamAssemblyLineStation
  belongs_to :activity, :foreign_key => :activityID, :class_name => RamActivity
  has_many :details_per_category, :foreign_key => :assemblyLineTypeID, :class_name => RamAssemblyLineTypeDetailPerCategory
  has_many :details_per_group, :foreign_key => :assemblyLineTypeID, :class_name => RamAssemblyLineTypeDetailPerGroup
  has_many :installation_type_content, :foreign_key => :assemblyLineTypeID, :class_name => RamInstallationTypeContent
end
