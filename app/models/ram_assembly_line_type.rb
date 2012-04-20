class RamAssemblyLineType < ActiveRecord::Base
  self.primary_key = :assemblyLineTypeID
  self.table_name = :ramAssemblyLineTypes
  has_many :assembly_lines, :foreign_key => :assemblyLineTypeID, :class_name => RamAssemblyLine
end
