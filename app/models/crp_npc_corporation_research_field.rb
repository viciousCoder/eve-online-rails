class CrpNpcCorporationResearchField < ActiveRecord::Base
  self.primary_keys = [:skillID, :corporationID]
  self.table_name = :crpNpcCorporationResearchFields
  belongs_to :corporation, :foreign_key => :corporationID, :class_name => CrpNpcCorporation
  belongs_to :skill, :foreign_key => :skillID, :class_name => InvType
end
