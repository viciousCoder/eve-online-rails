class StaOperationService < ActiveRecord::Base
  self.primary_keys = [:operationID, :serviceID]
  self.table_name = :staOperationServices
end
