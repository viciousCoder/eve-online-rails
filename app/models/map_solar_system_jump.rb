class MapSolarSystemJump < ActiveRecord::Base
  self.primary_key = [:fromSolarSystemID, :toSolarSystemID]
  self.table_name = :mapSolarSystemJumps
  # for the following six, could also use MapDenormalize as the :class_name
  belongs_to :from_region, :foreign_key => :fromRegionID, :class_name => MapRegion
  belongs_to :to_region, :foreign_key => :toRegionID, :class_name => MapRegion
  belongs_to :from_constellation, :foreign_key => :fromConstellationID, :class_name => MapConstellation
  belongs_to :to_constellation, :foreign_key => :toConstellationID, :class_name => MapConstellation
  belongs_to :from_solar_system, :foreign_key => :fromSolarSystemID, :class_name => MapSolarSystem
  belongs_to :to_solar_system, :foreign_key => :toSolarSystemID, :class_name => MapSolarSystem
end
