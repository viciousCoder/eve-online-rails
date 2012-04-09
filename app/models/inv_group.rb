class InvGroup < ActiveRecord::Base
  self.primary_key = :groupID
  self.table_name = :InvGroups
  belongs_to :category, :foreign_key => :categoryID, :class_name => InvCategory
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
end
