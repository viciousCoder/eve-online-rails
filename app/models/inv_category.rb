class InvCategory < ActiveRecord::Base
  self.primary_key = :categoryID
  self.table_name = :InvCategories
  has_many :groups, :foreign_key => :categoryID, :class_name => InvGroup
  belongs_to :icon, :foreign_key => :iconID, :class_name => EveIcon
  has_many :assembly_line_type_details, :foreign_key => :categoryID, :class_name => RamAssemblyLineTypeDetailPerCategory
end
