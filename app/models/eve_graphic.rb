class EveGraphic < ActiveRecord::Base
  self.primary_key = :graphicID
  self.table_name = :eveGraphics
end
