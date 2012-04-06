class AgtAgentType < ActiveRecord::Base
  self.primary_key = :agentTypeID
  self.table_name = :agtAgentTypes
  has_many :agents, :foreign_key => :agentTypeID, :class_name => AgtAgent
end
