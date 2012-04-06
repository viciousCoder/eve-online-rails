class RamInstallationTypeContent < ActiveRecord::Base
  self.primary_keys = [:installationTypeID, :assemblyLineTypeID]
  self.table_name = :ramInstallationTypeContents
end
