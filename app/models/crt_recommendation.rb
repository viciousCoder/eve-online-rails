class CrtRecommendation < ActiveRecord::Base
  self.primary_key = :recommendationID
  self.table_name = :crtRecommendations
  belongs_to :ship_type, :foreign_key => :shipTypeID, :class_name => InvType
  belongs_to :certificate, :foreign_key => :certificateID, :class_name => CrtCertificate
end
