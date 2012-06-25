class RamInstallationTypeContent < ActiveRecord::Base
  self.primary_keys = [:installationTypeID, :assemblyLineTypeID]
  self.table_name = :ramInstallationTypeContents
  belongs_to :installation_type, :foreign_key => :installationTypeID, :class_name => InvType
  belongs_to :assembly_line_type, :foreign_key => :assemblyLineTypeID, :class_name => RamAssemblyLineType
end
