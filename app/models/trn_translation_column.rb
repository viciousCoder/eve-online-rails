class TrnTranslationColumn < ActiveRecord::Base
  self.primary_key = :tcID
  self.table_name = :trnTranslationColumns
  has_one :table, :foreign_key => :tcID, :class_name => TranslationTable
  has_many :translations, :foreign_key => :tcID, :class_name => TrnTranslation
end
