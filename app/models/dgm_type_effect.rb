class DgmTypeEffect < ActiveRecord::Base
  self.primary_keys = [:typeID, :effectID]
  self.table_name = :dgmTypeEffects
  belongs_to :inv_type, :foreign_key => :typeID, :class_name => InvType
  belongs_to :effect, :foreign_key => :effectID, :class_name => DgmEffect
end
