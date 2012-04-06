class CrpNpcCorporationDivision < ActiveRecord::Base
  self.primary_keys = [:corporationID, :divisionID]
  self.table_name = :crpNpcCorporationDivisions
  belongs_to :corporation, :foreign_key => :corporationID, :class_name => CrpNpcCorporation
  belongs_to :division, :foreign_key => :divisionID, :class_name => CrpNpcDivision
end
