class InvTypeReaction < ActiveRecord::Base
  self.primary_keys = [:reactionTypeID, :input, :typeID]
  self.table_name = :InvTypeReactions
  belongs_to :reaction, :foreign_key => :reactionTypeID, :class_name => InvType
  belongs_to :invtype, :foreign_key => :typeID, :class_name => InvType
end
