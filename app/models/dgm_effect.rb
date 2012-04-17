class DgmEffect < ActiveRecord::Base
  self.primary_key = :effectID
  self.table_name = :dgmEffects
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
  belongs_to :duration_attribute, :foreign_key => :durationAttributeID, :class_name => DgmTypeAttribute
  belongs_to :tracking_speed_attribute, :foreign_key => :trackingSpeedAttributeID, :class_name => DgmTypeAttribute
  belongs_to :discharge_attribute, :foreign_key => :durationAttributeID, :class_name => DgmTypeAttribute
  belongs_to :range_attribute, :foreign_key => :durationAttributeID, :class_name => DgmTypeAttribute
  belongs_to :falloff_attribute, :foreign_key => :falloffAttributeID, :class_name => DgmTypeAttribute
  belongs_to :npc_usage_chance_attribute, :foreign_key => :npcUsageChanceAttributeID, :class_name => DgmTypeAttribute
  belongs_to :npc_activation_chance_attribute, :foreign_key => :npcActivationChanceAttributeID, :class_name => DgmTypeAttribute
  belongs_to :fitting_usage_chance_attribute, :foreign_key => :fittingUsageChanceAttributeID, :class_name => DgmTypeAttribute
  has_many :type_effects, :foreign_key => :effectID, :class_name => DgmTypeEffect
  has_and_belongs_to_many :types, :join_table => :dgmTypeAttributes, :class_name => InvType, :foreign_key => :attributeID, :association_foreign_key => :typeID
end
