local M = {}

M.IsolineZoneCategory = {
    CONGESTION_PRICING = "CongestionPricing",
    ENVIRONMENTAL = "Environmental",
    VIGNETTE = "Vignette",
}

M.MatchingStrategy = {
    MATCH_ANY = "MatchAny",
    MATCH_MOST_SIGNIFICANT_ROAD = "MatchMostSignificantRoad",
}

M.SideOfStreetMatchingStrategy = {
    ANY_STREET = "AnyStreet",
    DIVIDED_STREET_ONLY = "DividedStreetOnly",
}

M.GeometryFormat = {
    FLEXIBLE_POLYLINE = "FlexiblePolyline",
    SIMPLE = "Simple",
}

M.IsolineOptimizationObjective = {
    ACCURATE_CALCULATION = "AccurateCalculation",
    BALANCED_CALCULATION = "BalancedCalculation",
    FAST_CALCULATION = "FastCalculation",
}

M.RoutingObjective = {
    FASTEST_ROUTE = "FastestRoute",
    SHORTEST_ROUTE = "ShortestRoute",
}

M.TrafficUsage = {
    IGNORE_TRAFFIC_DATA = "IgnoreTrafficData",
    USE_TRAFFIC_DATA = "UseTrafficData",
}

M.IsolineTravelMode = {
    CAR = "Car",
    PEDESTRIAN = "Pedestrian",
    SCOOTER = "Scooter",
    TRUCK = "Truck",
}

M.IsolineEngineType = {
    ELECTRIC = "Electric",
    INTERNAL_COMBUSTION = "InternalCombustion",
    PLUGIN_HYBRID = "PluginHybrid",
}

M.IsolineHazardousCargoType = {
    COMBUSTIBLE = "Combustible",
    CORROSIVE = "Corrosive",
    EXPLOSIVE = "Explosive",
    FLAMMABLE = "Flammable",
    GAS = "Gas",
    HARMFUL_TO_WATER = "HarmfulToWater",
    ORGANIC = "Organic",
    OTHER = "Other",
    POISON = "Poison",
    POISONOUS_INHALATION = "PoisonousInhalation",
    RADIOACTIVE = "Radioactive",
}

M.IsolineTruckType = {
    LIGHT_TRUCK = "LightTruck",
    STRAIGHT_TRUCK = "StraightTruck",
    TRACTOR = "Tractor",
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "UnknownOperation",
    MISSING = "Missing",
    CANNOT_PARSE = "CannotParse",
    FIELD_VALIDATION_FAILED = "FieldValidationFailed",
    OTHER = "Other",
    UNKNOWN_FIELD = "UnknownField",
}

M.RouteMatrixZoneCategory = {
    CONGESTION_PRICING = "CongestionPricing",
    ENVIRONMENTAL = "Environmental",
    VIGNETTE = "Vignette",
}

M.RouteMatrixTravelMode = {
    CAR = "Car",
    PEDESTRIAN = "Pedestrian",
    SCOOTER = "Scooter",
    TRUCK = "Truck",
}

M.RouteMatrixHazardousCargoType = {
    COMBUSTIBLE = "Combustible",
    CORROSIVE = "Corrosive",
    EXPLOSIVE = "Explosive",
    FLAMMABLE = "Flammable",
    GAS = "Gas",
    HARMFUL_TO_WATER = "HarmfulToWater",
    ORGANIC = "Organic",
    OTHER = "Other",
    POISON = "Poison",
    POISONOUS_INHALATION = "PoisonousInhalation",
    RADIOACTIVE = "Radioactive",
}

M.RouteMatrixTruckType = {
    LIGHT_TRUCK = "LightTruck",
    STRAIGHT_TRUCK = "StraightTruck",
    TRACTOR = "Tractor",
}

M.RouteMatrixErrorCode = {
    NO_MATCH = "NoMatch",
    NO_MATCH_DESTINATION = "NoMatchDestination",
    NO_MATCH_ORIGIN = "NoMatchOrigin",
    NO_ROUTE = "NoRoute",
    OUT_OF_BOUNDS = "OutOfBounds",
    OUT_OF_BOUNDS_DESTINATION = "OutOfBoundsDestination",
    OUT_OF_BOUNDS_ORIGIN = "OutOfBoundsOrigin",
    OTHER = "Other",
    VIOLATION = "Violation",
}

