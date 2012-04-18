class MapRegionJump < ActiveRecord::Base
  self.primary_keys = [:fromRegionID, :toRegionID]
  self.table_name = :mapRegionJumps
  # for the following two, could also use MapDenormalize for :class_name
  belongs_to :from_region, :foreign_key => :fromRegionID, :class_name => MapRegion
  belongs_to :to_region, :foreign_key => :toRegionID, :class_name => MapRegion
end
