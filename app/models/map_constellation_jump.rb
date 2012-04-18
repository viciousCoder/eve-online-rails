class MapConstellationJump < ActiveRecord::Base
  self.primary_keys = [:fromConstellationID, :toConstellationID]
  self.table_name = :mapConstellationJumps
  # for the following four, could also use MapDenormalize for the :class_name
  belongs_to :from_region, :foreign_key => :fromRegionID, :class_name => MapRegion
  belongs_to :to_region, :foreign_key => :toRegionID, :class_name => MapRegion
  belongs_to :from_constellation, :foreign_key => :fromConstellationID, :class_name => MapConstellation
  belongs_to :to_constellation, :foreign_key => :toConstellationID, :class_name => MapConstellation
end
