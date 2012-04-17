class MapJump < ActiveRecord::Base
  self.primary_key = :stargateID
  self.table_name = :mapJumps
  belongs_to :stargate, :foreign_key => :stargateID, :class_name => MapDenormalize
  belongs_to :celestial, :foreign_key => :celestialID, :class_name => MapDenormalize
end
