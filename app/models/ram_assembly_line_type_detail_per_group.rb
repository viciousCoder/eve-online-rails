class RamAssemblyLineTypeDetailPerGroup < ActiveRecord::Base
  self.primary_keys = [:assemblyLineTypeID, :groupID]
  self.table_name = :ramAssemblyLineTypeDetailPerGroup
end
