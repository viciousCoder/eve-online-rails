# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120403043849) do

  create_table "agtAgentTypes", :primary_key => "agentTypeID", :force => true do |t|
    t.string "agentType", :limit => 50
  end

  create_table "agtAgents", :primary_key => "agentID", :force => true do |t|
    t.integer "divisionID"
    t.integer "corporationID"
    t.integer "locationID"
    t.integer "level"
    t.integer "quality",       :limit => 2
    t.integer "agentTypeID"
    t.integer "isLocator"
    t.string  "name",          :limit => 200
  end

  add_index "agtAgents", ["corporationID"], :name => "agtAgents_IX_corporation"
  add_index "agtAgents", ["locationID"], :name => "agtAgents_IX_station"

  create_table "agtResearchAgents", :id => false, :force => true do |t|
    t.integer "agentID", :null => false
    t.integer "typeID",  :null => false
  end

  add_index "agtResearchAgents", ["typeID"], :name => "agtResearchAgents_IX_type"

  create_table "chrAncestries", :primary_key => "ancestryID", :force => true do |t|
    t.string  "ancestryName",     :limit => 100
    t.integer "bloodlineID"
    t.string  "description",      :limit => 1000
    t.integer "perception"
    t.integer "willpower"
    t.integer "charisma"
    t.integer "memory"
    t.integer "intelligence"
    t.integer "iconID"
    t.string  "shortDescription", :limit => 500
  end

  create_table "chrAttributes", :primary_key => "attributeID", :force => true do |t|
    t.string  "attributeName",    :limit => 100
    t.string  "description",      :limit => 1000
    t.integer "iconID"
    t.string  "shortDescription", :limit => 500
    t.string  "notes",            :limit => 500
  end

  create_table "chrBloodlines", :primary_key => "bloodlineID", :force => true do |t|
    t.string  "bloodlineName",          :limit => 100
    t.integer "raceID"
    t.string  "description",            :limit => 1000
    t.string  "maleDescription",        :limit => 1000
    t.string  "femaleDescription",      :limit => 1000
    t.integer "shipTypeID"
    t.integer "corporationID"
    t.integer "perception"
    t.integer "willpower"
    t.integer "charisma"
    t.integer "memory"
    t.integer "intelligence"
    t.integer "iconID"
    t.string  "shortDescription",       :limit => 500
    t.string  "shortMaleDescription",   :limit => 500
    t.string  "shortFemaleDescription", :limit => 500
  end

  create_table "chrFactions", :primary_key => "factionID", :force => true do |t|
    t.string  "factionName",          :limit => 100
    t.string  "description",          :limit => 1000
    t.integer "raceIDs"
    t.integer "solarSystemID"
    t.integer "corporationID"
    t.float   "sizeFactor"
    t.integer "stationCount",         :limit => 2
    t.integer "stationSystemCount",   :limit => 2
    t.integer "militiaCorporationID"
    t.integer "iconID"
  end

  create_table "chrRaces", :primary_key => "raceID", :force => true do |t|
    t.string  "raceName",         :limit => 100
    t.string  "description",      :limit => 1000
    t.integer "iconID"
    t.string  "shortDescription", :limit => 500
  end

  create_table "crpActivities", :primary_key => "activityID", :force => true do |t|
    t.string "activityName", :limit => 100
    t.string "description",  :limit => 1000
  end

  create_table "crpNPCCorporationDivisions", :id => false, :force => true do |t|
    t.integer "corporationID", :null => false
    t.integer "divisionID",    :null => false
    t.integer "size"
  end

  create_table "crpNPCCorporationResearchFields", :id => false, :force => true do |t|
    t.integer "skillID",       :null => false
    t.integer "corporationID", :null => false
  end

  create_table "crpNPCCorporationTrades", :id => false, :force => true do |t|
    t.integer "corporationID", :null => false
    t.integer "typeID",        :null => false
  end

  create_table "crpNPCCorporations", :primary_key => "corporationID", :force => true do |t|
    t.string  "size",               :limit => 1
    t.string  "extent",             :limit => 1
    t.integer "solarSystemID"
    t.integer "investorID1"
    t.integer "investorShares1"
    t.integer "investorID2"
    t.integer "investorShares2"
    t.integer "investorID3"
    t.integer "investorShares3"
    t.integer "investorID4"
    t.integer "investorShares4"
    t.integer "friendID"
    t.integer "enemyID"
    t.integer "publicShares",       :limit => 8
    t.integer "initialPrice"
    t.float   "minSecurity"
    t.integer "scattered"
    t.integer "fringe"
    t.integer "corridor"
    t.integer "hub"
    t.integer "border"
    t.integer "factionID"
    t.float   "sizeFactor"
    t.integer "stationCount",       :limit => 2
    t.integer "stationSystemCount", :limit => 2
    t.string  "description",        :limit => 4000
    t.integer "iconID"
    t.string  "name",               :limit => 200
  end

  create_table "crpNPCDivisions", :primary_key => "divisionID", :force => true do |t|
    t.string "divisionName", :limit => 100
    t.string "description",  :limit => 1000
    t.string "leaderType",   :limit => 100
  end

  create_table "crtCategories", :primary_key => "categoryID", :force => true do |t|
    t.string "description",  :limit => 500
    t.string "categoryName", :limit => 256
  end

  create_table "crtCertificates", :primary_key => "certificateID", :force => true do |t|
    t.integer "categoryID"
    t.integer "classID"
    t.integer "grade"
    t.integer "corpID"
    t.integer "iconID"
    t.string  "description", :limit => 500
  end

  add_index "crtCertificates", ["categoryID"], :name => "crtCertificates_IX_category"
  add_index "crtCertificates", ["classID"], :name => "crtCertificates_IX_class"

  create_table "crtClasses", :primary_key => "classID", :force => true do |t|
    t.string "description", :limit => 500
    t.string "className",   :limit => 256
  end

  create_table "crtRecommendations", :primary_key => "recommendationID", :force => true do |t|
    t.integer "shipTypeID"
    t.integer "certificateID"
    t.integer "recommendationLevel", :default => 0, :null => false
  end

  add_index "crtRecommendations", ["certificateID"], :name => "crtRecommendations_IX_certifica"
  add_index "crtRecommendations", ["shipTypeID"], :name => "crtRecommendations_IX_shipType"

  create_table "crtRelationships", :primary_key => "relationshipID", :force => true do |t|
    t.integer "parentID"
    t.integer "parentTypeID"
    t.integer "parentLevel"
    t.integer "childID"
  end

  add_index "crtRelationships", ["childID"], :name => "crtRelationships_IX_child"
  add_index "crtRelationships", ["parentID"], :name => "crtRelationships_IX_parent"

  create_table "dgmAttributeCategories", :primary_key => "categoryID", :force => true do |t|
    t.string "categoryName",        :limit => 50
    t.string "categoryDescription", :limit => 200
  end

  create_table "dgmAttributeTypes", :primary_key => "attributeID", :force => true do |t|
    t.string  "attributeName", :limit => 100
    t.string  "description",   :limit => 1000
    t.integer "iconID"
    t.float   "defaultValue"
    t.integer "published"
    t.string  "displayName",   :limit => 100
    t.integer "unitID"
    t.integer "stackable"
    t.integer "highIsGood"
    t.integer "categoryID"
  end

  create_table "dgmEffects", :primary_key => "effectID", :force => true do |t|
    t.string  "effectName",                     :limit => 400
    t.integer "effectCategory",                 :limit => 2
    t.integer "preExpression"
    t.integer "postExpression"
    t.string  "description",                    :limit => 1000
    t.string  "guid",                           :limit => 60
    t.integer "iconID"
    t.integer "isOffensive"
    t.integer "isAssistance"
    t.integer "durationAttributeID",            :limit => 2
    t.integer "trackingSpeedAttributeID",       :limit => 2
    t.integer "dischargeAttributeID",           :limit => 2
    t.integer "rangeAttributeID",               :limit => 2
    t.integer "falloffAttributeID",             :limit => 2
    t.integer "disallowAutoRepeat"
    t.integer "published"
    t.string  "displayName",                    :limit => 100
    t.integer "isWarpSafe"
    t.integer "rangeChance"
    t.integer "electronicChance"
    t.integer "propulsionChance"
    t.integer "distribution"
    t.string  "sfxName",                        :limit => 20
    t.integer "npcUsageChanceAttributeID",      :limit => 2
    t.integer "npcActivationChanceAttributeID", :limit => 2
    t.integer "fittingUsageChanceAttributeID",  :limit => 2
  end

  create_table "dgmTypeAttributes", :id => false, :force => true do |t|
    t.integer "typeID",                   :null => false
    t.integer "attributeID", :limit => 2, :null => false
    t.integer "valueInt"
    t.float   "valueFloat"
  end

  create_table "dgmTypeEffects", :id => false, :force => true do |t|
    t.integer "typeID",                 :null => false
    t.integer "effectID",  :limit => 2, :null => false
    t.integer "isDefault"
  end

  create_table "eveGraphics", :primary_key => "graphicID", :force => true do |t|
    t.string  "graphicFile", :limit => 500,                :null => false
    t.text    "description",                               :null => false
    t.integer "obsolete",                   :default => 0, :null => false
    t.string  "graphicType", :limit => 100
    t.integer "collidable"
    t.integer "explosionID"
    t.integer "directoryID"
    t.text    "graphicName",                               :null => false
  end

  create_table "eveIcons", :primary_key => "iconID", :force => true do |t|
    t.string "iconFile",    :limit => 500, :null => false
    t.text   "description",                :null => false
  end

  create_table "eveUnits", :primary_key => "unitID", :force => true do |t|
    t.string "unitName",    :limit => 100
    t.string "displayName", :limit => 50
    t.string "description", :limit => 1000
  end

  create_table "invBlueprintTypes", :primary_key => "blueprintTypeID", :force => true do |t|
    t.integer "parentBlueprintTypeID"
    t.integer "productTypeID"
    t.integer "productionTime"
    t.integer "techLevel",                :limit => 2
    t.integer "researchProductivityTime"
    t.integer "researchMaterialTime"
    t.integer "researchCopyTime"
    t.integer "researchTechTime"
    t.integer "productivityModifier"
    t.integer "materialModifier",         :limit => 2
    t.integer "wasteFactor",              :limit => 2
    t.integer "maxProductionLimit"
  end

  create_table "invCategories", :primary_key => "categoryID", :force => true do |t|
    t.string  "categoryName", :limit => 100
    t.string  "description",  :limit => 3000
    t.integer "iconID"
    t.integer "published"
  end

  create_table "invContrabandTypes", :id => false, :force => true do |t|
    t.integer "factionID",        :null => false
    t.integer "typeID",           :null => false
    t.float   "standingLoss"
    t.float   "confiscateMinSec"
    t.float   "fineByValue"
    t.float   "attackMinSec"
  end

  add_index "invContrabandTypes", ["typeID"], :name => "invContrabandTypes_IX_type"

  create_table "invControlTowerResourcePurposes", :primary_key => "purpose", :force => true do |t|
    t.string "purposeText", :limit => 100
  end

  create_table "invControlTowerResources", :id => false, :force => true do |t|
    t.integer "controlTowerTypeID", :null => false
    t.integer "resourceTypeID",     :null => false
    t.integer "purpose"
    t.integer "quantity"
    t.float   "minSecurityLevel"
    t.integer "factionID"
  end

  create_table "invFlags", :primary_key => "flagID", :force => true do |t|
    t.string  "flagName", :limit => 200
    t.string  "flagText", :limit => 100
    t.integer "orderID"
  end

  create_table "invGroups", :primary_key => "groupID", :force => true do |t|
    t.integer "categoryID"
    t.string  "groupName",            :limit => 100
    t.string  "description",          :limit => 3000
    t.integer "iconID"
    t.integer "useBasePrice"
    t.integer "allowManufacture"
    t.integer "allowRecycler"
    t.integer "anchored"
    t.integer "anchorable"
    t.integer "fittableNonSingleton"
    t.integer "published"
  end

  add_index "invGroups", ["categoryID"], :name => "invGroups_IX_category"

  create_table "invItems", :primary_key => "itemID", :force => true do |t|
    t.integer "typeID",                  :null => false
    t.integer "ownerID",                 :null => false
    t.integer "locationID", :limit => 8, :null => false
    t.integer "flagID",     :limit => 2, :null => false
    t.integer "quantity",                :null => false
  end

  add_index "invItems", ["locationID"], :name => "items_IX_Location"
  add_index "invItems", ["ownerID", "locationID"], :name => "items_IX_OwnerLocation"

  create_table "invMarketGroups", :primary_key => "marketGroupID", :force => true do |t|
    t.integer "parentGroupID",   :limit => 2
    t.string  "marketGroupName", :limit => 100
    t.string  "description",     :limit => 3000
    t.integer "iconID"
    t.integer "hasTypes"
  end

  create_table "invMetaGroups", :primary_key => "metaGroupID", :force => true do |t|
    t.string  "metaGroupName", :limit => 100
    t.string  "description",   :limit => 1000
    t.integer "iconID"
  end

  create_table "invMetaTypes", :primary_key => "typeID", :force => true do |t|
    t.integer "parentTypeID"
    t.integer "metaGroupID",  :limit => 2
  end

  create_table "invNames", :primary_key => "itemID", :force => true do |t|
    t.string "itemName", :limit => 200, :null => false
  end

  create_table "invPositions", :primary_key => "itemID", :force => true do |t|
    t.float "x",     :default => 0.0, :null => false
    t.float "y",     :default => 0.0, :null => false
    t.float "z",     :default => 0.0, :null => false
    t.float "yaw"
    t.float "pitch"
    t.float "roll"
  end

  create_table "invTypeMaterials", :id => false, :force => true do |t|
    t.integer "typeID",                        :null => false
    t.integer "materialTypeID",                :null => false
    t.integer "quantity",       :default => 0, :null => false
  end

  create_table "invTypeReactions", :id => false, :force => true do |t|
    t.integer "reactionTypeID",              :null => false
    t.integer "input",                       :null => false
    t.integer "typeID",                      :null => false
    t.integer "quantity",       :limit => 2
  end

  create_table "invTypes", :primary_key => "typeID", :force => true do |t|
    t.integer "groupID"
    t.string  "typeName",            :limit => 100
    t.string  "description",         :limit => 3000
    t.integer "graphicID"
    t.float   "radius"
    t.float   "mass"
    t.float   "volume"
    t.float   "capacity"
    t.integer "portionSize"
    t.integer "raceID"
    t.decimal "basePrice",                           :precision => 19, :scale => 4
    t.integer "published"
    t.integer "marketGroupID",       :limit => 2
    t.float   "chanceOfDuplicating"
    t.integer "iconID"
  end

  add_index "invTypes", ["groupID"], :name => "invTypes_IX_Group"

  create_table "invUniqueNames", :primary_key => "itemID", :force => true do |t|
    t.string  "itemName", :limit => 200, :null => false
    t.integer "groupID"
  end

  add_index "invUniqueNames", ["groupID", "itemName"], :name => "invUniqueNames_IX_GroupName"
  add_index "invUniqueNames", ["itemName"], :name => "invUniqueNames_UQ", :unique => true

  create_table "mapCelestialStatistics", :primary_key => "celestialID", :force => true do |t|
    t.float   "temperature"
    t.string  "spectralClass",  :limit => 10
    t.float   "luminosity"
    t.float   "age"
    t.float   "life"
    t.float   "orbitRadius"
    t.float   "eccentricity"
    t.float   "massDust"
    t.float   "massGas"
    t.integer "fragmented"
    t.float   "density"
    t.float   "surfaceGravity"
    t.float   "escapeVelocity"
    t.float   "orbitPeriod"
    t.float   "rotationRate"
    t.integer "locked"
    t.float   "pressure"
    t.float   "radius"
    t.float   "mass"
  end

  create_table "mapConstellationJumps", :id => false, :force => true do |t|
    t.integer "fromRegionID"
    t.integer "fromConstellationID", :null => false
    t.integer "toConstellationID",   :null => false
    t.integer "toRegionID"
  end

  add_index "mapConstellationJumps", ["fromRegionID"], :name => "mapConstellationJumps_IX_fromRe"

  create_table "mapConstellations", :primary_key => "constellationID", :force => true do |t|
    t.integer "regionID"
    t.string  "constellationName", :limit => 100
    t.float   "x"
    t.float   "y"
    t.float   "z"
    t.float   "xMin"
    t.float   "xMax"
    t.float   "yMin"
    t.float   "yMax"
    t.float   "zMin"
    t.float   "zMax"
    t.integer "factionID"
    t.float   "radius"
  end

  add_index "mapConstellations", ["regionID"], :name => "mapConstellations_IX_region"

  create_table "mapDenormalize", :primary_key => "itemID", :force => true do |t|
    t.integer "typeID"
    t.integer "groupID"
    t.integer "solarSystemID"
    t.integer "constellationID"
    t.integer "regionID"
    t.integer "orbitID"
    t.float   "x"
    t.float   "y"
    t.float   "z"
    t.float   "radius"
    t.string  "itemName",        :limit => 100
    t.float   "security"
    t.integer "celestialIndex"
    t.integer "orbitIndex"
  end

  add_index "mapDenormalize", ["constellationID"], :name => "mapDenormalize_IX_constellation"
  add_index "mapDenormalize", ["groupID", "constellationID"], :name => "mapDenormalize_IX_groupConstell"
  add_index "mapDenormalize", ["groupID", "regionID"], :name => "mapDenormalize_IX_groupRegion"
  add_index "mapDenormalize", ["groupID", "solarSystemID"], :name => "mapDenormalize_IX_groupSystem"
  add_index "mapDenormalize", ["orbitID"], :name => "mapDenormalize_IX_orbit"
  add_index "mapDenormalize", ["regionID"], :name => "mapDenormalize_IX_region"
  add_index "mapDenormalize", ["solarSystemID"], :name => "mapDenormalize_IX_system"

  create_table "mapJumps", :primary_key => "stargateID", :force => true do |t|
    t.integer "celestialID"
  end

  create_table "mapLandmarks", :primary_key => "landmarkID", :force => true do |t|
    t.string  "landmarkName", :limit => 100
    t.string  "description",  :limit => 7000
    t.integer "locationID"
    t.float   "x"
    t.float   "y"
    t.float   "z"
    t.float   "radius"
    t.integer "iconID"
    t.integer "importance"
  end

  create_table "mapLocationScenes", :primary_key => "locationID", :force => true do |t|
    t.integer "graphicID"
  end

  create_table "mapLocationWormholeClasses", :primary_key => "locationID", :force => true do |t|
    t.integer "wormholeClassID"
  end

  create_table "mapRegionJumps", :id => false, :force => true do |t|
    t.integer "fromRegionID", :null => false
    t.integer "toRegionID",   :null => false
  end

  create_table "mapRegions", :primary_key => "regionID", :force => true do |t|
    t.string  "regionName", :limit => 100
    t.float   "x"
    t.float   "y"
    t.float   "z"
    t.float   "xMin"
    t.float   "xMax"
    t.float   "yMin"
    t.float   "yMax"
    t.float   "zMin"
    t.float   "zMax"
    t.integer "factionID"
    t.float   "radius"
  end

  create_table "mapSolarSystemJumps", :id => false, :force => true do |t|
    t.integer "fromRegionID"
    t.integer "fromConstellationID"
    t.integer "fromSolarSystemID",   :null => false
    t.integer "toSolarSystemID",     :null => false
    t.integer "toConstellationID"
    t.integer "toRegionID"
  end

  add_index "mapSolarSystemJumps", ["fromConstellationID"], :name => "mapSolarSystemJumps_IX_fromCons"
  add_index "mapSolarSystemJumps", ["fromRegionID"], :name => "mapSolarSystemJumps_IX_fromRegi"

  create_table "mapSolarSystems", :primary_key => "solarSystemID", :force => true do |t|
    t.integer "regionID"
    t.integer "constellationID"
    t.string  "solarSystemName", :limit => 100
    t.float   "x"
    t.float   "y"
    t.float   "z"
    t.float   "xMin"
    t.float   "xMax"
    t.float   "yMin"
    t.float   "yMax"
    t.float   "zMin"
    t.float   "zMax"
    t.float   "luminosity"
    t.integer "border"
    t.integer "fringe"
    t.integer "corridor"
    t.integer "hub"
    t.integer "international"
    t.integer "regional"
    t.integer "constellation"
    t.float   "security"
    t.integer "factionID"
    t.float   "radius"
    t.integer "sunTypeID"
    t.string  "securityClass",   :limit => 2
  end

  add_index "mapSolarSystems", ["constellationID"], :name => "mapSolarSystems_IX_constellation"
  add_index "mapSolarSystems", ["regionID"], :name => "mapSolarSystems_IX_region"
  add_index "mapSolarSystems", ["security"], :name => "mapSolarSystems_IX_security"

  create_table "mapUniverse", :primary_key => "universeID", :force => true do |t|
    t.string "universeName", :limit => 100
    t.float  "x"
    t.float  "y"
    t.float  "z"
    t.float  "xMin"
    t.float  "xMax"
    t.float  "yMin"
    t.float  "yMax"
    t.float  "zMin"
    t.float  "zMax"
    t.float  "radius"
  end

  create_table "planetSchematics", :primary_key => "schematicID", :force => true do |t|
    t.string  "schematicName"
    t.integer "cycleTime"
  end

  create_table "planetSchematicsPinMap", :id => false, :force => true do |t|
    t.integer "schematicID", :limit => 2, :null => false
    t.integer "pinTypeID",                :null => false
  end

  create_table "planetSchematicsTypeMap", :id => false, :force => true do |t|
    t.integer "schematicID", :limit => 2, :null => false
    t.integer "typeID",                   :null => false
    t.integer "quantity",    :limit => 2
    t.integer "isInput"
  end

  create_table "ramActivities", :primary_key => "activityID", :force => true do |t|
    t.string  "activityName", :limit => 100
    t.string  "iconNo",       :limit => 5
    t.string  "description",  :limit => 1000
    t.integer "published"
  end

  create_table "ramAssemblyLineStations", :id => false, :force => true do |t|
    t.integer "stationID",          :null => false
    t.integer "assemblyLineTypeID", :null => false
    t.integer "quantity"
    t.integer "stationTypeID"
    t.integer "ownerID"
    t.integer "solarSystemID"
    t.integer "regionID"
  end

  add_index "ramAssemblyLineStations", ["ownerID"], :name => "ramAssemblyLineStations_IX_owner"
  add_index "ramAssemblyLineStations", ["regionID"], :name => "ramAssemblyLineStations_IX_regi"

  create_table "ramAssemblyLineTypeDetailPerCategory", :id => false, :force => true do |t|
    t.integer "assemblyLineTypeID", :null => false
    t.integer "categoryID",         :null => false
    t.float   "timeMultiplier"
    t.float   "materialMultiplier"
  end

  create_table "ramAssemblyLineTypeDetailPerGroup", :id => false, :force => true do |t|
    t.integer "assemblyLineTypeID", :null => false
    t.integer "groupID",            :null => false
    t.float   "timeMultiplier"
    t.float   "materialMultiplier"
  end

  create_table "ramAssemblyLineTypes", :primary_key => "assemblyLineTypeID", :force => true do |t|
    t.string  "assemblyLineTypeName",   :limit => 100
    t.string  "description",            :limit => 1000
    t.float   "baseTimeMultiplier"
    t.float   "baseMaterialMultiplier"
    t.float   "volume"
    t.integer "activityID"
    t.float   "minCostPerHour"
  end

  create_table "ramAssemblyLines", :primary_key => "assemblyLineID", :force => true do |t|
    t.integer  "assemblyLineTypeID"
    t.integer  "containerID"
    t.datetime "nextFreeTime"
    t.integer  "UIGroupingID"
    t.float    "costInstall"
    t.float    "costPerHour"
    t.integer  "restrictionMask"
    t.float    "discountPerGoodStandingPoint"
    t.float    "surchargePerBadStandingPoint"
    t.float    "minimumStanding"
    t.float    "minimumCharSecurity"
    t.float    "minimumCorpSecurity"
    t.float    "maximumCharSecurity"
    t.float    "maximumCorpSecurity"
    t.integer  "ownerID"
    t.integer  "activityID"
  end

  add_index "ramAssemblyLines", ["containerID"], :name => "ramAssemblyLines_IX_container"
  add_index "ramAssemblyLines", ["ownerID"], :name => "ramAssemblyLines_IX_owner"

  create_table "ramInstallationTypeContents", :id => false, :force => true do |t|
    t.integer "installationTypeID", :null => false
    t.integer "assemblyLineTypeID", :null => false
    t.integer "quantity"
  end

  create_table "ramTypeRequirements", :id => false, :force => true do |t|
    t.integer "typeID",         :null => false
    t.integer "activityID",     :null => false
    t.integer "requiredTypeID", :null => false
    t.integer "quantity"
    t.float   "damagePerJob"
    t.integer "recycle"
  end

  create_table "staOperationServices", :id => false, :force => true do |t|
    t.integer "operationID", :null => false
    t.integer "serviceID",   :null => false
  end

  create_table "staOperations", :primary_key => "operationID", :force => true do |t|
    t.integer "activityID"
    t.string  "operationName",         :limit => 100
    t.string  "description",           :limit => 1000
    t.integer "fringe"
    t.integer "corridor"
    t.integer "hub"
    t.integer "border"
    t.integer "ratio"
    t.integer "caldariStationTypeID"
    t.integer "minmatarStationTypeID"
    t.integer "amarrStationTypeID"
    t.integer "gallenteStationTypeID"
    t.integer "joveStationTypeID"
  end

  create_table "staServices", :primary_key => "serviceID", :force => true do |t|
    t.string "serviceName", :limit => 100
    t.string "description", :limit => 1000
  end

  create_table "staStationTypes", :primary_key => "stationTypeID", :force => true do |t|
    t.float   "dockEntryX"
    t.float   "dockEntryY"
    t.float   "dockEntryZ"
    t.float   "dockOrientationX"
    t.float   "dockOrientationY"
    t.float   "dockOrientationZ"
    t.integer "operationID"
    t.integer "officeSlots"
    t.float   "reprocessingEfficiency"
    t.integer "conquerable"
  end

  create_table "staStations", :primary_key => "stationID", :force => true do |t|
    t.integer "security",                 :limit => 2
    t.float   "dockingCostPerVolume"
    t.float   "maxShipVolumeDockable"
    t.integer "officeRentalCost"
    t.integer "operationID"
    t.integer "stationTypeID"
    t.integer "corporationID"
    t.integer "solarSystemID"
    t.integer "constellationID"
    t.integer "regionID"
    t.string  "stationName",              :limit => 100
    t.float   "x"
    t.float   "y"
    t.float   "z"
    t.float   "reprocessingEfficiency"
    t.float   "reprocessingStationsTake"
    t.integer "reprocessingHangarFlag"
  end

  add_index "staStations", ["constellationID"], :name => "staStations_IX_constellation"
  add_index "staStations", ["corporationID"], :name => "staStations_IX_corporation"
  add_index "staStations", ["operationID"], :name => "staStations_IX_operation"
  add_index "staStations", ["regionID"], :name => "staStations_IX_region"
  add_index "staStations", ["solarSystemID"], :name => "staStations_IX_system"
  add_index "staStations", ["stationTypeID"], :name => "staStations_IX_type"

  create_table "translationTables", :id => false, :force => true do |t|
    t.string  "sourceTable",      :limit => 200, :null => false
    t.string  "destinationTable", :limit => 200
    t.string  "translatedKey",    :limit => 200, :null => false
    t.integer "tcGroupID"
    t.integer "tcID"
  end

  create_table "trnTranslationColumns", :primary_key => "tcID", :force => true do |t|
    t.integer "tcGroupID",  :limit => 2
    t.string  "tableName",  :limit => 256, :null => false
    t.string  "columnName", :limit => 128, :null => false
    t.string  "masterID",   :limit => 128
  end

  create_table "trnTranslationLanguages", :primary_key => "numericLanguageID", :force => true do |t|
    t.string "languageID",   :limit => 50
    t.string "languageName", :limit => 200
  end

  create_table "trnTranslations", :id => false, :force => true do |t|
    t.integer "tcID",       :limit => 2,  :null => false
    t.integer "keyID",                    :null => false
    t.string  "languageID", :limit => 50, :null => false
    t.text    "text",                     :null => false
  end

  create_table "warCombatZoneSystems", :primary_key => "solarSystemID", :force => true do |t|
    t.integer "combatZoneID"
  end

  create_table "warCombatZones", :primary_key => "combatZoneID", :force => true do |t|
    t.string  "combatZoneName", :limit => 100
    t.integer "factionID"
    t.integer "centerSystemID"
    t.string  "description",    :limit => 500
  end

end