M.RouteZoneCategory = {
    CONGESTION_PRICING = "CongestionPricing",
    ENVIRONMENTAL = "Environmental",
    VIGNETTE = "Vignette",
}

M.MeasurementSystem = {
    METRIC = "Metric",
    IMPERIAL = "Imperial",
}

M.RouteLegAdditionalFeature = {
    ELEVATION = "Elevation",
    INCIDENTS = "Incidents",
    PASS_THROUGH_WAYPOINTS = "PassThroughWaypoints",
    SUMMARY = "Summary",
    TOLLS = "Tolls",
    TRAVEL_STEP_INSTRUCTIONS = "TravelStepInstructions",
    TRUCK_ROAD_TYPES = "TruckRoadTypes",
    TYPICAL_DURATION = "TypicalDuration",
    ZONES = "Zones",
}

M.RouteSpanAdditionalFeature = {
    BEST_CASE_DURATION = "BestCaseDuration",
    CAR_ACCESS = "CarAccess",
    COUNTRY = "Country",
    DISTANCE = "Distance",
    DURATION = "Duration",
    DYNAMIC_SPEED = "DynamicSpeed",
    FUNCTIONAL_CLASSIFICATION = "FunctionalClassification",
    GATES = "Gates",
    INCIDENTS = "Incidents",
    NAMES = "Names",
    NOTICES = "Notices",
    PEDESTRIAN_ACCESS = "PedestrianAccess",
    RAILWAY_CROSSINGS = "RailwayCrossings",
    REGION = "Region",
    ROAD_ATTRIBUTES = "RoadAttributes",
    ROUTE_NUMBERS = "RouteNumbers",
    SCOOTER_ACCESS = "ScooterAccess",
    SPEED_LIMIT = "SpeedLimit",
    TOLL_SYSTEMS = "TollSystems",
    TRUCK_ACCESS = "TruckAccess",
    TRUCK_ROAD_TYPES = "TruckRoadTypes",
    TYPICAL_DURATION = "TypicalDuration",
    ZONES = "Zones",
    CONSUMPTION = "Consumption",
}

M.RouteTollVehicleCategory = {
    MINIBUS = "Minibus",
}

M.RouteTravelMode = {
    CAR = "Car",
    PEDESTRIAN = "Pedestrian",
    SCOOTER = "Scooter",
    TRUCK = "Truck",
}

M.RouteEngineType = {
    ELECTRIC = "Electric",
    INTERNAL_COMBUSTION = "InternalCombustion",
    PLUGIN_HYBRID = "PluginHybrid",
}

M.RouteHazardousCargoType = {
    COMBUSTIBLE = "Combustible",
    CORROSIVE = "Corrosive",
    EXPLOSIVE = "Explosive",
    FLAMMABLE = "Flammable",
    GAS = "Gas",
    HARMFUL_TO_WATER = "HarmfulToWater",
    ORGANIC = "Organic",
    OTHER = "Other",
    POISON = "Poison",
    POISONOUS_INHALATION = "PoisonousInhalation",
    RADIOACTIVE = "Radioactive",
}

M.RouteTruckType = {
    LIGHT_TRUCK = "LightTruck",
    STRAIGHT_TRUCK = "StraightTruck",
    TRACTOR = "Tractor",
}

M.RouteTravelStepType = {
    DEFAULT = "Default",
    TURN_BY_TURN = "TurnByTurn",
}

M.RouteResponseNoticeCode = {
    MAIN_LANGUAGE_NOT_FOUND = "MainLanguageNotFound",
    OTHER = "Other",
    TRAVEL_TIME_EXCEEDS_DRIVER_WORK_HOURS = "TravelTimeExceedsDriverWorkHours",
}

M.RouteNoticeImpact = {
    HIGH = "High",
    LOW = "Low",
}

M.RouteFerryAfterTravelStepType = {
    DEBOARD = "Deboard",
}

M.RouteFerryBeforeTravelStepType = {
    BOARD = "Board",
}

M.RouteFerryNoticeCode = {
    ACCURATE_POLYLINE_UNAVAILABLE = "AccuratePolylineUnavailable",
    NO_SCHEDULE = "NoSchedule",
    OTHER = "Other",
    VIOLATED_AVOID_FERRY = "ViolatedAvoidFerry",
    VIOLATED_AVOID_RAIL_FERRY = "ViolatedAvoidRailFerry",
    SEASONAL_CLOSURE = "SeasonalClosure",
    POTENTIAL_VIOLATED_VEHICLE_RESTRICTION_USAGE = "PotentialViolatedVehicleRestrictionUsage",
    VIOLATED_AVOID_AREAS = "ViolatedAvoidAreas",
    VIOLATED_VEHICLE_RESTRICTION = "ViolatedVehicleRestriction",
}

