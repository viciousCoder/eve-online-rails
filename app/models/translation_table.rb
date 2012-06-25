class TranslationTable < ActiveRecord::Base
  self.primary_keys = [:sourceTable, :translatedKey]
  self.table_name = :translationTables
  belongs_to :column, :foreign_key => :tcID, :class_name => TrnTranslationColumn
end
