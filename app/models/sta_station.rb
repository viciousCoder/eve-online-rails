class StaStation < ActiveRecord::Base
  self.primary_key = :stationID
  self.table_name = :staStations
  has_many :agents, :foreign_key => :locationID, :class_name => AgtAgent
  has_many :assembly_lines, :foreign_key => :containerID, :class_name => RamAssemblyLine
  has_many :assembly_line_stations, :foreign_key => :stationID, :class_name => RamAssemblyLineStation
  belongs_to :operation, :foreign_key => :operationID, :class_name => StaOperation
  belongs_to :station_type, :foreign_key => :stationTypeID, :class_name => StaStationType
  belongs_to :corporation, :foreign_key => :corporationID, :class_name => CrpNpcCorporation
  belongs_to :solar_system, :foreign_key => :solarSystemID, :class_name => MapSolarSystem
  belongs_to :constellation, :foreign_key => :constellationID, :class_name => MapConstellation
  belongs_to :region, :foreign_key => :regionID, :class_name => MapRegion
end
