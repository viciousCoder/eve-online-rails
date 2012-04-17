class MapLandmark < ActiveRecord::Base
  self.primary_key = :landmarkID
  self.table_name = :mapLandmarks
  belongs_to :location, :foreign_key => :locationID, :class_name => MapSolarSystem
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
end
