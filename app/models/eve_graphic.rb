class EveGraphic < ActiveRecord::Base
  self.primary_key = :graphicID
  self.table_name = :eveGraphics
  has_many :types, :foreign_key => :graphicID, :class_name => InvType
end
