class CrpNpcCorporationTrade < ActiveRecord::Base
  self.primary_keys = [:corporationID, :typeID]
  self.table_name = :crpNpcCorporationTrades
  belongs_to :corporation, :foreign_key => :corporationID, :class_name => CrpNpcCorporation
  belongs_to :item, :foreign_key => :typeID, :class_name => InvType
end
