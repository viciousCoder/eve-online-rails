class MapRegion < ActiveRecord::Base
  self.primary_key = :regionID
  self.table_name = :mapRegions
  has_many :constellation_jumps, :foreign_key => :fromRegionID, :class_name => MapConstellationJump
  # has_and_belongs_to_many :adjacent_constellations, :join_table => :mapConstellationJumps, :class_name => MapConstellation, :foreign_key => :fromRegionID, :association_foreign_key => :toConstellationID
  has_many :constellations, :foreign_key => :regionID, :class_name => MapConstellation
  has_many :items, :foreign_key => :regionID, :class_name => MapDenormalize
end
