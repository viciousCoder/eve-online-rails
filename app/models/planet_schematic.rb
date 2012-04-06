class PlanetSchematic < ActiveRecord::Base
  self.primary_key = :schematicID
  self.table_name = :planetSchematics
end
