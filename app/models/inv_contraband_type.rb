class InvContrabandType < ActiveRecord::Base
  self.primary_keys = [:factionID, :typeID]
  self.table_name = :InvContrabandTypes
  belongs_to :faction, :foreign_key => :factionID, :class_name => ChrFaction
  belongs_to :type, :foreign_key => :typeID, :class_name => InvType
end