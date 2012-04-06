class TrnTranslation < ActiveRecord::Base
  self.primary_keys = [:tcID, :keyID, :languageID]
  self.table_name = :trnTranslations
end
