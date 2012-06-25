class TrnTranslation < ActiveRecord::Base
  self.primary_keys = [:tcID, :keyID, :languageID]
  self.table_name = :trnTranslations
  belongs_to :column, :foreign_key => :tcID, :class_name => TrnTranslationColumn
end
