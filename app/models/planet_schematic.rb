class PlanetSchematic < ActiveRecord::Base
  self.primary_key = :schematicID
  self.table_name = :planetSchematics
  has_many :pin_maps, :foreign_key => :schematicID, :class_name => PlanetSchematicsPinMap
  has_and_belongs_to_many :facilities, :join_table => :planetSchematicsPinMap, :class_name => InvType, :foreign_key => :schematicID, :association_foreign_key => :pinTypeID
  has_many :type_maps, :foreign_key => :schematicID, :class_name => PlanetSchematicsTypeMap
  has_many :inputs, :foreign_key => :schematicID, :class_name => PlanetSchematicsTypeMap, :conditions => "isInput = 1"
  has_many :outputs, :foreign_key => :schematicID, :class_name => PlanetSchematicsTypeMap, :conditions => "isInput = 0"
end
