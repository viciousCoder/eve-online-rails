class StaOperation < ActiveRecord::Base
  self.primary_key = :operationID
  self.table_name = :staOperations
  belongs_to :activity, :foreign_key => :activityID, :class_name => CrpActivity
  belongs_to :caldari_station_type, :foreign_key => :caldariStationTypeID, :class_name => StaStationType
  belongs_to :minmatar_station_type, :foreign_key => :minmatarStationTypeID, :class_name => StaStationType
  belongs_to :amarr_station_type, :foreign_key => :amarrStationTypeID, :class_name => StaStationType
  belongs_to :gallente_station_type, :foreign_key => :gallenteStationTypeID, :class_name => StaStationType
  belongs_to :jove_station_type, :foreign_key => :joveStationTypeID, :class_name => StaStationType
  has_many :operation_services, :foreign_key => :operationID, :class_name => StaOperationService
  has_many :stations, :foreign_key => :operationID, :class_name => StaStation
end
