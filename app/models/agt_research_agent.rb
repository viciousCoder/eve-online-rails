class AgtResearchAgent < ActiveRecord::Base
  self.primary_keys = [:agentID, :typeID]
  self.table_name = :agtResearchAgents
  belongs_to :agent, :foreign_key => :agentID, :class_name => AgtAgent
  belongs_to :item, :foreign_key => :typeID, :class_name => InvType
end
