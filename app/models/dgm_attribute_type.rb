class DgmAttributeType < ActiveRecord::Base
  self.primary_key = :attributeID
  self.table_name = :dgmAttributeTypes
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
  belongs_to :unit, :foreign_key => :unitID, :class_name => EveUnit
  belongs_to :category, :foreign_key => :categoryID, :class_name => DgmAttributeCategory
  has_many :duration_effects, :foreign_key => :durationAttributeID, :class_name => DgmEffect
  has_many :tracking_speed_effects, :foreign_key => :trackingSpeedAttributeID, :class_name => DgmEffect
  has_many :discharge_effects, :foreign_key => :dischargeAttributeID, :class_name => DgmEffect
  has_many :range_effects, :foreign_key => :rangeAttributeID, :class_name => DgmEffect
  has_many :falloff_effects, :foreign_key => :falloffAttributeID, :class_name => DgmEffect
  has_many :npc_usage_chance_effects, :foreign_key => :npcUsageChanceAttributeID, :class_name => DgmEffect
  has_many :npc_activation_chance_effects, :foreign_key => :npcActivationChanceAttributeID, :class_name => DgmEffect
  has_many :fitting_usage_chance_effects, :foreign_key => :fittingUsageChanceAttributeID, :class_name => DgmEffect
end
