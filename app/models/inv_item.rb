class InvItem < ActiveRecord::Base
  self.primary_key = :itemID
  self.table_name = :InvItems
end
