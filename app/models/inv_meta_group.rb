class InvMetaGroup < ActiveRecord::Base
  self.primary_key = :metaGroupID
  self.table_name = :InvMetaGroups
  has_many :meta_types, :foreign_key => :metaGroupID, :class_name => InvMetaType
end
