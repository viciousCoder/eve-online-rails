class RamAssemblyLineTypeDetailPerGroup < ActiveRecord::Base
  self.primary_keys = [:assemblyLineTypeID, :groupID]
  self.table_name = :ramAssemblyLineTypeDetailPerGroup
  belongs_to :assembly_line_type, :foreign_key => :assemblyLineTypeID, :class_name => RamAssemblyLineType
  belongs_to :group, :foreign_key => :groupID, :class_name => InvGroup
end
