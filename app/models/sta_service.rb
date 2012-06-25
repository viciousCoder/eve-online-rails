class StaService < ActiveRecord::Base
  self.primary_key = :serviceID
  self.table_name = :staServices
  has_many :operation_services, :foreign_key => :serviceID, :class_name => StaOperationService
end
