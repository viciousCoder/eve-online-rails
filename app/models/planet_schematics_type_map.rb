class PlanetSchematicsTypeMap < ActiveRecord::Base
  self.primary_keys = [:schematicID, :typeID]
  self.table_name = :planetSchematicsTypeMap
  belongs_to :schematic, :foreign_key => :schematicID, :class_name => PlanetSchematic
  belongs_to :type, :foreign_key => :typeID, :class_name => InvType
end
