class InvTypeReaction < ActiveRecord::Base
  self.primary_keys = [:reactionTypeID, :input, :typeID]
  self.table_name = :InvTypeReactions
  belongs_to :reaction_type, :foreign_key => :reactionTypeID, :class_name => InvType
  belongs_to :type, :foreign_key => :typeID, :class_name => InvType
end
