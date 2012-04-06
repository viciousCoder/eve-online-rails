class MapRegionJump < ActiveRecord::Base
  self.primary_keys = [:fromRegionID, :toRegionID]
  self.table_name = :mapRegionJumps
end
