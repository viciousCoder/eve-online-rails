class CrtRelationship < ActiveRecord::Base
  self.primary_key = :relationshipID
  self.table_name = :crtRelationships
  belongs_to :parent, :foreign_key => :parentID, :class_name => CrtCertificate
  belongs_to :child, :foreign_key => :childID, :class_name => CrtCertificate
  belongs_to :parent_type, :foreign_key => :parentTypeID, :class_name => InvType
end
