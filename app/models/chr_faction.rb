class ChrFaction < ActiveRecord::Base
  self.primary_key = :factionID
  self.table_name = 'chrFactions'
  belongs_to :race, :foreign_key => :raceIDs, :class_name => ChrRace
  belongs_to :home_system, :foreign_key => :solarSystemID, :class_name => MapSolarSystem
  belongs_to :corporation, :foreign_key => :corporationID, :class_name => CrpNpcCorporation
  belongs_to :militia, :foreign_key => :militiaCorporationID, :class_name => CrpNpcCorporation
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
  has_many :corporations, :foreign_key => :factionID, :class_name => CrpNpcCorporation
  has_many :contrabands, :foreign_key => :factionID, :class_name => InvContrabandType
  has_and_belongs_to_many :contraband_types, :join_table => :invContrabandTypes, :class_name => InvType, :foreign_key => :factionID, :association_foreign_key => :typeID
  has_many :control_tower_resources, :foreign_key => :factionID, :class_name => InvControlTowerResource
  has_many :constellations, :foreign_key => :factionID, :class_name => MapConstellation
  has_many :regions, :foreign_key => :factionID, :class_name => MapRegion
  has_many :solar_systems, :foreign_key => :factionID, :class_name => MapSolarSystem
end