class InvMarketGroup < ActiveRecord::Base
  self.primary_key = :marketGroupID
  self.table_name = :InvMarketGroups
  belongs_to :parent_group, :foreign_key => :parentGroupID, :class_name => InvMarketGroup
  has_many :market_groups, :foreign_key => :parentGroupID, :class_name => InvMarketGroup
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
  has_many :types, :foreign_key => :marketGroupID, :class_name => InvType
end
