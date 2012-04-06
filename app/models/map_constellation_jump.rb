class MapConstellationJump < ActiveRecord::Base
  self.primary_keys = [:fromConstellationID, :toConstellationID]
  self.table_name = :mapConstellationJumps
end
