class MapSolarSystemJump < ActiveRecord::Base
  self.primary_key = [:fromSolarSystemID, :toSolarSystemID]
  self.table_name = :mapSolarSystemJumps
end
