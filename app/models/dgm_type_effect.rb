class DgmTypeEffect < ActiveRecord::Base
  self.primary_keys = [:typeID, :effectID]
  self.table_name = :dgmTypeEffects
end
