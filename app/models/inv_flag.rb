class InvFlag < ActiveRecord::Base
  self.primary_key = :flagID
  self.table_name = :InvFlags
  has_many :items, :foreign_key => :flagID, :class_name => InvItem
end
