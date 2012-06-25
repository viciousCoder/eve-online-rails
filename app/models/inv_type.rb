class InvType < ActiveRecord::Base
  self.primary_key = :typeID
  self.table_name = :InvTypes  
  has_and_belongs_to_many :research_agents, :join_table => :agtResearchAgents, :class_name => AgtAgent, :foreign_key => :typeID, :association_foreign_key => :agentID
  has_many :bloodlines, :foreign_key => :shipTypeID, :class_name => ChrBloodline
  has_and_belongs_to_many :research_corporations, :join_table => :crpNpcCorporationResearchFields, :class_name => CrpNpcCorporation, :foreign_key => :skillID, :association_foreign_key => :corporationID
  has_and_belongs_to_many :trade_corporations, :join_table => :crpNpcCorporationTrades, :class_name => CrpNpcCorporation, :foreign_key => :typeID, :association_foreign_key => :corporationID
  has_many :certificate_recommendations, :foreign_key => :shipTypeID, :class_name => CrtRecommendation
  has_and_belongs_to_many :certificate_dependencies, :join_table => :crtRelationships, :class_name => CrtCertificate, :foreign_key => :parentTypeID, :association_foreign_key => :childID
  has_many :type_attributes, :foreign_key => :typeID, :class_name => DgmTypeAttribute
  has_and_belongs_to_many :attributes, :join_table => :dgmTypeAttributes, :class_name => DgmAttributeType, :foreign_key => :typeID, :association_foreign_key => :attributeID
  has_many :type_effects, :foreign_key => :typeID, :class_name => DgmTypeEffect
  has_and_belongs_to_many :effects, :join_table => :dgmTypeEffects, :class_name => DgmEffect, :foreign_key => :typeID, :association_foreign_key => :effectID
  has_one :blueprint_data, :foreign_key => :blueprintTypeID, :class_name => InvBlueprintType
  has_many :parent_blueprints, :foreign_key => :parentBlueprintTypeID, :class_name => InvBlueprintType
  has_one :product_blueprint_data, :foreign_key => :productTypeID, :class_name => InvBlueprintType
  has_many :contrabands, :foreign_key => :typeID, :class_name => InvContrabandType
  has_and_belongs_to_many :contraband_for_factions, :join_table => :invContrabandTypes, :class_name => ChrFaction, :foreign_key => :typeID, :association_foreign_key => :factionID
  has_many :control_tower_requirements, :foreign_key => :controlTowerTypeID, :class_name => InvControlTowerResource
  has_and_belongs_to_many :control_tower_resources, :join_table => :invControlTowerResources, :class_name => InvType, :foreign_key => :controlTowerTypeID, :association_foreign_key => :resourceTypeID
  has_many :required_for_control_tower, :foreign_key => :resourceTypeID, :class_name => InvControlTowerResource
  has_and_belongs_to_many :resource_for_control_towers, :join_table => :invControlTowerResources, :class_name => InvType, :foreign_key => :resourceTypeID, :association_foreign_key => :controlTowerTypeID
  has_many :items, :foreign_key => :typeID, :class_name => InvItem
  has_one :meta_type, :foreign_key => :typeID, :class_name => InvMetaType
  has_many :meta_children, :foreign_key => :parentTypeID, :class_name => InvMetaType
  has_and_belongs_to_many :meta_types, :join_table => :invMetaTypes, :class_name => InvType, :foreign_key => :parentTypeID, :association_foreign_key => :typeID
  has_many :material, :foreign_key => :typeID, :class_name => InvTypeMaterial
  has_many :material_for, :foreign_key => :materialTypeID, :class_name => InvTypeMaterial
  has_and_belongs_to_many :materials, :join_table => :invTypeMaterials, :class_name => InvType, :foreign_key => :typeID, :association_foreign_key => :materialTypeID
  has_and_belongs_to_many :materials_for, :join_table => :invTypeMaterials, :class_name => InvType, :foreign_key => :materialTypeID, :association_foreign_key => :typeID
  has_many :reactions, :foreign_key => :reactionTypeID, :class_name => InvTypeReaction
  has_many :type_reactions, :foreign_key => :typeID, :class_name => InvTypeReaction
  has_many :reactant_reactions, :foreign_key => :typeID, :class_name => InvTypeReaction, :conditions => 'input = 1'
  has_many :product_reactions, :foreign_key => :typeID, :class_name => InvTypeReaction, :conditions => 'input = 0'
  has_and_belongs_to_many :used_for_reaction_types, :join_table => :invTypeReactions, :class_name => InvType, :foreign_key => :typeID, :association_foreign_key => :reactionTypeID
  has_and_belongs_to_many :reactant_for_reaction_types, :join_table => :invTypeReactions, :class_name => InvType, :foreign_key => :typeID, :association_foreign_key => :reactionTypeID, :conditions => 'input = 1'
  has_and_belongs_to_many :product_for_reaction_types, :join_table => :invTypeReactions, :class_name => InvType, :foreign_key => :typeID, :association_foreign_key => :reactionTypeID, :conditions => 'input = 0'
  has_and_belongs_to_many :reaction_product_types, :join_table => :invTypeReactions, :class_name => InvType, :foreign_key => :reactionTypeID, :association_foreign_key => :typeID, :conditions => 'input = 0'
  has_and_belongs_to_many :reaction_reactant_types, :join_table => :invTypeReactions, :class_name => InvType, :foreign_key => :reactionTypeID, :association_foreign_key => :typeID, :conditions => 'input = 1'
  belongs_to :group, :foreign_key => :groupID, :class_name => InvGroup
  belongs_to :graphic, :foreign_key => :graphicID, :class_name => EveGraphic
  belongs_to :market_group, :foreign_key => :marketGroupID, :class_name => InvMarketGroup
  belongs_to :race, :foreign_key => :raceID, :class_name => ChrRace
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
  has_many :denormalized_items, :foreign_key => :typeID, :class_name => MapDenormalize
  has_many :sun_solar_systems, :foreign_key => :sunTypeID, :class_name => MapSolarSystem
  has_many :schematic_pin_maps, :foreign_key => :pinTypeID, :class_name => PlanetSchematicsPinMap
  has_and_belongs_to_many :installable_schematics, :join_table => :planetSchematicsPinMap, :class_name => PlanetSchematic, :foreign_key => :pinTypeID, :association_foreign_key => :schematicID
  has_many :schematic_type_maps, :foreign_key => :typeID, :class_name => PlanetSchematicsTypeMap
  has_many :input_for_schematics, :foreign_key => :typeID, :class_name => PlanetSchematicsTypeMap, :conditions => 'isInput = 1'
  has_many :output_for_schematics, :foreign_key => :typeID, :class_name => PlanetSchematicsTypeMap, :conditions => 'isInput = 0'
  has_many :assembly_line_content, :foreign_key => :installationTypeID, :class_name => RamInstallationTypeContent
  has_many :requirements, :foreign_key => :typeID, :class_name => RamTypeRequirement
  has_many :required_for, :foreign_key => :requiredTypeID, :class_name => RamTypeRequirement
end

# example: getting all contraband: 
# contraband = Invtype.find(:all, :include => 'contrabands', :conditions => "Invcontrabandtypes.standingLoss > 0")