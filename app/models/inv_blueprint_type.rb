class InvBlueprintType < ActiveRecord::Base
  self.primary_key = :blueprintTypeID
  self.table_name = :invBlueprintTypes
  belongs_to :parent_blueprint, :foreign_key => :parentBlueprintTypeID, :class_name => InvType
  belongs_to :product, :foreign_key => :productTypeID, :class_name => InvType
  belongs_to :blueprint, :foreign_key => :blueprintTypeID, :class_name => InvType
end