M.RouteFerryTravelStepType = {
    DEPART = "Depart",
    CONTINUE = "Continue",
    ARRIVE = "Arrive",
}

M.RouteSideOfStreet = {
    LEFT = "Left",
    RIGHT = "Right",
}

M.RoutePedestrianNoticeCode = {
    ACCURATE_POLYLINE_UNAVAILABLE = "AccuratePolylineUnavailable",
    OTHER = "Other",
    VIOLATED_AVOID_DIRT_ROAD = "ViolatedAvoidDirtRoad",
    VIOLATED_AVOID_TUNNEL = "ViolatedAvoidTunnel",
    VIOLATED_PEDESTRIAN_OPTION = "ViolatedPedestrianOption",
    VIOLATED_AVOID_AREAS = "ViolatedAvoidAreas",
}

M.RouteSpanPedestrianAccessAttribute = {
    ALLOWED = "Allowed",
    INDOORS = "Indoors",
    NO_THROUGH_TRAFFIC = "NoThroughTraffic",
    PARK = "Park",
    STAIRS = "Stairs",
    TOLL_ROAD = "TollRoad",
}

M.RouteSpanRoadAttribute = {
    BRIDGE = "Bridge",
    BUILT_UP_AREA = "BuiltUpArea",
    CONTROLLED_ACCESS_HIGHWAY = "ControlledAccessHighway",
    DIRT_ROAD = "DirtRoad",
    DIVIDED_ROAD = "DividedRoad",
    MOTORWAY = "Motorway",
    PRIVATE_ROAD = "PrivateRoad",
    RAMP = "Ramp",
    RIGHT_HAND_TRAFFIC = "RightHandTraffic",
    ROUNDABOUT = "Roundabout",
    TUNNEL = "Tunnel",
    UNDER_CONSTRUCTION = "UnderConstruction",
}

M.RouteDirection = {
    EAST = "East",
    NORTH = "North",
    SOUTH = "South",
    WEST = "West",
}

M.RouteRoadType = {
    HIGHWAY = "Highway",
    RURAL = "Rural",
    URBAN = "Urban",
}

M.RouteSteeringDirection = {
    LEFT = "Left",
    RIGHT = "Right",
    STRAIGHT = "Straight",
}

M.RouteTurnIntensity = {
    SHARP = "Sharp",
    SLIGHT = "Slight",
    TYPICAL = "Typical",
}

M.RoutePedestrianTravelStepType = {
    ARRIVE = "Arrive",
    CONTINUE = "Continue",
    DEPART = "Depart",
    KEEP = "Keep",
    ROUNDABOUT_ENTER = "RoundaboutEnter",
    ROUNDABOUT_EXIT = "RoundaboutExit",
    ROUNDABOUT_PASS = "RoundaboutPass",
    TURN = "Turn",
}

M.RouteLegTravelMode = {
    CAR = "Car",
    FERRY = "Ferry",
    PEDESTRIAN = "Pedestrian",
    SCOOTER = "Scooter",
    TRUCK = "Truck",
    CAR_SHUTTLE_TRAIN = "CarShuttleTrain",
}

M.RouteLegType = {
    FERRY = "Ferry",
    PEDESTRIAN = "Pedestrian",
    VEHICLE = "Vehicle",
}

M.RouteVehicleIncidentSeverity = {
    CRITICAL = "Critical",
    HIGH = "High",
    MEDIUM = "Medium",
    LOW = "Low",
}

M.RouteVehicleIncidentType = {
    ACCIDENT = "Accident",
    CONGESTION = "Congestion",
    CONSTRUCTION = "Construction",
    DISABLED_VEHICLE = "DisabledVehicle",
    LANE_RESTRICTION = "LaneRestriction",
    MASS_TRANSIT = "MassTransit",
    OTHER = "Other",
    PLANNED_EVENT = "PlannedEvent",
    ROAD_CLOSURE = "RoadClosure",
    ROAD_HAZARD = "RoadHazard",
    WEATHER = "Weather",
}

