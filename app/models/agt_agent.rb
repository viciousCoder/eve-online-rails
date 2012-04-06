class AgtAgent < ActiveRecord::Base
  self.primary_key = :agentID
  self.table_name = :agtAgents
  belongs_to :division, :foreign_key => :divisionID, :class_name => CrpNpcDivision
  belongs_to :station, :foreign_key => :locationID, :class_name => StaStation
  belongs_to :corporation, :foreign_key => :corporationID, :class_name => CrpNpcCorporation
  belongs_to :type, :foreign_key => :agentTypeID, :class_name => AgtAgentType
  has_and_belongs_to_many :research_items, :join_table => :agtResearchAgents, :class_name => InvType, :foreign_key => :agentID, :association_foreign_key => :typeID
  has_one :inv_name, :foreign_key => :itemID, :class_name => InvName
  
  def name
    inv_name.itemName
  end
  
end
