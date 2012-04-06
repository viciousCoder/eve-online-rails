class StaOperation < ActiveRecord::Base
  self.primary_key = :operationID
  self.table_name = :staOperations
end
