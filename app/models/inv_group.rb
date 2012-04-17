class InvGroup < ActiveRecord::Base
  self.primary_key = :groupID
  self.table_name = :InvGroups
  belongs_to :category, :foreign_key => :categoryID, :class_name => InvCategory
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
  has_many :types, :foreign_key => :groupID, :class_name => InvType
  has_many :unique_names, :foreign_key => :groupID, :class_name => InvUniqueName
  has_many :items, :foreign_key => :groupID, :class_name => MapDenormalize
end
