class CrpNpcDivision < ActiveRecord::Base
  self.primary_key = :divisionID
  self.table_name = :crpNPCDivisions
  has_many :agents, :foreign_key => :divisionID, :class_name => AgtAgent
  has_many :corporation_divisions, :foreign_key => :divisionID, :class_name => CrpNpcCorporationDivision
  has_and_belongs_to_many :corporations, :join_table => :crpNpcCorporationDivisions, :class_name => CrpNpcCorporation, :foreign_key => :divisionID, :association_foreign_key => :corporationID
end
