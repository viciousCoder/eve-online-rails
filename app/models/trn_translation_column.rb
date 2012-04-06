class TrnTranslationColumn < ActiveRecord::Base
  self.primary_key = :tcID
  self.table_name = :trnTranslationColumns
end
