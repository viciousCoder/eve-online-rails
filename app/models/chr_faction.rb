class ChrFaction < ActiveRecord::Base
  self.primary_key = :factionID
  self.table_name = 'chrFactions'
  # has_many :contrabands, :foreign_key => :factionID, :class_name => InvContrabandType
  belongs_to :race, :foreign_key => :raceIDs, :class_name => ChrRace
  belongs_to :home_system, :foreign_key => :solarSystemID, :class_name => MapSolarSystem
  belongs_to :corporation, :foreign_key => :corporationID, :class_name => CrpNpcCorporation
  belongs_to :militia, :foreign_key => :militiaCorporationID, :class_name => CrpNpcCorporation
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
  has_many :corporations, :foreign_key => :corporationID, :class_name => CrpNpcCorporation
end
