class InvItem < ActiveRecord::Base
  self.primary_key = :itemID
  self.table_name = :InvItems
  belongs_to :type, :foreign_key => :typeID, :class_name => InvType
  belongs_to :owner, :foreign_key => :ownerID, :class_name => InvItem
  belongs_to :location, :foreign_key => :locationID, :class_name => InvItem
  belongs_to :flag, :foreign_key => :flagID, :class_name => InvFlag
  has_one :unique_name, :foreign_key => :itemID, :class_name => InvUniqueName
  has_many :items_owned, :foreign_key => :ownerID, :class_name => InvItem
  has_many :items_here, :foreign_key => :locationID, :class_name => InvItem
  has_one :denormalize, :foreign_key => :itemID, :class_name => MapDenormalize
end