M.RouteVehicleNoticeCode = {
    ACCURATE_POLYLINE_UNAVAILABLE = "AccuratePolylineUnavailable",
    OTHER = "Other",
    POTENTIAL_VIOLATED_AVOID_TOLL_ROAD_USAGE = "PotentialViolatedAvoidTollRoadUsage",
    POTENTIAL_VIOLATED_CARPOOL_USAGE = "PotentialViolatedCarpoolUsage",
    POTENTIAL_VIOLATED_TURN_RESTRICTION_USAGE = "PotentialViolatedTurnRestrictionUsage",
    POTENTIAL_VIOLATED_VEHICLE_RESTRICTION_USAGE = "PotentialViolatedVehicleRestrictionUsage",
    POTENTIAL_VIOLATED_ZONE_RESTRICTION_USAGE = "PotentialViolatedZoneRestrictionUsage",
    SEASONAL_CLOSURE = "SeasonalClosure",
    TOLLS_DATA_TEMPORARILY_UNAVAILABLE = "TollsDataTemporarilyUnavailable",
    TOLLS_DATA_UNAVAILABLE = "TollsDataUnavailable",
    TOLL_TRANSPONDER = "TollTransponder",
    VIOLATED_AVOID_CONTROLLED_ACCESS_HIGHWAY = "ViolatedAvoidControlledAccessHighway",
    VIOLATED_AVOID_DIFFICULT_TURNS = "ViolatedAvoidDifficultTurns",
    VIOLATED_AVOID_DIRT_ROAD = "ViolatedAvoidDirtRoad",
    VIOLATED_AVOID_SEASONAL_CLOSURE = "ViolatedAvoidSeasonalClosure",
    VIOLATED_AVOID_TOLL_ROAD = "ViolatedAvoidTollRoad",
    VIOLATED_AVOID_TOLL_TRANSPONDER = "ViolatedAvoidTollTransponder",
    VIOLATED_AVOID_TRUCK_ROAD_TYPE = "ViolatedAvoidTruckRoadType",
    VIOLATED_AVOID_TUNNEL = "ViolatedAvoidTunnel",
    VIOLATED_AVOID_U_TURNS = "ViolatedAvoidUTurns",
    VIOLATED_BLOCKED_ROAD = "ViolatedBlockedRoad",
    VIOLATED_CARPOOL = "ViolatedCarpool",
    VIOLATED_EMERGENCY_GATE = "ViolatedEmergencyGate",
    VIOLATED_START_DIRECTION = "ViolatedStartDirection",
    VIOLATED_TURN_RESTRICTION = "ViolatedTurnRestriction",
    VIOLATED_VEHICLE_RESTRICTION = "ViolatedVehicleRestriction",
    VIOLATED_ZONE_RESTRICTION = "ViolatedZoneRestriction",
    TRAVEL_TIME_EXCEEDS_DRIVER_WORK_HOURS = "TravelTimeExceedsDriverWorkHours",
}

M.RouteWeightConstraintType = {
    CURRENT = "Current",
    GROSS = "Gross",
    UNKNOWN = "Unknown",
}

M.RouteSpanCarAccessAttribute = {
    ALLOWED = "Allowed",
    NO_THROUGH_TRAFFIC = "NoThroughTraffic",
    TOLL_ROAD = "TollRoad",
}

M.RouteSpanGateAttribute = {
    EMERGENCY = "Emergency",
    KEY_ACCESS = "KeyAccess",
    PERMISSION_REQUIRED = "PermissionRequired",
}

M.RouteSpanRailwayCrossingAttribute = {
    PROTECTED = "Protected",
    UNPROTECTED = "Unprotected",
}

M.RouteSpanScooterAccessAttribute = {
    ALLOWED = "Allowed",
    NO_THROUGH_TRAFFIC = "NoThroughTraffic",
    TOLL_ROAD = "TollRoad",
}

M.RouteSpanTruckAccessAttribute = {
    ALLOWED = "Allowed",
    NO_THROUGH_TRAFFIC = "NoThroughTraffic",
    TOLL_ROAD = "TollRoad",
}

M.RouteTollPassValidityPeriodType = {
    ANNUAL = "Annual",
    DAYS = "Days",
    EXTENDED_ANNUAL = "ExtendedAnnual",
    MINUTES = "Minutes",
    MONTHS = "Months",
}

