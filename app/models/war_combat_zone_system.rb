class WarCombatZoneSystem < ActiveRecord::Base
  self.primary_key = :solarSystemID
  self.table_name = :warCombatZoneSystems
end
