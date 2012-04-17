class InvUniqueName < ActiveRecord::Base
  self.primary_key = :itemID
  self.table_name = :invUniqueNames
  belongs_to :item, :foreign_key => :itemID, :class_name => InvItem
  belongs_to :group, :foreign_key => :groupID, :class_name => InvGroup
end
