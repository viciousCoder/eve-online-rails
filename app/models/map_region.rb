class MapRegion < ActiveRecord::Base
  self.primary_key = :regionID
  self.table_name = :mapRegions
  has_many :constellation_jumps, :foreign_key => :fromRegionID, :class_name => MapConstellationJump
  # has_and_belongs_to_many :adjacent_constellations, :join_table => :mapConstellationJumps, :class_name => MapConstellation, :foreign_key => :fromRegionID, :association_foreign_key => :toConstellationID
  has_many :constellations, :foreign_key => :regionID, :class_name => MapConstellation
  has_many :items, :foreign_key => :regionID, :class_name => MapDenormalize
  has_many :jumps, :foreign_key => :fromRegionID, :class_name => MapRegionJump
  has_and_belongs_to_many :adjacent_regions, :join_table => :mapRegionJumps, :class_name => MapRegion, :foreign_key => :fromRegionID, :association_foreign_key => :toRegionID
  belongs_to :faction, :foreign_key => :factionID, :class_name => ChrFaction
  has_one :denormalize, :foreign_key => :itemID, :class_name => MapDenormalize
  has_many :solar_systems, :foreign_key => :regionID, :class_name => MapSolarSystem
  has_many :assembly_line_stations, :foreign_key => :regionID, :class_name => RamAssemblyLineStation
  has_many :stations, :foreign_key => :regionID, :class_name => StaStation
end
