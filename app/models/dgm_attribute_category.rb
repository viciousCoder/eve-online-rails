class DgmAttributeCategory < ActiveRecord::Base
  self.primary_key = :categoryID
  self.table_name = :dgmAttributeCategories
  has_many :item_attributes, :foreign_key => :categoryID, :class_name => DgmAttributeType
end
