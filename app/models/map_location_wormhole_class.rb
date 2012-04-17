class MapLocationWormholeClass < ActiveRecord::Base
  self.primary_key = :locationID
  self.table_name = :mapLocationWormholeClasses
  belongs_to :location, :foreign_key => :locationID, :class_name => MapDenormalize
end
