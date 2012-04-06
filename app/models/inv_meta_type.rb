class InvMetaType < ActiveRecord::Base
  self.primary_key = :typeID
  self.table_name = :invMetaTypes
  belongs_to :parent, :foreign_key => :parentTypeID, :class_name => InvType
  belongs_to :meta_group, :foreign_key => :metaGroupID, :class_name => InvMetaGroup
end
