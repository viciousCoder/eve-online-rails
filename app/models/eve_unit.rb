class EveUnit < ActiveRecord::Base
  self.primary_key = :unitID
  self.table_name = :eveUnits
  has_many :item_attributes, :foreign_key => :unitID, :class_name => DgmAttributeType
end
