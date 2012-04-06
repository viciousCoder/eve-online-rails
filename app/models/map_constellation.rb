class MapConstellation < ActiveRecord::Base
  self.primary_key = :constellationID
  self.table_name = :mapConstellations
end