M.RouteTollPaymentMethod = {
    BANK_CARD = "BankCard",
    CASH = "Cash",
    CASH_EXACT = "CashExact",
    CREDIT_CARD = "CreditCard",
    PASS_SUBSCRIPTION = "PassSubscription",
    TRAVEL_CARD = "TravelCard",
    TRANSPONDER = "Transponder",
    VIDEO_TOLL = "VideoToll",
}

M.RouteVehicleTravelStepType = {
    ARRIVE = "Arrive",
    CONTINUE = "Continue",
    CONTINUE_HIGHWAY = "ContinueHighway",
    DEPART = "Depart",
    ENTER_HIGHWAY = "EnterHighway",
    EXIT = "Exit",
    KEEP = "Keep",
    RAMP = "Ramp",
    ROUNDABOUT_ENTER = "RoundaboutEnter",
    ROUNDABOUT_EXIT = "RoundaboutExit",
    ROUNDABOUT_PASS = "RoundaboutPass",
    TURN = "Turn",
    U_TURN = "UTurn",
}

M.DayOfWeek = {
    MONDAY = "Monday",
    TUESDAY = "Tuesday",
    WEDNESDAY = "Wednesday",
    THURSDAY = "Thursday",
    FRIDAY = "Friday",
    SATURDAY = "Saturday",
    SUNDAY = "Sunday",
}

M.WaypointOptimizationClusteringAlgorithm = {
    DRIVING_DISTANCE = "DrivingDistance",
    TOPOLOGY_SEGMENT = "TopologySegment",
}

M.WaypointOptimizationServiceTimeTreatment = {
    REST = "Rest",
    WORK = "Work",
}

M.WaypointOptimizationSequencingObjective = {
    FASTEST_ROUTE = "FastestRoute",
    SHORTEST_ROUTE = "ShortestRoute",
}

M.WaypointOptimizationTravelMode = {
    CAR = "Car",
    PEDESTRIAN = "Pedestrian",
    SCOOTER = "Scooter",
    TRUCK = "Truck",
}

M.WaypointOptimizationHazardousCargoType = {
    COMBUSTIBLE = "Combustible",
    CORROSIVE = "Corrosive",
    EXPLOSIVE = "Explosive",
    FLAMMABLE = "Flammable",
    GAS = "Gas",
    HARMFUL_TO_WATER = "HarmfulToWater",
    ORGANIC = "Organic",
    OTHER = "Other",
    POISON = "Poison",
    POISONOUS_INHALATION = "PoisonousInhalation",
    RADIOACTIVE = "Radioactive",
}

M.WaypointOptimizationTruckType = {
    STRAIGHT_TRUCK = "StraightTruck",
    TRACTOR = "Tractor",
}

M.WaypointOptimizationConstraint = {
    ACCESS_HOURS = "AccessHours",
    APPOINTMENT_TIME = "AppointmentTime",
    BEFORE = "Before",
    HEADING = "Heading",
    SERVICE_DURATION = "ServiceDuration",
    SIDE_OF_STREET = "SideOfStreet",
}

M.RoadSnapTravelMode = {
    CAR = "Car",
    PEDESTRIAN = "Pedestrian",
    SCOOTER = "Scooter",
    TRUCK = "Truck",
}

M.RoadSnapHazardousCargoType = {
    COMBUSTIBLE = "Combustible",
    CORROSIVE = "Corrosive",
    EXPLOSIVE = "Explosive",
    FLAMMABLE = "Flammable",
    GAS = "Gas",
    HARMFUL_TO_WATER = "HarmfulToWater",
    ORGANIC = "Organic",
    OTHER = "Other",
    POISON = "Poison",
    POISONOUS_INHALATION = "PoisonousInhalation",
    RADIOACTIVE = "Radioactive",
}

M.RoadSnapNoticeCode = {
    TRACE_POINTS_HEADING_IGNORED = "TracePointsHeadingIgnored",
    TRACE_POINTS_IGNORED = "TracePointsIgnored",
    TRACE_POINTS_MOVED_BY_LARGE_DISTANCE = "TracePointsMovedByLargeDistance",
    TRACE_POINTS_NOT_MATCHED = "TracePointsNotMatched",
    TRACE_POINTS_OUT_OF_SEQUENCE = "TracePointsOutOfSequence",
    TRACE_POINTS_SPEED_ESTIMATED = "TracePointsSpeedEstimated",
    TRACE_POINTS_SPEED_IGNORED = "TracePointsSpeedIgnored",
}

return M
