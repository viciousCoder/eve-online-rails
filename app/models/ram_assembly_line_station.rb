class RamAssemblyLineStation < ActiveRecord::Base
  self.primary_keys = [:stationID, :assemblyLineTypeID]
  self.table_name = :ramAssemblyLineStations
  belongs_to :station, :foreign_key => :stationID, :class_name => StaStation
  belongs_to :assembly_line_type, :foreign_key => :assemblyLineTypeID, :class_name => RamAssemblyLineType
  belongs_to :station_type, :foreign_key => :stationTypeID, :class_name => StaStationType
  belongs_to :owner, :foreign_key => :ownerID, :class_name => CrpNpcCorporation
  belongs_to :solar_system, :foreign_key => :solarSystemID, :class_name => MapSolarSystem
  belongs_to :region, :foreign_key => :regionID, :class_name => MapRegion
end
