class ChrRace < ActiveRecord::Base
  self.primary_key = :raceID
  self.table_name = :chrRaces
  has_many :bloodlines, :foreign_key => :raceID, :class_name => ChrBloodline
  has_many :factions, :foreign_key => :raceIDs, :class_name => ChrFaction
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
end
