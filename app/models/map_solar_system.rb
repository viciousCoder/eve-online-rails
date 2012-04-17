class MapSolarSystem < ActiveRecord::Base
  self.primary_key = :solarSystemID
  self.table_name = :mapSolarSystems
  has_many :factions, :foreign_key => :solarSystemID, :class_name => ChrFaction
  has_many :corporations, :foreign_key => :corporationID, :class_name => CrpNpcCorporation
  has_many :items, :foreign_key => :solarSystemID, :class_name => MapDenormalize
  has_many :landmarks, :foreign_key => :locationID, :class_name => MapLandmark
end
