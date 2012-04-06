class MapRegion < ActiveRecord::Base
  self.primary_key = :regionID
  self.table_name = :mapRegions
end
