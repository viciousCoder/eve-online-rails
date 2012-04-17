class EveIcon < ActiveRecord::Base
  self.primary_key = :iconID
  self.table_name = :eveIcons
  has_many :ancestries, :foreign_key => :iconID, :class_name => ChrAncestry
  has_many :attributes, :foreign_key => :iconID, :class_name => ChrAttribute
  has_many :bloodlines, :foreign_key => :iconID, :class_name => ChrBloodline
  has_many :factions, :foreign_key => :iconID, :class_name => ChrFaction
  has_many :races, :foreign_key => :iconID, :class_name => ChrRace
  has_many :corporations, :foreign_key => :iconID, :class_name => CrpNpcCorporation
  has_many :certificates, :foreign_key => :iconID, :class_name => CrtCertificate
  has_many :item_attributes, :foreign_key => :iconID, :class_name => DgmAttributeType
  has_many :categories, :foreign_key => :iconID, :class_name => InvCategory
  has_many :groups, :foreign_key => :iconID, :class_name => InvGroup
  has_many :market_groups, :foreign_key => :iconID, :class_name => InvMarketGroup
  has_many :types, :foreign_key => :iconID, :class_name => InvType
  has_many :landmarks, :foreign_key => :iconID, :class_name => MapLandmark
end
