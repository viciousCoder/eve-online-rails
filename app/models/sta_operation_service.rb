class StaOperationService < ActiveRecord::Base
  self.primary_keys = [:operationID, :serviceID]
  self.table_name = :staOperationServices
  belongs_to :operation, :foreign_key => :operationID, :class_name => StaOperation
  belongs_to :service, :foreign_key => :serviceID, :class_name => StaService
end
