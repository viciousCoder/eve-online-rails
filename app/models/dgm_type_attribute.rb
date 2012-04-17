class DgmTypeAttribute < ActiveRecord::Base
  self.primary_key = :typeID
  self.table_name = :dgmTypeAttributes
  belongs_to :type, :foreign_key => :typeID, :class_name => :InvType
  belongs_to :attribute, :foreign_key => :attributeID, :class_name => :DgmAttributeType
end
