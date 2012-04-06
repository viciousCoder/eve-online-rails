class TrnTranslationLanguage < ActiveRecord::Base
  self.primary_key = :numericLanguageID
  self.table_name = :trnTranslationLanguages
end
