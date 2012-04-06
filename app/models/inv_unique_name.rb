class InvUniqueName < ActiveRecord::Base
  self.primary_key = :itemID
  self.table_name = :invUniqueNames
end
