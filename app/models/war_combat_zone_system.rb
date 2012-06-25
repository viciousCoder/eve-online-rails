class WarCombatZoneSystem < ActiveRecord::Base
  self.primary_key = :solarSystemID
  self.table_name = :warCombatZoneSystems
  belongs_to :solar_system, :foreign_key => :solarSystemID, :class_name => MapSolarSystem
  belongs_to :combat_zone, :foreign_key => :combatZoneID, :class_name => WarCombatZone
end
