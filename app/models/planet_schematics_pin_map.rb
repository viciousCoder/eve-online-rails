class PlanetSchematicsPinMap < ActiveRecord::Base
  self.primary_keys = [:schematicID, :pinTypeID]
  self.table_name = :planetSchematicsPinMap
end
