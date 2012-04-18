class PlanetSchematicsPinMap < ActiveRecord::Base
  self.primary_keys = [:schematicID, :pinTypeID]
  self.table_name = :planetSchematicsPinMap
  belongs_to :schematic, :foreign_key => :schematicID, :class_name => PlanetSchematic
  belongs_to :type, :foreign_key => :pinTypeID, :class_name => InvType
end
