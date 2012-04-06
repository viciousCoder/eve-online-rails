class MapDenormalize < ActiveRecord::Base
  self.primary_key = :itemID
  self.table_name = :mapDenormalize
end
