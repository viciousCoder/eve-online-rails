class WarCombatZone < ActiveRecord::Base
  self.primary_key = :combatZoneID
  self.table_name = :warCombatZones
  belongs_to :faction, :foreign_key => :factionID, :class_name => ChrFaction
  belongs_to :center_system, :foreign_key => :centerSystemID, :class_name => MapSolarSystem
  has_many :combat_zone_solar_systems, :foreign_key => :combatZoneID, :class_name => WarCombatZoneSystem
  has_many :solar_systems, :foreign_key => :combatZoneID, :through => :combat_zone_solar_systems
end
