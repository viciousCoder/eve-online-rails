class MapDenormalize < ActiveRecord::Base
  self.primary_key = :itemID
  self.table_name = :mapDenormalize
  belongs_to :item, :foreign_key => :itemID, :class_name => InvItem
  belongs_to :type, :foreign_key => :typeID, :class_name => InvType
  belongs_to :group, :foreign_key => :groupID, :class_name => InvGroup
  belongs_to :solar_system, :foreign_key => :solarSystemID, :class_name => MapSolarSystem
  belongs_to :constellation, :foreign_key => :constellationID, :class_name => MapConstellation
  belongs_to :region, :foreign_key => :regionID, :class_name => MapRegion
  belongs_to :orbit, :foreign_key => :orbitID, :class_name => MapDenormalize
  has_many :orbiting_items, :foreign_key => :orbitID, :class_name => MapDenormalize
  has_one :jump, :foreign_key => :stargateID, :class_name => MapJump
  has_one :scene, :foreign_key => :locationID, :class_name => MapLocationScene
  has_one :wormhole_class, :foreign_key => :locationID, :class_name => MapLocationWormholeClass
end
