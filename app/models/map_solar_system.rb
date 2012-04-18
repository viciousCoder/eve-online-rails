class MapSolarSystem < ActiveRecord::Base
  self.primary_key = :solarSystemID
  self.table_name = :mapSolarSystems
  has_many :factions, :foreign_key => :solarSystemID, :class_name => ChrFaction
  has_many :corporations, :foreign_key => :solarSystemID, :class_name => CrpNpcCorporation
  has_many :items, :foreign_key => :solarSystemID, :class_name => MapDenormalize
  has_many :landmarks, :foreign_key => :locationID, :class_name => MapLandmark
  has_many :jumps, :foreign_key => :fromSolarSystemID, :class_name => MapSolarSystemJump
  has_and_belongs_to_many :adjacent_solar_systems, :join_table => :mapSolarSystemJumps, :class_name => MapSolarSystem, :foreign_key => :fromSolarSystemID, :association_foreign_key => :toSolarSystemID
  has_one :denormalize, :foreign_key => :solarSystemID, :class_name => MapDenormalize
  belongs_to :region, :foreign_key => :regionID, :class_name => MapRegion
  belongs_to :constellation, :foreign_key => :constellationID, :class_name => MapConstellation
  belongs_to :faction, :foreign_key => :factionID, :class_name => ChrFaction
  belongs_to :sun_type, :foreign_key => :sunTypeID, :class_name => InvType
end