class RamAssemblyLineTypeDetailPerCategory < ActiveRecord::Base
  self.primary_keys = [:assemblyLineTypeID, :categoryID]
  self.table_name = :ramAssemblyLineTypeDetailPerCategory
end
