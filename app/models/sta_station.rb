class StaStation < ActiveRecord::Base
  self.primary_key = :stationID
  self.table_name = :staStations
  has_many :agents, :foreign_key => :locationID, :class_name => AgtAgent
end
