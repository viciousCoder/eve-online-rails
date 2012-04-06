class ChrAttribute < ActiveRecord::Base
  self.primary_key = :attributeID
  self.table_name = :chrAttributes
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
end
