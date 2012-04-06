class MapLandmark < ActiveRecord::Base
  self.primary_key = :landmarkID
  self.table_name = :mapLandmarks
end
