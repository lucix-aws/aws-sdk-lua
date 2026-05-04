local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.IsolineAllowOptions = {
    type = "structure",
    id = "IsolineAllowOptions",
    members = {
        Hot = {
            type = "boolean",
        },
        Hov = {
            type = "boolean",
        },
    },
}

M.Corridor = {
    type = "structure",
    id = "Corridor",
    members = {
        LineString = {
            type = "list",
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
        Radius = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PolylineCorridor = {
    type = "structure",
    id = "PolylineCorridor",
    members = {
        Polyline = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Radius = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.IsolineAvoidanceAreaGeometry = {
    type = "structure",
    id = "IsolineAvoidanceAreaGeometry",
    members = {
        BoundingBox = {
            type = "list",
            member = { type = "double" },
        },
        Corridor = M.Corridor,
        Polygon = {
            type = "list",
            member = { type = "list" },
        },
        PolylineCorridor = M.PolylineCorridor,
        PolylinePolygon = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.IsolineAvoidanceArea = {
    type = "structure",
    id = "IsolineAvoidanceArea",
    members = {
        Except = {
            type = "list",
            member = M.IsolineAvoidanceAreaGeometry,
        },
        Geometry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IsolineAvoidanceAreaGeometry }),
    },
}

M.IsolineZoneCategory = {
    CONGESTION_PRICING = "CongestionPricing",
    ENVIRONMENTAL = "Environmental",
    VIGNETTE = "Vignette",
}

M.IsolineAvoidanceZoneCategory = {
    type = "structure",
    id = "IsolineAvoidanceZoneCategory",
    members = {
        Category = {
            type = "string",
        },
    },
}

M.IsolineAvoidanceOptions = {
    type = "structure",
    id = "IsolineAvoidanceOptions",
    members = {
        Areas = {
            type = "list",
            member = M.IsolineAvoidanceArea,
        },
        CarShuttleTrains = {
            type = "boolean",
        },
        ControlledAccessHighways = {
            type = "boolean",
        },
        DirtRoads = {
            type = "boolean",
        },
        Ferries = {
            type = "boolean",
        },
        SeasonalClosure = {
            type = "boolean",
        },
        TollRoads = {
            type = "boolean",
        },
        TollTransponders = {
            type = "boolean",
        },
        TruckRoadTypes = {
            type = "list",
            member = { type = "string" },
        },
        Tunnels = {
            type = "boolean",
        },
        UTurns = {
            type = "boolean",
        },
        ZoneCategories = {
            type = "list",
            member = M.IsolineAvoidanceZoneCategory,
        },
    },
}

M.MatchingStrategy = {
    MATCH_ANY = "MatchAny",
    MATCH_MOST_SIGNIFICANT_ROAD = "MatchMostSignificantRoad",
}

M.IsolineMatchingOptions = {
    type = "structure",
    id = "IsolineMatchingOptions",
    members = {
        NameHint = {
            type = "string",
        },
        OnRoadThreshold = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Radius = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Strategy = {
            type = "string",
        },
    },
}

M.SideOfStreetMatchingStrategy = {
    ANY_STREET = "AnyStreet",
    DIVIDED_STREET_ONLY = "DividedStreetOnly",
}

M.IsolineSideOfStreetOptions = {
    type = "structure",
    id = "IsolineSideOfStreetOptions",
    members = {
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        UseWith = {
            type = "string",
        },
    },
}

M.IsolineDestinationOptions = {
    type = "structure",
    id = "IsolineDestinationOptions",
    members = {
        AvoidActionsForDistance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Heading = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Matching = M.IsolineMatchingOptions,
        SideOfStreet = M.IsolineSideOfStreetOptions,
    },
}

M.GeometryFormat = {
    FLEXIBLE_POLYLINE = "FlexiblePolyline",
    SIMPLE = "Simple",
}

M.IsolineGranularityOptions = {
    type = "structure",
    id = "IsolineGranularityOptions",
    members = {
        MaxPoints = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        MaxResolution = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
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

M.IsolineOriginOptions = {
    type = "structure",
    id = "IsolineOriginOptions",
    members = {
        AvoidActionsForDistance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Heading = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Matching = M.IsolineMatchingOptions,
        SideOfStreet = M.IsolineSideOfStreetOptions,
    },
}

M.IsolineThresholds = {
    type = "structure",
    id = "IsolineThresholds",
    members = {
        Distance = {
            type = "list",
            member = { type = "long" },
        },
        Time = {
            type = "list",
            member = { type = "long" },
        },
    },
}

M.TrafficUsage = {
    IGNORE_TRAFFIC_DATA = "IgnoreTrafficData",
    USE_TRAFFIC_DATA = "UseTrafficData",
}

M.IsolineTrafficOptions = {
    type = "structure",
    id = "IsolineTrafficOptions",
    members = {
        FlowEventThresholdOverride = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Usage = {
            type = "string",
        },
    },
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

M.IsolineVehicleLicensePlate = {
    type = "structure",
    id = "IsolineVehicleLicensePlate",
    members = {
        LastCharacter = {
            type = "string",
        },
    },
}

M.IsolineCarOptions = {
    type = "structure",
    id = "IsolineCarOptions",
    members = {
        EngineType = {
            type = "string",
        },
        LicensePlate = M.IsolineVehicleLicensePlate,
        MaxSpeed = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        Occupancy = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.IsolineScooterOptions = {
    type = "structure",
    id = "IsolineScooterOptions",
    members = {
        EngineType = {
            type = "string",
        },
        LicensePlate = M.IsolineVehicleLicensePlate,
        MaxSpeed = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        Occupancy = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
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

M.IsolineTrailerOptions = {
    type = "structure",
    id = "IsolineTrailerOptions",
    members = {
        AxleCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        TrailerCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.IsolineTruckType = {
    LIGHT_TRUCK = "LightTruck",
    STRAIGHT_TRUCK = "StraightTruck",
    TRACTOR = "Tractor",
}

M.WeightPerAxleGroup = {
    type = "structure",
    id = "WeightPerAxleGroup",
    members = {
        Single = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Tandem = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Triple = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Quad = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Quint = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.IsolineTruckOptions = {
    type = "structure",
    id = "IsolineTruckOptions",
    members = {
        AxleCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        EngineType = {
            type = "string",
        },
        GrossWeight = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        HazardousCargos = {
            type = "list",
            member = { type = "string" },
        },
        Height = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        HeightAboveFirstAxle = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        KpraLength = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Length = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        LicensePlate = M.IsolineVehicleLicensePlate,
        MaxSpeed = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        Occupancy = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        PayloadCapacity = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        TireCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        Trailer = M.IsolineTrailerOptions,
        TruckType = {
            type = "string",
        },
        TunnelRestrictionCode = {
            type = "string",
        },
        WeightPerAxle = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        WeightPerAxleGroup = M.WeightPerAxleGroup,
        Width = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.IsolineTravelModeOptions = {
    type = "structure",
    id = "IsolineTravelModeOptions",
    members = {
        Car = M.IsolineCarOptions,
        Scooter = M.IsolineScooterOptions,
        Truck = M.IsolineTruckOptions,
    },
}

M.CalculateIsolinesInput = {
    type = "structure",
    id = "CalculateIsolinesInput",
    members = {
        Allow = M.IsolineAllowOptions,
        ArrivalTime = {
            type = "string",
        },
        Avoid = M.IsolineAvoidanceOptions,
        DepartNow = {
            type = "boolean",
        },
        DepartureTime = {
            type = "string",
        },
        Destination = {
            type = "list",
            member = { type = "double" },
        },
        DestinationOptions = M.IsolineDestinationOptions,
        IsolineGeometryFormat = {
            type = "string",
        },
        IsolineGranularity = M.IsolineGranularityOptions,
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
        OptimizeIsolineFor = {
            type = "string",
        },
        OptimizeRoutingFor = {
            type = "string",
        },
        Origin = {
            type = "list",
            member = { type = "double" },
        },
        OriginOptions = M.IsolineOriginOptions,
        Thresholds = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IsolineThresholds }),
        Traffic = M.IsolineTrafficOptions,
        TravelMode = {
            type = "string",
        },
        TravelModeOptions = M.IsolineTravelModeOptions,
    },
}

M.IsolineConnectionGeometry = {
    type = "structure",
    id = "IsolineConnectionGeometry",
    members = {
        LineString = {
            type = "list",
            member = { type = "list" },
        },
        Polyline = {
            type = "string",
        },
    },
}

M.IsolineConnection = {
    type = "structure",
    id = "IsolineConnection",
    members = {
        FromPolygonIndex = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Geometry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IsolineConnectionGeometry }),
        ToPolygonIndex = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.IsolineShapeGeometry = {
    type = "structure",
    id = "IsolineShapeGeometry",
    members = {
        Polygon = {
            type = "list",
            member = { type = "list" },
        },
        PolylinePolygon = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Isoline = {
    type = "structure",
    id = "Isoline",
    members = {
        Connections = {
            type = "list",
            member = M.IsolineConnection,
            traits = {
                required = true,
            },
        },
        DistanceThreshold = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Geometries = {
            type = "list",
            member = M.IsolineShapeGeometry,
            traits = {
                required = true,
            },
        },
        TimeThreshold = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.CalculateIsolinesOutput = {
    type = "structure",
    id = "CalculateIsolinesOutput",
    members = {
        ArrivalTime = {
            type = "string",
        },
        DepartureTime = {
            type = "string",
        },
        IsolineGeometryFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Isolines = {
            type = "list",
            member = M.Isoline,
            traits = {
                required = true,
            },
        },
        PricingBucket = {
            type = "string",
            traits = {
                http_header = "x-amz-geo-pricing-bucket",
                required = true,
            },
        },
        SnappedDestination = {
            type = "list",
            member = { type = "double" },
        },
        SnappedOrigin = {
            type = "list",
            member = { type = "double" },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "UnknownOperation",
    MISSING = "Missing",
    CANNOT_PARSE = "CannotParse",
    FIELD_VALIDATION_FAILED = "FieldValidationFailed",
    OTHER = "Other",
    UNKNOWN_FIELD = "UnknownField",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
        Reason = {
            type = "string",
            traits = {
                json_name = "reason",
                required = true,
            },
        },
        FieldList = {
            type = "list",
            member = M.ValidationExceptionField,
            traits = {
                json_name = "fieldList",
                required = true,
            },
        },
    },
}

M.RouteMatrixAllowOptions = {
    type = "structure",
    id = "RouteMatrixAllowOptions",
    members = {
        Hot = {
            type = "boolean",
        },
        Hov = {
            type = "boolean",
        },
    },
}

M.RouteMatrixAvoidanceAreaGeometry = {
    type = "structure",
    id = "RouteMatrixAvoidanceAreaGeometry",
    members = {
        BoundingBox = {
            type = "list",
            member = { type = "double" },
        },
        Polygon = {
            type = "list",
            member = { type = "list" },
        },
        PolylinePolygon = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RouteMatrixAvoidanceArea = {
    type = "structure",
    id = "RouteMatrixAvoidanceArea",
    members = {
        Geometry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteMatrixAvoidanceAreaGeometry }),
    },
}

M.RouteMatrixZoneCategory = {
    CONGESTION_PRICING = "CongestionPricing",
    ENVIRONMENTAL = "Environmental",
    VIGNETTE = "Vignette",
}

M.RouteMatrixAvoidanceZoneCategory = {
    type = "structure",
    id = "RouteMatrixAvoidanceZoneCategory",
    members = {
        Category = {
            type = "string",
        },
    },
}

M.RouteMatrixAvoidanceOptions = {
    type = "structure",
    id = "RouteMatrixAvoidanceOptions",
    members = {
        Areas = {
            type = "list",
            member = M.RouteMatrixAvoidanceArea,
        },
        CarShuttleTrains = {
            type = "boolean",
        },
        ControlledAccessHighways = {
            type = "boolean",
        },
        DirtRoads = {
            type = "boolean",
        },
        Ferries = {
            type = "boolean",
        },
        TollRoads = {
            type = "boolean",
        },
        TollTransponders = {
            type = "boolean",
        },
        TruckRoadTypes = {
            type = "list",
            member = { type = "string" },
        },
        Tunnels = {
            type = "boolean",
        },
        UTurns = {
            type = "boolean",
        },
        ZoneCategories = {
            type = "list",
            member = M.RouteMatrixAvoidanceZoneCategory,
        },
    },
}

M.RouteMatrixMatchingOptions = {
    type = "structure",
    id = "RouteMatrixMatchingOptions",
    members = {
        NameHint = {
            type = "string",
        },
        OnRoadThreshold = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Radius = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Strategy = {
            type = "string",
        },
    },
}

M.RouteMatrixSideOfStreetOptions = {
    type = "structure",
    id = "RouteMatrixSideOfStreetOptions",
    members = {
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        UseWith = {
            type = "string",
        },
    },
}

M.RouteMatrixDestinationOptions = {
    type = "structure",
    id = "RouteMatrixDestinationOptions",
    members = {
        AvoidActionsForDistance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Heading = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Matching = M.RouteMatrixMatchingOptions,
        SideOfStreet = M.RouteMatrixSideOfStreetOptions,
    },
}

M.RouteMatrixDestination = {
    type = "structure",
    id = "RouteMatrixDestination",
    members = {
        Options = M.RouteMatrixDestinationOptions,
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
    },
}

M.RouteMatrixExclusionOptions = {
    type = "structure",
    id = "RouteMatrixExclusionOptions",
    members = {
        Countries = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RouteMatrixOriginOptions = {
    type = "structure",
    id = "RouteMatrixOriginOptions",
    members = {
        AvoidActionsForDistance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Heading = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Matching = M.RouteMatrixMatchingOptions,
        SideOfStreet = M.RouteMatrixSideOfStreetOptions,
    },
}

M.RouteMatrixOrigin = {
    type = "structure",
    id = "RouteMatrixOrigin",
    members = {
        Options = M.RouteMatrixOriginOptions,
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
    },
}

M.RouteMatrixAutoCircle = {
    type = "structure",
    id = "RouteMatrixAutoCircle",
    members = {
        Margin = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        MaxRadius = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.Circle = {
    type = "structure",
    id = "Circle",
    members = {
        Center = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        Radius = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteMatrixBoundaryGeometry = {
    type = "structure",
    id = "RouteMatrixBoundaryGeometry",
    members = {
        AutoCircle = M.RouteMatrixAutoCircle,
        Circle = M.Circle,
        BoundingBox = {
            type = "list",
            member = { type = "double" },
        },
        Polygon = {
            type = "list",
            member = { type = "list" },
        },
    },
}

M.RouteMatrixBoundary = {
    type = "structure",
    id = "RouteMatrixBoundary",
    members = {
        Geometry = M.RouteMatrixBoundaryGeometry,
        Unbounded = {
            type = "boolean",
        },
    },
}

M.RouteMatrixTrafficOptions = {
    type = "structure",
    id = "RouteMatrixTrafficOptions",
    members = {
        FlowEventThresholdOverride = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Usage = {
            type = "string",
        },
    },
}

M.RouteMatrixTravelMode = {
    CAR = "Car",
    PEDESTRIAN = "Pedestrian",
    SCOOTER = "Scooter",
    TRUCK = "Truck",
}

M.RouteMatrixVehicleLicensePlate = {
    type = "structure",
    id = "RouteMatrixVehicleLicensePlate",
    members = {
        LastCharacter = {
            type = "string",
        },
    },
}

M.RouteMatrixCarOptions = {
    type = "structure",
    id = "RouteMatrixCarOptions",
    members = {
        LicensePlate = M.RouteMatrixVehicleLicensePlate,
        MaxSpeed = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        Occupancy = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.RouteMatrixScooterOptions = {
    type = "structure",
    id = "RouteMatrixScooterOptions",
    members = {
        LicensePlate = M.RouteMatrixVehicleLicensePlate,
        MaxSpeed = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        Occupancy = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
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

M.RouteMatrixTrailerOptions = {
    type = "structure",
    id = "RouteMatrixTrailerOptions",
    members = {
        TrailerCount = {
            type = "integer",
        },
    },
}

M.RouteMatrixTruckType = {
    LIGHT_TRUCK = "LightTruck",
    STRAIGHT_TRUCK = "StraightTruck",
    TRACTOR = "Tractor",
}

M.RouteMatrixTruckOptions = {
    type = "structure",
    id = "RouteMatrixTruckOptions",
    members = {
        AxleCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        GrossWeight = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        HazardousCargos = {
            type = "list",
            member = { type = "string" },
        },
        Height = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        KpraLength = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Length = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        LicensePlate = M.RouteMatrixVehicleLicensePlate,
        MaxSpeed = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        Occupancy = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        PayloadCapacity = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Trailer = M.RouteMatrixTrailerOptions,
        TruckType = {
            type = "string",
        },
        TunnelRestrictionCode = {
            type = "string",
        },
        WeightPerAxle = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        WeightPerAxleGroup = M.WeightPerAxleGroup,
        Width = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.RouteMatrixTravelModeOptions = {
    type = "structure",
    id = "RouteMatrixTravelModeOptions",
    members = {
        Car = M.RouteMatrixCarOptions,
        Scooter = M.RouteMatrixScooterOptions,
        Truck = M.RouteMatrixTruckOptions,
    },
}

M.CalculateRouteMatrixInput = {
    type = "structure",
    id = "CalculateRouteMatrixInput",
    members = {
        Allow = M.RouteMatrixAllowOptions,
        Avoid = M.RouteMatrixAvoidanceOptions,
        DepartNow = {
            type = "boolean",
        },
        DepartureTime = {
            type = "string",
        },
        Destinations = {
            type = "list",
            member = M.RouteMatrixDestination,
            traits = {
                required = true,
            },
        },
        Exclude = M.RouteMatrixExclusionOptions,
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
        OptimizeRoutingFor = {
            type = "string",
        },
        Origins = {
            type = "list",
            member = M.RouteMatrixOrigin,
            traits = {
                required = true,
            },
        },
        RoutingBoundary = M.RouteMatrixBoundary,
        Traffic = M.RouteMatrixTrafficOptions,
        TravelMode = {
            type = "string",
        },
        TravelModeOptions = M.RouteMatrixTravelModeOptions,
    },
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

M.RouteMatrixEntry = {
    type = "structure",
    id = "RouteMatrixEntry",
    members = {
        Distance = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Duration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Error = {
            type = "string",
        },
    },
}

M.CalculateRouteMatrixOutput = {
    type = "structure",
    id = "CalculateRouteMatrixOutput",
    members = {
        ErrorCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        PricingBucket = {
            type = "string",
            traits = {
                http_header = "x-amz-geo-pricing-bucket",
                required = true,
            },
        },
        RouteMatrix = {
            type = "list",
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
        RoutingBoundary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteMatrixBoundary }),
    },
}

M.RouteAllowOptions = {
    type = "structure",
    id = "RouteAllowOptions",
    members = {
        Hot = {
            type = "boolean",
        },
        Hov = {
            type = "boolean",
        },
    },
}

M.RouteAvoidanceAreaGeometry = {
    type = "structure",
    id = "RouteAvoidanceAreaGeometry",
    members = {
        Corridor = M.Corridor,
        BoundingBox = {
            type = "list",
            member = { type = "double" },
        },
        Polygon = {
            type = "list",
            member = { type = "list" },
        },
        PolylineCorridor = M.PolylineCorridor,
        PolylinePolygon = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RouteAvoidanceArea = {
    type = "structure",
    id = "RouteAvoidanceArea",
    members = {
        Except = {
            type = "list",
            member = M.RouteAvoidanceAreaGeometry,
        },
        Geometry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteAvoidanceAreaGeometry }),
    },
}

M.RouteZoneCategory = {
    CONGESTION_PRICING = "CongestionPricing",
    ENVIRONMENTAL = "Environmental",
    VIGNETTE = "Vignette",
}

M.RouteAvoidanceZoneCategory = {
    type = "structure",
    id = "RouteAvoidanceZoneCategory",
    members = {
        Category = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteAvoidanceOptions = {
    type = "structure",
    id = "RouteAvoidanceOptions",
    members = {
        Areas = {
            type = "list",
            member = M.RouteAvoidanceArea,
        },
        CarShuttleTrains = {
            type = "boolean",
        },
        ControlledAccessHighways = {
            type = "boolean",
        },
        DirtRoads = {
            type = "boolean",
        },
        Ferries = {
            type = "boolean",
        },
        SeasonalClosure = {
            type = "boolean",
        },
        TollRoads = {
            type = "boolean",
        },
        TollTransponders = {
            type = "boolean",
        },
        TruckRoadTypes = {
            type = "list",
            member = { type = "string" },
        },
        Tunnels = {
            type = "boolean",
        },
        UTurns = {
            type = "boolean",
        },
        ZoneCategories = {
            type = "list",
            member = M.RouteAvoidanceZoneCategory,
        },
    },
}

M.RouteMatchingOptions = {
    type = "structure",
    id = "RouteMatchingOptions",
    members = {
        NameHint = {
            type = "string",
        },
        OnRoadThreshold = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Radius = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Strategy = {
            type = "string",
        },
    },
}

M.RouteSideOfStreetOptions = {
    type = "structure",
    id = "RouteSideOfStreetOptions",
    members = {
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        UseWith = {
            type = "string",
        },
    },
}

M.RouteDestinationOptions = {
    type = "structure",
    id = "RouteDestinationOptions",
    members = {
        AvoidActionsForDistance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        AvoidUTurns = {
            type = "boolean",
        },
        Heading = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Matching = M.RouteMatchingOptions,
        SideOfStreet = M.RouteSideOfStreetOptions,
        StopDuration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.RouteDriverScheduleInterval = {
    type = "structure",
    id = "RouteDriverScheduleInterval",
    members = {
        DriveDuration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        RestDuration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.RouteDriverOptions = {
    type = "structure",
    id = "RouteDriverOptions",
    members = {
        Schedule = {
            type = "list",
            member = M.RouteDriverScheduleInterval,
        },
    },
}

M.RouteExclusionOptions = {
    type = "structure",
    id = "RouteExclusionOptions",
    members = {
        Countries = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
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

M.RouteOriginOptions = {
    type = "structure",
    id = "RouteOriginOptions",
    members = {
        AvoidActionsForDistance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        AvoidUTurns = {
            type = "boolean",
        },
        Heading = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Matching = M.RouteMatchingOptions,
        SideOfStreet = M.RouteSideOfStreetOptions,
    },
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

M.RouteEmissionType = {
    type = "structure",
    id = "RouteEmissionType",
    members = {
        Co2EmissionClass = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteTollVehicleCategory = {
    MINIBUS = "Minibus",
}

M.RouteTollOptions = {
    type = "structure",
    id = "RouteTollOptions",
    members = {
        AllTransponders = {
            type = "boolean",
        },
        AllVignettes = {
            type = "boolean",
        },
        Currency = {
            type = "string",
        },
        EmissionType = M.RouteEmissionType,
        VehicleCategory = {
            type = "string",
        },
    },
}

M.RouteTrafficOptions = {
    type = "structure",
    id = "RouteTrafficOptions",
    members = {
        FlowEventThresholdOverride = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Usage = {
            type = "string",
        },
    },
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

M.RouteVehicleLicensePlate = {
    type = "structure",
    id = "RouteVehicleLicensePlate",
    members = {
        LastCharacter = {
            type = "string",
        },
    },
}

M.RouteCarOptions = {
    type = "structure",
    id = "RouteCarOptions",
    members = {
        EngineType = {
            type = "string",
        },
        LicensePlate = M.RouteVehicleLicensePlate,
        MaxSpeed = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        Occupancy = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.RoutePedestrianOptions = {
    type = "structure",
    id = "RoutePedestrianOptions",
    members = {
        Speed = {
            type = "double",
            traits = {
                default = nil,
            },
        },
    },
}

M.RouteScooterOptions = {
    type = "structure",
    id = "RouteScooterOptions",
    members = {
        EngineType = {
            type = "string",
        },
        LicensePlate = M.RouteVehicleLicensePlate,
        MaxSpeed = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        Occupancy = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
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

M.RouteTrailerOptions = {
    type = "structure",
    id = "RouteTrailerOptions",
    members = {
        AxleCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        TrailerCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.RouteTruckType = {
    LIGHT_TRUCK = "LightTruck",
    STRAIGHT_TRUCK = "StraightTruck",
    TRACTOR = "Tractor",
}

M.RouteTruckOptions = {
    type = "structure",
    id = "RouteTruckOptions",
    members = {
        AxleCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        EngineType = {
            type = "string",
        },
        GrossWeight = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        HazardousCargos = {
            type = "list",
            member = { type = "string" },
        },
        Height = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        HeightAboveFirstAxle = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        KpraLength = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Length = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        LicensePlate = M.RouteVehicleLicensePlate,
        MaxSpeed = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        Occupancy = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        PayloadCapacity = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        TireCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        Trailer = M.RouteTrailerOptions,
        TruckType = {
            type = "string",
        },
        TunnelRestrictionCode = {
            type = "string",
        },
        WeightPerAxle = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        WeightPerAxleGroup = M.WeightPerAxleGroup,
        Width = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.RouteTravelModeOptions = {
    type = "structure",
    id = "RouteTravelModeOptions",
    members = {
        Car = M.RouteCarOptions,
        Pedestrian = M.RoutePedestrianOptions,
        Scooter = M.RouteScooterOptions,
        Truck = M.RouteTruckOptions,
    },
}

M.RouteTravelStepType = {
    DEFAULT = "Default",
    TURN_BY_TURN = "TurnByTurn",
}

M.RouteWaypoint = {
    type = "structure",
    id = "RouteWaypoint",
    members = {
        AvoidActionsForDistance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        AvoidUTurns = {
            type = "boolean",
        },
        Heading = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Matching = M.RouteMatchingOptions,
        PassThrough = {
            type = "boolean",
        },
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        SideOfStreet = M.RouteSideOfStreetOptions,
        StopDuration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.CalculateRoutesInput = {
    type = "structure",
    id = "CalculateRoutesInput",
    members = {
        Allow = M.RouteAllowOptions,
        ArrivalTime = {
            type = "string",
        },
        Avoid = M.RouteAvoidanceOptions,
        DepartNow = {
            type = "boolean",
        },
        DepartureTime = {
            type = "string",
        },
        Destination = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        DestinationOptions = M.RouteDestinationOptions,
        Driver = M.RouteDriverOptions,
        Exclude = M.RouteExclusionOptions,
        InstructionsMeasurementSystem = {
            type = "string",
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
        Languages = {
            type = "list",
            member = { type = "string" },
        },
        LegAdditionalFeatures = {
            type = "list",
            member = { type = "string" },
        },
        LegGeometryFormat = {
            type = "string",
        },
        MaxAlternatives = {
            type = "integer",
        },
        OptimizeRoutingFor = {
            type = "string",
        },
        Origin = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        OriginOptions = M.RouteOriginOptions,
        SpanAdditionalFeatures = {
            type = "list",
            member = { type = "string" },
        },
        Tolls = M.RouteTollOptions,
        Traffic = M.RouteTrafficOptions,
        TravelMode = {
            type = "string",
        },
        TravelModeOptions = M.RouteTravelModeOptions,
        TravelStepType = {
            type = "string",
        },
        Waypoints = {
            type = "list",
            member = M.RouteWaypoint,
        },
    },
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

M.RouteResponseNotice = {
    type = "structure",
    id = "RouteResponseNotice",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Impact = {
            type = "string",
        },
    },
}

M.RouteFerryAfterTravelStepType = {
    DEBOARD = "Deboard",
}

M.RouteFerryAfterTravelStep = {
    type = "structure",
    id = "RouteFerryAfterTravelStep",
    members = {
        Duration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Instruction = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteFerryPlace = {
    type = "structure",
    id = "RouteFerryPlace",
    members = {
        Name = {
            type = "string",
        },
        OriginalPosition = {
            type = "list",
            member = { type = "double" },
        },
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        WaypointIndex = {
            type = "integer",
        },
    },
}

M.RouteFerryArrival = {
    type = "structure",
    id = "RouteFerryArrival",
    members = {
        Place = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteFerryPlace }),
        Time = {
            type = "string",
        },
    },
}

M.RouteFerryBeforeTravelStepType = {
    BOARD = "Board",
}

M.RouteFerryBeforeTravelStep = {
    type = "structure",
    id = "RouteFerryBeforeTravelStep",
    members = {
        Duration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Instruction = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteFerryDeparture = {
    type = "structure",
    id = "RouteFerryDeparture",
    members = {
        Place = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteFerryPlace }),
        Time = {
            type = "string",
        },
    },
}

M.RouteFerryNoticeCode = {
    ACCURATE_POLYLINE_UNAVAILABLE = "AccuratePolylineUnavailable",
    NO_SCHEDULE = "NoSchedule",
    OTHER = "Other",
    VIOLATED_AVOID_FERRY = "ViolatedAvoidFerry",
    VIOLATED_AVOID_RAIL_FERRY = "ViolatedAvoidRailFerry",
    SEASONAL_CLOSURE = "SeasonalClosure",
    POTENTIAL_VIOLATED_VEHICLE_RESTRICTION_USAGE = "PotentialViolatedVehicleRestrictionUsage",
}

M.RouteFerryNotice = {
    type = "structure",
    id = "RouteFerryNotice",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Impact = {
            type = "string",
        },
    },
}

M.RoutePassThroughPlace = {
    type = "structure",
    id = "RoutePassThroughPlace",
    members = {
        OriginalPosition = {
            type = "list",
            member = { type = "double" },
        },
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        WaypointIndex = {
            type = "integer",
        },
    },
}

M.RoutePassThroughWaypoint = {
    type = "structure",
    id = "RoutePassThroughWaypoint",
    members = {
        GeometryOffset = {
            type = "integer",
        },
        Place = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RoutePassThroughPlace }),
    },
}

M.LocalizedString = {
    type = "structure",
    id = "LocalizedString",
    members = {
        Language = {
            type = "string",
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteFerrySpan = {
    type = "structure",
    id = "RouteFerrySpan",
    members = {
        Country = {
            type = "string",
        },
        Distance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Duration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        GeometryOffset = {
            type = "integer",
        },
        Names = {
            type = "list",
            member = M.LocalizedString,
        },
        Region = {
            type = "string",
        },
    },
}

M.RouteFerryOverviewSummary = {
    type = "structure",
    id = "RouteFerryOverviewSummary",
    members = {
        Distance = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Duration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.RouteFerryTravelOnlySummary = {
    type = "structure",
    id = "RouteFerryTravelOnlySummary",
    members = {
        Duration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.RouteFerrySummary = {
    type = "structure",
    id = "RouteFerrySummary",
    members = {
        Overview = M.RouteFerryOverviewSummary,
        TravelOnly = M.RouteFerryTravelOnlySummary,
    },
}

M.RouteFerryTravelStepType = {
    DEPART = "Depart",
    CONTINUE = "Continue",
    ARRIVE = "Arrive",
}

M.RouteFerryTravelStep = {
    type = "structure",
    id = "RouteFerryTravelStep",
    members = {
        Distance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Duration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        GeometryOffset = {
            type = "integer",
        },
        Instruction = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteFerryLegDetails = {
    type = "structure",
    id = "RouteFerryLegDetails",
    members = {
        AfterTravelSteps = {
            type = "list",
            member = M.RouteFerryAfterTravelStep,
            traits = {
                required = true,
            },
        },
        Arrival = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteFerryArrival }),
        BeforeTravelSteps = {
            type = "list",
            member = M.RouteFerryBeforeTravelStep,
            traits = {
                required = true,
            },
        },
        Departure = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteFerryDeparture }),
        Notices = {
            type = "list",
            member = M.RouteFerryNotice,
            traits = {
                required = true,
            },
        },
        PassThroughWaypoints = {
            type = "list",
            member = M.RoutePassThroughWaypoint,
            traits = {
                required = true,
            },
        },
        RouteName = {
            type = "string",
        },
        Spans = {
            type = "list",
            member = M.RouteFerrySpan,
            traits = {
                required = true,
            },
        },
        Summary = M.RouteFerrySummary,
        TravelSteps = {
            type = "list",
            member = M.RouteFerryTravelStep,
            traits = {
                required = true,
            },
        },
    },
}

M.RouteLegGeometry = {
    type = "structure",
    id = "RouteLegGeometry",
    members = {
        LineString = {
            type = "list",
            member = { type = "list" },
        },
        Polyline = {
            type = "string",
        },
    },
}

M.RouteSideOfStreet = {
    LEFT = "Left",
    RIGHT = "Right",
}

M.RoutePedestrianPlace = {
    type = "structure",
    id = "RoutePedestrianPlace",
    members = {
        Name = {
            type = "string",
        },
        OriginalPosition = {
            type = "list",
            member = { type = "double" },
        },
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        SideOfStreet = {
            type = "string",
        },
        WaypointIndex = {
            type = "integer",
        },
    },
}

M.RoutePedestrianArrival = {
    type = "structure",
    id = "RoutePedestrianArrival",
    members = {
        Place = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RoutePedestrianPlace }),
        Time = {
            type = "string",
        },
    },
}

M.RoutePedestrianDeparture = {
    type = "structure",
    id = "RoutePedestrianDeparture",
    members = {
        Place = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RoutePedestrianPlace }),
        Time = {
            type = "string",
        },
    },
}

M.RoutePedestrianNoticeCode = {
    ACCURATE_POLYLINE_UNAVAILABLE = "AccuratePolylineUnavailable",
    OTHER = "Other",
    VIOLATED_AVOID_DIRT_ROAD = "ViolatedAvoidDirtRoad",
    VIOLATED_AVOID_TUNNEL = "ViolatedAvoidTunnel",
    VIOLATED_PEDESTRIAN_OPTION = "ViolatedPedestrianOption",
}

M.RoutePedestrianNotice = {
    type = "structure",
    id = "RoutePedestrianNotice",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Impact = {
            type = "string",
        },
    },
}

M.RouteSpanDynamicSpeedDetails = {
    type = "structure",
    id = "RouteSpanDynamicSpeedDetails",
    members = {
        BestCaseSpeed = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        TurnDuration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        TypicalSpeed = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
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

M.RouteNumber = {
    type = "structure",
    id = "RouteNumber",
    members = {
        Direction = {
            type = "string",
        },
        Language = {
            type = "string",
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteSpanSpeedLimitDetails = {
    type = "structure",
    id = "RouteSpanSpeedLimitDetails",
    members = {
        MaxSpeed = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Unlimited = {
            type = "boolean",
        },
    },
}

M.RoutePedestrianSpan = {
    type = "structure",
    id = "RoutePedestrianSpan",
    members = {
        BestCaseDuration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Country = {
            type = "string",
        },
        Distance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Duration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        DynamicSpeed = M.RouteSpanDynamicSpeedDetails,
        FunctionalClassification = {
            type = "integer",
        },
        GeometryOffset = {
            type = "integer",
        },
        Incidents = {
            type = "list",
            member = { type = "integer" },
        },
        Names = {
            type = "list",
            member = M.LocalizedString,
        },
        PedestrianAccess = {
            type = "list",
            member = { type = "string" },
        },
        Region = {
            type = "string",
        },
        RoadAttributes = {
            type = "list",
            member = { type = "string" },
        },
        RouteNumbers = {
            type = "list",
            member = M.RouteNumber,
        },
        SpeedLimit = M.RouteSpanSpeedLimitDetails,
        TypicalDuration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.RoutePedestrianOverviewSummary = {
    type = "structure",
    id = "RoutePedestrianOverviewSummary",
    members = {
        Distance = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Duration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.RoutePedestrianTravelOnlySummary = {
    type = "structure",
    id = "RoutePedestrianTravelOnlySummary",
    members = {
        Duration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.RoutePedestrianSummary = {
    type = "structure",
    id = "RoutePedestrianSummary",
    members = {
        Overview = M.RoutePedestrianOverviewSummary,
        TravelOnly = M.RoutePedestrianTravelOnlySummary,
    },
}

M.RouteContinueStepDetails = {
    type = "structure",
    id = "RouteContinueStepDetails",
    members = {
        Intersection = {
            type = "list",
            member = M.LocalizedString,
            traits = {
                required = true,
            },
        },
    },
}

M.RouteRoadType = {
    HIGHWAY = "Highway",
    RURAL = "Rural",
    URBAN = "Urban",
}

M.RouteRoad = {
    type = "structure",
    id = "RouteRoad",
    members = {
        RoadName = {
            type = "list",
            member = M.LocalizedString,
            traits = {
                required = true,
            },
        },
        RouteNumber = {
            type = "list",
            member = M.RouteNumber,
            traits = {
                required = true,
            },
        },
        Towards = {
            type = "list",
            member = M.LocalizedString,
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
    },
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

M.RouteKeepStepDetails = {
    type = "structure",
    id = "RouteKeepStepDetails",
    members = {
        Intersection = {
            type = "list",
            member = M.LocalizedString,
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        TurnIntensity = {
            type = "string",
        },
    },
}

M.RouteRoundaboutEnterStepDetails = {
    type = "structure",
    id = "RouteRoundaboutEnterStepDetails",
    members = {
        Intersection = {
            type = "list",
            member = M.LocalizedString,
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        TurnIntensity = {
            type = "string",
        },
    },
}

M.RouteRoundaboutExitStepDetails = {
    type = "structure",
    id = "RouteRoundaboutExitStepDetails",
    members = {
        Intersection = {
            type = "list",
            member = M.LocalizedString,
            traits = {
                required = true,
            },
        },
        RelativeExit = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        RoundaboutAngle = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        SteeringDirection = {
            type = "string",
        },
    },
}

M.RouteRoundaboutPassStepDetails = {
    type = "structure",
    id = "RouteRoundaboutPassStepDetails",
    members = {
        Intersection = {
            type = "list",
            member = M.LocalizedString,
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        TurnIntensity = {
            type = "string",
        },
    },
}

M.RouteSignpostLabel = {
    type = "structure",
    id = "RouteSignpostLabel",
    members = {
        RouteNumber = M.RouteNumber,
        Text = M.LocalizedString,
    },
}

M.RouteSignpost = {
    type = "structure",
    id = "RouteSignpost",
    members = {
        Labels = {
            type = "list",
            member = M.RouteSignpostLabel,
            traits = {
                required = true,
            },
        },
    },
}

M.RouteTurnStepDetails = {
    type = "structure",
    id = "RouteTurnStepDetails",
    members = {
        Intersection = {
            type = "list",
            member = M.LocalizedString,
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        TurnIntensity = {
            type = "string",
        },
    },
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

M.RoutePedestrianTravelStep = {
    type = "structure",
    id = "RoutePedestrianTravelStep",
    members = {
        ContinueStepDetails = M.RouteContinueStepDetails,
        CurrentRoad = M.RouteRoad,
        Distance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Duration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        ExitNumber = {
            type = "list",
            member = M.LocalizedString,
        },
        GeometryOffset = {
            type = "integer",
        },
        Instruction = {
            type = "string",
        },
        KeepStepDetails = M.RouteKeepStepDetails,
        NextRoad = M.RouteRoad,
        RoundaboutEnterStepDetails = M.RouteRoundaboutEnterStepDetails,
        RoundaboutExitStepDetails = M.RouteRoundaboutExitStepDetails,
        RoundaboutPassStepDetails = M.RouteRoundaboutPassStepDetails,
        Signpost = M.RouteSignpost,
        TurnStepDetails = M.RouteTurnStepDetails,
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RoutePedestrianLegDetails = {
    type = "structure",
    id = "RoutePedestrianLegDetails",
    members = {
        Arrival = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RoutePedestrianArrival }),
        Departure = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RoutePedestrianDeparture }),
        Notices = {
            type = "list",
            member = M.RoutePedestrianNotice,
            traits = {
                required = true,
            },
        },
        PassThroughWaypoints = {
            type = "list",
            member = M.RoutePassThroughWaypoint,
            traits = {
                required = true,
            },
        },
        Spans = {
            type = "list",
            member = M.RoutePedestrianSpan,
            traits = {
                required = true,
            },
        },
        Summary = M.RoutePedestrianSummary,
        TravelSteps = {
            type = "list",
            member = M.RoutePedestrianTravelStep,
            traits = {
                required = true,
            },
        },
    },
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

M.RouteVehiclePlace = {
    type = "structure",
    id = "RouteVehiclePlace",
    members = {
        Name = {
            type = "string",
        },
        OriginalPosition = {
            type = "list",
            member = { type = "double" },
        },
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        SideOfStreet = {
            type = "string",
        },
        WaypointIndex = {
            type = "integer",
        },
    },
}

M.RouteVehicleArrival = {
    type = "structure",
    id = "RouteVehicleArrival",
    members = {
        Place = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteVehiclePlace }),
        Time = {
            type = "string",
        },
    },
}

M.RouteVehicleDeparture = {
    type = "structure",
    id = "RouteVehicleDeparture",
    members = {
        Place = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteVehiclePlace }),
        Time = {
            type = "string",
        },
    },
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

M.RouteVehicleIncident = {
    type = "structure",
    id = "RouteVehicleIncident",
    members = {
        Description = {
            type = "string",
        },
        EndTime = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        StartTime = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
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
}

M.RouteNoticeDetailRange = {
    type = "structure",
    id = "RouteNoticeDetailRange",
    members = {
        Min = {
            type = "integer",
        },
        Max = {
            type = "integer",
        },
    },
}

M.RouteWeightConstraintType = {
    CURRENT = "Current",
    GROSS = "Gross",
    UNKNOWN = "Unknown",
}

M.RouteWeightConstraint = {
    type = "structure",
    id = "RouteWeightConstraint",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.RouteViolatedConstraints = {
    type = "structure",
    id = "RouteViolatedConstraints",
    members = {
        AllHazardsRestricted = {
            type = "boolean",
        },
        AxleCount = M.RouteNoticeDetailRange,
        HazardousCargos = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        MaxHeight = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        MaxKpraLength = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        MaxLength = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        MaxPayloadCapacity = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        MaxWeight = M.RouteWeightConstraint,
        MaxWeightPerAxle = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        MaxWeightPerAxleGroup = M.WeightPerAxleGroup,
        MaxWidth = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Occupancy = M.RouteNoticeDetailRange,
        RestrictedTimes = {
            type = "string",
        },
        TimeDependent = {
            type = "boolean",
        },
        TrailerCount = M.RouteNoticeDetailRange,
        TravelMode = {
            type = "boolean",
        },
        TruckRoadType = {
            type = "string",
        },
        TruckType = {
            type = "string",
        },
        TunnelRestrictionCode = {
            type = "string",
        },
    },
}

M.RouteVehicleNoticeDetail = {
    type = "structure",
    id = "RouteVehicleNoticeDetail",
    members = {
        Title = {
            type = "string",
        },
        ViolatedConstraints = M.RouteViolatedConstraints,
    },
}

M.RouteVehicleNotice = {
    type = "structure",
    id = "RouteVehicleNotice",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Details = {
            type = "list",
            member = M.RouteVehicleNoticeDetail,
            traits = {
                required = true,
            },
        },
        Impact = {
            type = "string",
        },
    },
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

M.RouteVehicleSpan = {
    type = "structure",
    id = "RouteVehicleSpan",
    members = {
        BestCaseDuration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CarAccess = {
            type = "list",
            member = { type = "string" },
        },
        Country = {
            type = "string",
        },
        Distance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Duration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        DynamicSpeed = M.RouteSpanDynamicSpeedDetails,
        FunctionalClassification = {
            type = "integer",
        },
        Gate = {
            type = "string",
        },
        GeometryOffset = {
            type = "integer",
        },
        Incidents = {
            type = "list",
            member = { type = "integer" },
        },
        Names = {
            type = "list",
            member = M.LocalizedString,
        },
        Notices = {
            type = "list",
            member = { type = "integer" },
        },
        RailwayCrossing = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        RoadAttributes = {
            type = "list",
            member = { type = "string" },
        },
        RouteNumbers = {
            type = "list",
            member = M.RouteNumber,
        },
        ScooterAccess = {
            type = "list",
            member = { type = "string" },
        },
        SpeedLimit = M.RouteSpanSpeedLimitDetails,
        TollSystems = {
            type = "list",
            member = { type = "integer" },
        },
        TruckAccess = {
            type = "list",
            member = { type = "string" },
        },
        TruckRoadTypes = {
            type = "list",
            member = { type = "integer" },
        },
        TypicalDuration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Zones = {
            type = "list",
            member = { type = "integer" },
        },
    },
}

M.RouteVehicleOverviewSummary = {
    type = "structure",
    id = "RouteVehicleOverviewSummary",
    members = {
        BestCaseDuration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Distance = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Duration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        TypicalDuration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.RouteVehicleTravelOnlySummary = {
    type = "structure",
    id = "RouteVehicleTravelOnlySummary",
    members = {
        BestCaseDuration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Duration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        TypicalDuration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.RouteVehicleSummary = {
    type = "structure",
    id = "RouteVehicleSummary",
    members = {
        Overview = M.RouteVehicleOverviewSummary,
        TravelOnly = M.RouteVehicleTravelOnlySummary,
    },
}

M.RouteTollPaymentSite = {
    type = "structure",
    id = "RouteTollPaymentSite",
    members = {
        Name = {
            type = "string",
        },
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
    },
}

M.RouteTollPriceValueRange = {
    type = "structure",
    id = "RouteTollPriceValueRange",
    members = {
        Min = {
            type = "double",
            traits = {
                required = true,
            },
        },
        Max = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteTollPrice = {
    type = "structure",
    id = "RouteTollPrice",
    members = {
        Currency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Estimate = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        PerDuration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Range = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        RangeValue = M.RouteTollPriceValueRange,
        Value = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteTollPassValidityPeriodType = {
    ANNUAL = "Annual",
    DAYS = "Days",
    EXTENDED_ANNUAL = "ExtendedAnnual",
    MINUTES = "Minutes",
    MONTHS = "Months",
}

M.RouteTollPassValidityPeriod = {
    type = "structure",
    id = "RouteTollPassValidityPeriod",
    members = {
        Period = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PeriodCount = {
            type = "integer",
        },
    },
}

M.RouteTollPass = {
    type = "structure",
    id = "RouteTollPass",
    members = {
        IncludesReturnTrip = {
            type = "boolean",
        },
        SeniorPass = {
            type = "boolean",
        },
        TransferCount = {
            type = "integer",
        },
        TripCount = {
            type = "integer",
        },
        ValidityPeriod = M.RouteTollPassValidityPeriod,
    },
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

M.RouteTransponder = {
    type = "structure",
    id = "RouteTransponder",
    members = {
        SystemName = {
            type = "string",
        },
    },
}

M.RouteTollRate = {
    type = "structure",
    id = "RouteTollRate",
    members = {
        ApplicableTimes = {
            type = "string",
        },
        ConvertedPrice = M.RouteTollPrice,
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocalPrice = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteTollPrice }),
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Pass = M.RouteTollPass,
        PaymentMethods = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Transponders = {
            type = "list",
            member = M.RouteTransponder,
            traits = {
                required = true,
            },
        },
    },
}

M.RouteToll = {
    type = "structure",
    id = "RouteToll",
    members = {
        Country = {
            type = "string",
        },
        PaymentSites = {
            type = "list",
            member = M.RouteTollPaymentSite,
            traits = {
                required = true,
            },
        },
        Rates = {
            type = "list",
            member = M.RouteTollRate,
            traits = {
                required = true,
            },
        },
        Systems = {
            type = "list",
            member = { type = "integer" },
            traits = {
                required = true,
            },
        },
    },
}

M.RouteTollSystem = {
    type = "structure",
    id = "RouteTollSystem",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.RouteContinueHighwayStepDetails = {
    type = "structure",
    id = "RouteContinueHighwayStepDetails",
    members = {
        Intersection = {
            type = "list",
            member = M.LocalizedString,
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        TurnIntensity = {
            type = "string",
        },
    },
}

M.RouteEnterHighwayStepDetails = {
    type = "structure",
    id = "RouteEnterHighwayStepDetails",
    members = {
        Intersection = {
            type = "list",
            member = M.LocalizedString,
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        TurnIntensity = {
            type = "string",
        },
    },
}

M.RouteExitStepDetails = {
    type = "structure",
    id = "RouteExitStepDetails",
    members = {
        Intersection = {
            type = "list",
            member = M.LocalizedString,
            traits = {
                required = true,
            },
        },
        RelativeExit = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        TurnIntensity = {
            type = "string",
        },
    },
}

M.RouteRampStepDetails = {
    type = "structure",
    id = "RouteRampStepDetails",
    members = {
        Intersection = {
            type = "list",
            member = M.LocalizedString,
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        TurnIntensity = {
            type = "string",
        },
    },
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

M.RouteUTurnStepDetails = {
    type = "structure",
    id = "RouteUTurnStepDetails",
    members = {
        Intersection = {
            type = "list",
            member = M.LocalizedString,
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        TurnIntensity = {
            type = "string",
        },
    },
}

M.RouteVehicleTravelStep = {
    type = "structure",
    id = "RouteVehicleTravelStep",
    members = {
        ContinueHighwayStepDetails = M.RouteContinueHighwayStepDetails,
        ContinueStepDetails = M.RouteContinueStepDetails,
        CurrentRoad = M.RouteRoad,
        Distance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Duration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        EnterHighwayStepDetails = M.RouteEnterHighwayStepDetails,
        ExitNumber = {
            type = "list",
            member = M.LocalizedString,
        },
        ExitStepDetails = M.RouteExitStepDetails,
        GeometryOffset = {
            type = "integer",
        },
        Instruction = {
            type = "string",
        },
        KeepStepDetails = M.RouteKeepStepDetails,
        NextRoad = M.RouteRoad,
        RampStepDetails = M.RouteRampStepDetails,
        RoundaboutEnterStepDetails = M.RouteRoundaboutEnterStepDetails,
        RoundaboutExitStepDetails = M.RouteRoundaboutExitStepDetails,
        RoundaboutPassStepDetails = M.RouteRoundaboutPassStepDetails,
        Signpost = M.RouteSignpost,
        TurnStepDetails = M.RouteTurnStepDetails,
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UTurnStepDetails = M.RouteUTurnStepDetails,
    },
}

M.RouteZone = {
    type = "structure",
    id = "RouteZone",
    members = {
        Category = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.RouteVehicleLegDetails = {
    type = "structure",
    id = "RouteVehicleLegDetails",
    members = {
        Arrival = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteVehicleArrival }),
        Departure = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteVehicleDeparture }),
        Incidents = {
            type = "list",
            member = M.RouteVehicleIncident,
            traits = {
                required = true,
            },
        },
        Notices = {
            type = "list",
            member = M.RouteVehicleNotice,
            traits = {
                required = true,
            },
        },
        PassThroughWaypoints = {
            type = "list",
            member = M.RoutePassThroughWaypoint,
            traits = {
                required = true,
            },
        },
        Spans = {
            type = "list",
            member = M.RouteVehicleSpan,
            traits = {
                required = true,
            },
        },
        Summary = M.RouteVehicleSummary,
        Tolls = {
            type = "list",
            member = M.RouteToll,
            traits = {
                required = true,
            },
        },
        TollSystems = {
            type = "list",
            member = M.RouteTollSystem,
            traits = {
                required = true,
            },
        },
        TravelSteps = {
            type = "list",
            member = M.RouteVehicleTravelStep,
            traits = {
                required = true,
            },
        },
        TruckRoadTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Zones = {
            type = "list",
            member = M.RouteZone,
            traits = {
                required = true,
            },
        },
    },
}

M.RouteLeg = {
    type = "structure",
    id = "RouteLeg",
    members = {
        FerryLegDetails = M.RouteFerryLegDetails,
        Geometry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteLegGeometry }),
        Language = {
            type = "string",
        },
        PedestrianLegDetails = M.RoutePedestrianLegDetails,
        TravelMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VehicleLegDetails = M.RouteVehicleLegDetails,
    },
}

M.RouteMajorRoadLabel = {
    type = "structure",
    id = "RouteMajorRoadLabel",
    members = {
        RoadName = M.LocalizedString,
        RouteNumber = M.RouteNumber,
    },
}

M.RouteTollPriceSummary = {
    type = "structure",
    id = "RouteTollPriceSummary",
    members = {
        Currency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Estimate = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Range = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        RangeValue = M.RouteTollPriceValueRange,
        Value = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteTollSummary = {
    type = "structure",
    id = "RouteTollSummary",
    members = {
        Total = M.RouteTollPriceSummary,
    },
}

M.RouteSummary = {
    type = "structure",
    id = "RouteSummary",
    members = {
        Distance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Duration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Tolls = M.RouteTollSummary,
    },
}

M.Route = {
    type = "structure",
    id = "Route",
    members = {
        Legs = {
            type = "list",
            member = M.RouteLeg,
            traits = {
                required = true,
            },
        },
        MajorRoadLabels = {
            type = "list",
            member = M.RouteMajorRoadLabel,
            traits = {
                required = true,
            },
        },
        Summary = M.RouteSummary,
    },
}

M.CalculateRoutesOutput = {
    type = "structure",
    id = "CalculateRoutesOutput",
    members = {
        LegGeometryFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Notices = {
            type = "list",
            member = M.RouteResponseNotice,
            traits = {
                required = true,
            },
        },
        PricingBucket = {
            type = "string",
            traits = {
                http_header = "x-amz-geo-pricing-bucket",
                required = true,
            },
        },
        Routes = {
            type = "list",
            member = M.Route,
            traits = {
                required = true,
            },
        },
    },
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

M.WaypointOptimizationAvoidanceAreaGeometry = {
    type = "structure",
    id = "WaypointOptimizationAvoidanceAreaGeometry",
    members = {
        BoundingBox = {
            type = "list",
            member = { type = "double" },
        },
    },
}

M.WaypointOptimizationAvoidanceArea = {
    type = "structure",
    id = "WaypointOptimizationAvoidanceArea",
    members = {
        Geometry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WaypointOptimizationAvoidanceAreaGeometry }),
    },
}

M.WaypointOptimizationAvoidanceOptions = {
    type = "structure",
    id = "WaypointOptimizationAvoidanceOptions",
    members = {
        Areas = {
            type = "list",
            member = M.WaypointOptimizationAvoidanceArea,
        },
        CarShuttleTrains = {
            type = "boolean",
        },
        ControlledAccessHighways = {
            type = "boolean",
        },
        DirtRoads = {
            type = "boolean",
        },
        Ferries = {
            type = "boolean",
        },
        TollRoads = {
            type = "boolean",
        },
        Tunnels = {
            type = "boolean",
        },
        UTurns = {
            type = "boolean",
        },
    },
}

M.WaypointOptimizationClusteringAlgorithm = {
    DRIVING_DISTANCE = "DrivingDistance",
    TOPOLOGY_SEGMENT = "TopologySegment",
}

M.WaypointOptimizationDrivingDistanceOptions = {
    type = "structure",
    id = "WaypointOptimizationDrivingDistanceOptions",
    members = {
        DrivingDistance = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.WaypointOptimizationClusteringOptions = {
    type = "structure",
    id = "WaypointOptimizationClusteringOptions",
    members = {
        Algorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DrivingDistanceOptions = M.WaypointOptimizationDrivingDistanceOptions,
    },
}

M.WaypointOptimizationAccessHoursEntry = {
    type = "structure",
    id = "WaypointOptimizationAccessHoursEntry",
    members = {
        DayOfWeek = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeOfDay = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WaypointOptimizationAccessHours = {
    type = "structure",
    id = "WaypointOptimizationAccessHours",
    members = {
        From = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WaypointOptimizationAccessHoursEntry }),
        To = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WaypointOptimizationAccessHoursEntry }),
    },
}

M.WaypointOptimizationSideOfStreetOptions = {
    type = "structure",
    id = "WaypointOptimizationSideOfStreetOptions",
    members = {
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        UseWith = {
            type = "string",
        },
    },
}

M.WaypointOptimizationDestinationOptions = {
    type = "structure",
    id = "WaypointOptimizationDestinationOptions",
    members = {
        AccessHours = M.WaypointOptimizationAccessHours,
        AppointmentTime = {
            type = "string",
        },
        Heading = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Id = {
            type = "string",
        },
        ServiceDuration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        SideOfStreet = M.WaypointOptimizationSideOfStreetOptions,
    },
}

M.WaypointOptimizationRestCycleDurations = {
    type = "structure",
    id = "WaypointOptimizationRestCycleDurations",
    members = {
        RestDuration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        WorkDuration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.WaypointOptimizationRestCycles = {
    type = "structure",
    id = "WaypointOptimizationRestCycles",
    members = {
        LongCycle = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WaypointOptimizationRestCycleDurations }),
        ShortCycle = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WaypointOptimizationRestCycleDurations }),
    },
}

M.WaypointOptimizationRestProfile = {
    type = "structure",
    id = "WaypointOptimizationRestProfile",
    members = {
        Profile = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WaypointOptimizationServiceTimeTreatment = {
    REST = "Rest",
    WORK = "Work",
}

M.WaypointOptimizationDriverOptions = {
    type = "structure",
    id = "WaypointOptimizationDriverOptions",
    members = {
        RestCycles = M.WaypointOptimizationRestCycles,
        RestProfile = M.WaypointOptimizationRestProfile,
        TreatServiceTimeAs = {
            type = "string",
        },
    },
}

M.WaypointOptimizationExclusionOptions = {
    type = "structure",
    id = "WaypointOptimizationExclusionOptions",
    members = {
        Countries = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.WaypointOptimizationSequencingObjective = {
    FASTEST_ROUTE = "FastestRoute",
    SHORTEST_ROUTE = "ShortestRoute",
}

M.WaypointOptimizationOriginOptions = {
    type = "structure",
    id = "WaypointOptimizationOriginOptions",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.WaypointOptimizationTrafficOptions = {
    type = "structure",
    id = "WaypointOptimizationTrafficOptions",
    members = {
        Usage = {
            type = "string",
        },
    },
}

M.WaypointOptimizationTravelMode = {
    CAR = "Car",
    PEDESTRIAN = "Pedestrian",
    SCOOTER = "Scooter",
    TRUCK = "Truck",
}

M.WaypointOptimizationPedestrianOptions = {
    type = "structure",
    id = "WaypointOptimizationPedestrianOptions",
    members = {
        Speed = {
            type = "double",
            traits = {
                default = nil,
            },
        },
    },
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

M.WaypointOptimizationTrailerOptions = {
    type = "structure",
    id = "WaypointOptimizationTrailerOptions",
    members = {
        TrailerCount = {
            type = "integer",
        },
    },
}

M.WaypointOptimizationTruckType = {
    STRAIGHT_TRUCK = "StraightTruck",
    TRACTOR = "Tractor",
}

M.WaypointOptimizationTruckOptions = {
    type = "structure",
    id = "WaypointOptimizationTruckOptions",
    members = {
        GrossWeight = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        HazardousCargos = {
            type = "list",
            member = { type = "string" },
        },
        Height = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Length = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Trailer = M.WaypointOptimizationTrailerOptions,
        TruckType = {
            type = "string",
        },
        TunnelRestrictionCode = {
            type = "string",
        },
        WeightPerAxle = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Width = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.WaypointOptimizationTravelModeOptions = {
    type = "structure",
    id = "WaypointOptimizationTravelModeOptions",
    members = {
        Pedestrian = M.WaypointOptimizationPedestrianOptions,
        Truck = M.WaypointOptimizationTruckOptions,
    },
}

M.WaypointOptimizationWaypoint = {
    type = "structure",
    id = "WaypointOptimizationWaypoint",
    members = {
        AccessHours = M.WaypointOptimizationAccessHours,
        AppointmentTime = {
            type = "string",
        },
        Before = {
            type = "list",
            member = { type = "integer" },
        },
        Heading = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Id = {
            type = "string",
        },
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        ServiceDuration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        SideOfStreet = M.WaypointOptimizationSideOfStreetOptions,
    },
}

M.OptimizeWaypointsInput = {
    type = "structure",
    id = "OptimizeWaypointsInput",
    members = {
        Avoid = M.WaypointOptimizationAvoidanceOptions,
        Clustering = M.WaypointOptimizationClusteringOptions,
        DepartureTime = {
            type = "string",
        },
        Destination = {
            type = "list",
            member = { type = "double" },
        },
        DestinationOptions = M.WaypointOptimizationDestinationOptions,
        Driver = M.WaypointOptimizationDriverOptions,
        Exclude = M.WaypointOptimizationExclusionOptions,
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
        OptimizeSequencingFor = {
            type = "string",
        },
        Origin = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        OriginOptions = M.WaypointOptimizationOriginOptions,
        Traffic = M.WaypointOptimizationTrafficOptions,
        TravelMode = {
            type = "string",
        },
        TravelModeOptions = M.WaypointOptimizationTravelModeOptions,
        Waypoints = {
            type = "list",
            member = M.WaypointOptimizationWaypoint,
        },
    },
}

M.WaypointOptimizationConnection = {
    type = "structure",
    id = "WaypointOptimizationConnection",
    members = {
        Distance = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        From = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestDuration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        To = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TravelDuration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        WaitDuration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.WaypointOptimizationConstraint = {
    ACCESS_HOURS = "AccessHours",
    APPOINTMENT_TIME = "AppointmentTime",
    BEFORE = "Before",
    HEADING = "Heading",
    SERVICE_DURATION = "ServiceDuration",
    SIDE_OF_STREET = "SideOfStreet",
}

M.WaypointOptimizationFailedConstraint = {
    type = "structure",
    id = "WaypointOptimizationFailedConstraint",
    members = {
        Constraint = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.WaypointOptimizationImpedingWaypoint = {
    type = "structure",
    id = "WaypointOptimizationImpedingWaypoint",
    members = {
        FailedConstraints = {
            type = "list",
            member = M.WaypointOptimizationFailedConstraint,
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
    },
}

M.WaypointOptimizationOptimizedWaypoint = {
    type = "structure",
    id = "WaypointOptimizationOptimizedWaypoint",
    members = {
        ArrivalTime = {
            type = "string",
        },
        ClusterIndex = {
            type = "integer",
        },
        DepartureTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
    },
}

M.WaypointOptimizationTimeBreakdown = {
    type = "structure",
    id = "WaypointOptimizationTimeBreakdown",
    members = {
        RestDuration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        ServiceDuration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        TravelDuration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        WaitDuration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.OptimizeWaypointsOutput = {
    type = "structure",
    id = "OptimizeWaypointsOutput",
    members = {
        Connections = {
            type = "list",
            member = M.WaypointOptimizationConnection,
            traits = {
                required = true,
            },
        },
        Distance = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Duration = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        ImpedingWaypoints = {
            type = "list",
            member = M.WaypointOptimizationImpedingWaypoint,
            traits = {
                required = true,
            },
        },
        OptimizedWaypoints = {
            type = "list",
            member = M.WaypointOptimizationOptimizedWaypoint,
            traits = {
                required = true,
            },
        },
        PricingBucket = {
            type = "string",
            traits = {
                http_header = "x-amz-geo-pricing-bucket",
                required = true,
            },
        },
        TimeBreakdown = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WaypointOptimizationTimeBreakdown }),
    },
}

M.RoadSnapTracePoint = {
    type = "structure",
    id = "RoadSnapTracePoint",
    members = {
        Heading = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        Speed = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Timestamp = {
            type = "string",
        },
    },
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

M.RoadSnapTrailerOptions = {
    type = "structure",
    id = "RoadSnapTrailerOptions",
    members = {
        TrailerCount = {
            type = "integer",
        },
    },
}

M.RoadSnapTruckOptions = {
    type = "structure",
    id = "RoadSnapTruckOptions",
    members = {
        GrossWeight = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        HazardousCargos = {
            type = "list",
            member = { type = "string" },
        },
        Height = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Length = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Trailer = M.RoadSnapTrailerOptions,
        TunnelRestrictionCode = {
            type = "string",
        },
        Width = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.RoadSnapTravelModeOptions = {
    type = "structure",
    id = "RoadSnapTravelModeOptions",
    members = {
        Truck = M.RoadSnapTruckOptions,
    },
}

M.SnapToRoadsInput = {
    type = "structure",
    id = "SnapToRoadsInput",
    members = {
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
        SnappedGeometryFormat = {
            type = "string",
        },
        SnapRadius = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        TracePoints = {
            type = "list",
            member = M.RoadSnapTracePoint,
            traits = {
                required = true,
            },
        },
        TravelMode = {
            type = "string",
        },
        TravelModeOptions = M.RoadSnapTravelModeOptions,
    },
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

M.RoadSnapNotice = {
    type = "structure",
    id = "RoadSnapNotice",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TracePointIndexes = {
            type = "list",
            member = { type = "integer" },
            traits = {
                required = true,
            },
        },
    },
}

M.RoadSnapSnappedGeometry = {
    type = "structure",
    id = "RoadSnapSnappedGeometry",
    members = {
        LineString = {
            type = "list",
            member = { type = "list" },
        },
        Polyline = {
            type = "string",
        },
    },
}

M.RoadSnapSnappedTracePoint = {
    type = "structure",
    id = "RoadSnapSnappedTracePoint",
    members = {
        Confidence = {
            type = "double",
            traits = {
                required = true,
            },
        },
        OriginalPosition = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        SnappedPosition = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
    },
}

M.SnapToRoadsOutput = {
    type = "structure",
    id = "SnapToRoadsOutput",
    members = {
        Notices = {
            type = "list",
            member = M.RoadSnapNotice,
            traits = {
                required = true,
            },
        },
        PricingBucket = {
            type = "string",
            traits = {
                http_header = "x-amz-geo-pricing-bucket",
                required = true,
            },
        },
        SnappedGeometry = M.RoadSnapSnappedGeometry,
        SnappedGeometryFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnappedTracePoints = {
            type = "list",
            member = M.RoadSnapSnappedTracePoint,
            traits = {
                required = true,
            },
        },
    },
}

return M
