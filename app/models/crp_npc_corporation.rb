class CrpNpcCorporation < ActiveRecord::Base
  self.primary_key = :corporationID
  self.table_name = :crpNpcCorporations
  has_many :agents, :foreign_key => :corporationID, :class_name => AgtAgent
  has_many :bloodlines, :foreign_key => :corporationID, :class_name => ChrBloodline
  has_many :factions, :foreign_key => :corporationID, :class_name => ChrFaction
  has_many :militia_for_factions, :foreign_key => :militiaCorporationID, :class_name => ChrFaction
  has_many :corporation_divisions, :foreign_key => :corporationID, :class_name => CrpNpcCorporationDivision
  has_and_belongs_to_many :divisions, :join_table => :crpNpcCorporationDivisions, :class_name => CrpNpcDivision, :foreign_key => :corporationID, :association_foreign_key => :divisionID
  has_and_belongs_to_many :research_fields, :join_table => :crpNpcCorporationResearchFields, :class_name => InvType, :foreign_key => :corporationID, :association_foreign_key => :skillID
  has_and_belongs_to_many :trades, :join_table => :crpNpcCorporationTrades, :class_name => InvType, :foreign_key => :corporationID, :association_foreign_key => :typeID
  belongs_to :solar_system, :foreign_key => :solarSystemID, :class_name => MapSolarSystem
  belongs_to :investor_1, :foreign_key => :investorID1, :class_name => CrpNpcCorporation
  belongs_to :investor_2, :foreign_key => :investorID2, :class_name => CrpNpcCorporation
  belongs_to :investor_3, :foreign_key => :investorID3, :class_name => CrpNpcCorporation
  belongs_to :investor_4, :foreign_key => :investorID4, :class_name => CrpNpcCorporation
  belongs_to :friend, :foreign_key => :friendID, :class_name => CrpNpcCorporation
  has_many :friends_to, :foreign_key => :friendID, :class_name => CrpNpcCorporation
  belongs_to :enemy, :foreign_key => :enemyID, :class_name => CrpNpcCorporation
  has_many :enemies_to, :foreign_key => :enemyID, :class_name => CrpNpcCorporation
  belongs_to :faction, :foreign_key => :factionID, :class_name => ChrFaction
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
  has_one :inv_name, :foreign_key => :itemID, :class_name => InvName
  has_many :certificates, :foreign_key => :corpID, :class_name => CrtCertificate
  has_many :assembly_lines, :foreign_key => :ownerID, :class_name => RamAssemblyLine
  
  def investors
    [investor_1, investor_2, investor_3, investor_4].compact
  end
  
  # resturns an array of two elements arrays, the first of which is the investment corp, the second of which is the shares
  # cache the result so that multiple calls do not adversely affect performance
  def invested_in
    @invested_in ||= query_invested_in
  end
  
  def query_invested_in
    1.upto(4).inject([]) do |x,y|
      a = self.class.find(:all, :conditions => "investorID#{y} = #{corporationID}").map do |investment|
        [investment, investment.send("investorShares#{y}")]
      end
      x = x + a
    end
  end
  
end
