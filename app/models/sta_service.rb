class StaService < ActiveRecord::Base
  self.primary_key = :serviceID
  self.table_name = :staServices
end
