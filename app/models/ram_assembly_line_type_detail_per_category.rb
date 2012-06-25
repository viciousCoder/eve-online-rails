class RamAssemblyLineTypeDetailPerCategory < ActiveRecord::Base
  self.primary_keys = [:assemblyLineTypeID, :categoryID]
  self.table_name = :ramAssemblyLineTypeDetailPerCategory
  belongs_to :assembly_line_type, :foreign_key => :assemblyLineTypeID, :class_name => RamAssemblyLineType
  belongs_to :category, :foreign_key => :categoryID, :class_name => InvCategory
end
