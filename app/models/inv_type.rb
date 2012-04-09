class InvType < ActiveRecord::Base
  self.primary_key = :typeID
  self.table_name = :InvTypes
  belongs_to :group, :foreign_key => :groupID, :class_name => InvGroup
  belongs_to :market_group, :foreign_key => :marketGroupID, :class_name => InvMarketGroup
  has_one :meta_type, :foreign_key => :parentTypeID, :class_name => InvMetaType
  has_many :reactions, :foreign_key => :reactionTypeID, :class_name => InvTypeReaction
  has_many :reaction_type, :foreign_key => :typeID, :class_name => InvTypeReaction
  has_many :make_from, :foreign_key => :typeID, :class_name => InvTypeMaterial
  has_many :used_to_make, :foreign_key => :materialTypeID, :class_name => InvTypeMaterial
  
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
end

# example: getting all contraband: 
# contraband = Invtype.find(:all, :include => 'contrabands', :conditions => "Invcontrabandtypes.standingLoss > 0")