class PlanetSchematicsTypeMap < ActiveRecord::Base
  self.primary_keys = [:schematicID, :typeID]
  self.table_name = :planetSchematicsTypeMap
end
