class InvTypeMaterial < ActiveRecord::Base
  self.primary_keys = [:typeID, :materialTypeID]
  self.table_name = :InvTypeMaterials
  belongs_to :makes, :foreign_key => :typeID, :class_name => InvType
  belongs_to :requires, :foreign_key => :materialTypeID, :class_name => InvType 
end
