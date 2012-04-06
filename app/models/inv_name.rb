class InvName < ActiveRecord::Base
  self.primary_key = :itemID
  self.table_name = :InvNames
end
