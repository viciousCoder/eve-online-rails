class MapLocationScene < ActiveRecord::Base
  self.primary_key = :locationID
  self.table_name = :mapLocationScenes
  belongs_to :location, :foreign_key => :locationID, :class_name => MapDenormalize
  belongs_to :graphic, :foreign_key => :graphicID, :class_name => EveGraphic
end
