class StaStationType < ActiveRecord::Base
  self.primary_key = :stationTypeID
  self.table_name = :staStationTypes
  has_many :assembly_line_stations, :foreign_key => :stationTypeID, :class_name => RamAssemblyLineStation
  has_many :caldari_operations, :foreign_key => :caldariStationTypeID, :class_name => StaOperation
  has_many :minmatar_operations, :foreign_key => :minmatarStationTypeID, :class_name => StaOperation
  has_many :amarr_operations, :foreign_key => :amarrStationTypeID, :class_name => StaOperation
  has_many :gallente_operations, :foreign_key => :gallenteStationTypeID, :class_name => StaOperation
  has_many :jove_operations, :foreign_key => :joveStationTypeID, :class_name => StaOperation
  has_many :stations, :foreign_key => :stationTypeID, :class_name => StaStation
  belongs_to :operation, :foreign_key => :operationID, :class_name => StaOperation
end
