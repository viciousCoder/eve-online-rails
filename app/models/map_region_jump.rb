class MapRegionJump < ActiveRecord::Base
  self.primary_keys = [:fromRegionID, :toRegionID]
  self.table_name = :mapRegionJumps
  belongs_to :from_region, :foreign_key => :fromRegionID, :class_name => MapDenormalize
  belongs_to :to_region, :foreign_key => :toRegionID, :class_name => MapDenormalize
end
