class MapConstellation < ActiveRecord::Base
  self.primary_key = :constellationID
  self.table_name = :mapConstellations
  has_many :jumps, :foreign_key => :fromConstellationID, :class_name => MapConstellationJump
  has_and_belongs_to_many :adjacent_constellations, :join_table => :mapConstellationJumps, :class_name => MapConstellation, :foreign_key => :fromConstellationID, :association_foreign_key => :toConstellationID
  belongs_to :region, :foreign_key => :regionID, :class_name => MapRegion
  belongs_to :faction, :foreign_key => :factionID, :class_name => ChrFaction
  has_many :items, :foreign_key => :constellationID, :class_name => MapDenormalize
end
