class MapLocationScene < ActiveRecord::Base
  self.primary_key = :locationID
  self.table_name = :mapLocationScenes
end
