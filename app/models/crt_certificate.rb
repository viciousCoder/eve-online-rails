class CrtCertificate < ActiveRecord::Base
  self.primary_key = :certificateID
  self.table_name = :crtCertificates
  belongs_to :category, :foreign_key => :categoryID, :class_name => CrtCategory
  belongs_to :crt_class, :foreign_key => :classID, :class_name => CrtClass
  belongs_to :corporation, :foreign_key => :corpID, :class_name => CrpNpcCorporation
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
  has_many :recommendations, :foreign_key => :certificateID, :class_name => CrtRecommendation
  has_and_belongs_to_many :required_by, :join_table => :crtRelationships, :class_name => CrtCertificate, :foreign_key => :parentID, :association_foreign_key => :childID
  has_and_belongs_to_many :crt_prerequisites, :join_table => :crtRelationships, :class_name => CrtCertificate, :foreign_key => :childID, :association_foreign_key => :parentID
  has_and_belongs_to_many :skill_prerequisites, :join_table => :crtRelationships, :class_name => InvType, :foreign_key => :childID, :association_foreign_key => :parentTypeID
end
