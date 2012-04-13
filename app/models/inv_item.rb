class InvItem < ActiveRecord::Base
  self.primary_key = :itemID
  self.table_name = :InvItems
  belongs_to :type, :foreign_key => :typeID, :class_name => InvType
  belongs_to :owner, :foreign_key => :ownerID, :class_name => CrpNpcCorporation
  belongs_to :station, :foreign_key => :locationID, :class_name => StaStation
  belongs_to :flag, :foreign_key => :flagID, :class_name => InvFlag
end
