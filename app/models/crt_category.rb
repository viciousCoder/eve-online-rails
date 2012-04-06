class CrtCategory < ActiveRecord::Base
  self.primary_key = :categoryID
  self.table_name = :crtCategories
  has_many :certificates, :foreign_key => :categoryID, :class_name => :CrtCertificate
end
