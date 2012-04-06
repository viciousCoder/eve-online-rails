class InvControlTowerResourcePurpose < ActiveRecord::Base
  self.primary_key = :purpose
  self.table_name = :InvControlTowerResourcePurposes
  has_many :control_tower_resources, :foreign_key => :purpose, :class_name => InvControlTowerResource
end
