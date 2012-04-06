class InvPosition < ActiveRecord::Base
  self.primary_key = :itemID
  self.table_name = :InvPositions
end
