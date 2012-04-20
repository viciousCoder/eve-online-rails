class StaStation < ActiveRecord::Base
  self.primary_key = :stationID
  self.table_name = :staStations
  has_many :agents, :foreign_key => :locationID, :class_name => AgtAgent
  has_many :assembly_lines, :foreign_key => :containerID, :class_name => RamAssemblyLine
end
