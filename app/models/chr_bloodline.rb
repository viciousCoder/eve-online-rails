class ChrBloodline < ActiveRecord::Base
  self.primary_key = :bloodlineID
  self.table_name = :chrBloodlines
  has_many :ancestries, :foreign_key => :bloodlineID, :class_name => ChrAncestry
  belongs_to :race, :foreign_key => :raceID, :class_name => ChrRace
  belongs_to :ship_type, :foreign_key => :shipTypeID, :class_name => InvType
  belongs_to :corporation, :foreign_key => :corporationID, :class_name => CrpNpcCorporation
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
end
