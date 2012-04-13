class InvMetaType < ActiveRecord::Base
  self.primary_key = :typeID
  self.table_name = :invMetaTypes
  belongs_to :inv_type, :foreign_key => :typeID, :class_name => InvType
  belongs_to :meta_group, :foreign_key => :metaGroupID, :class_name => InvMetaGroup
  belongs_to :parent_type, :foreign_key => :parentTypeID, :class_name => InvType
end
