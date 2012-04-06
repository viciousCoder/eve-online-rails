class CrtClass < ActiveRecord::Base
  self.primary_key = :classID
  self.table_name = :crtClasses
  has_many :certificates, :foreign_key => :classID, :class_name => CrtCertificate
end
