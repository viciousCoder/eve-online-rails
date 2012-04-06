class RamAssemblyLineStation < ActiveRecord::Base
  self.primary_keys = [:stationID, :assemblyLineTypeID]
  self.table_name = :ramAssemblyLineStations
end
