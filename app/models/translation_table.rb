class TranslationTable < ActiveRecord::Base
  self.primary_keys = [:sourceTable, :translatedKey]
  self.table_name = :translationTables
end
