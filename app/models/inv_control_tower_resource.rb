class InvControlTowerResource < ActiveRecord::Base
  self.primary_keys = [:controlTowerTypeID, :resourceTypeID]
  self.table_name = :InvControlTowerResources
  belongs_to :control_tower, :foreign_key => :controlTowerTypeID, :class_name => InvType
  belongs_to :resource, :foreign_key => :resourceTypeID, :class_name => InvType
  belongs_to :purpose, :foreign_key => :purpose, :class_name => InvControlTowerResourcePurpose
  belongs_to :faction, :foreign_key => :factionID, :class_name => ChrFaction
end
