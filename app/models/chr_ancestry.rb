class ChrAncestry < ActiveRecord::Base
  self.primary_key = :ancestryID
  self.table_name = :chrAncestries
  belongs_to :bloodline, :foreign_key => :bloodlineID, :class_name => ChrBloodline
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
end
