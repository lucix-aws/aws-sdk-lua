local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        LineString = {
            type = "list",
            member_type = "list",
            traits = {
                required = true,
            },
        },
        Radius = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PolylineCorridor = {
    type = "structure",
    members = {
        Polyline = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Radius = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.IsolineAvoidanceAreaGeometry = {
    type = "structure",
    members = {
        BoundingBox = {
            type = "list",
            member_type = "number",
        },
        Corridor = {
            type = "structure",
        },
        Polygon = {
            type = "list",
            member_type = "list",
        },
        PolylineCorridor = {
            type = "structure",
        },
        PolylinePolygon = {
            type = "list",
            member_type = "string",
        },
    },
}

M.IsolineAvoidanceArea = {
    type = "structure",
    members = {
        Except = {
            type = "list",
            member_type = "structure",
        },
        Geometry = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IsolineZoneCategory = {
    CONGESTION_PRICING = "CongestionPricing",
    ENVIRONMENTAL = "Environmental",
    VIGNETTE = "Vignette",
}

M.IsolineAvoidanceZoneCategory = {
    type = "structure",
    members = {
        Category = {
            type = "string",
        },
    },
}

M.IsolineAvoidanceOptions = {
    type = "structure",
    members = {
        Areas = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        Tunnels = {
            type = "boolean",
        },
        UTurns = {
            type = "boolean",
        },
        ZoneCategories = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MatchingStrategy = {
    MATCH_ANY = "MatchAny",
    MATCH_MOST_SIGNIFICANT_ROAD = "MatchMostSignificantRoad",
}

M.IsolineMatchingOptions = {
    type = "structure",
    members = {
        NameHint = {
            type = "string",
        },
        OnRoadThreshold = {
            type = "number",
        },
        Radius = {
            type = "number",
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
    members = {
        Position = {
            type = "list",
            member_type = "number",
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
    members = {
        AvoidActionsForDistance = {
            type = "number",
        },
        Heading = {
            type = "number",
        },
        Matching = {
            type = "structure",
        },
        SideOfStreet = {
            type = "structure",
        },
    },
}

M.GeometryFormat = {
    FLEXIBLE_POLYLINE = "FlexiblePolyline",
    SIMPLE = "Simple",
}

M.IsolineGranularityOptions = {
    type = "structure",
    members = {
        MaxPoints = {
            type = "number",
        },
        MaxResolution = {
            type = "number",
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
    members = {
        AvoidActionsForDistance = {
            type = "number",
        },
        Heading = {
            type = "number",
        },
        Matching = {
            type = "structure",
        },
        SideOfStreet = {
            type = "structure",
        },
    },
}

M.IsolineThresholds = {
    type = "structure",
    members = {
        Distance = {
            type = "list",
            member_type = "number",
        },
        Time = {
            type = "list",
            member_type = "number",
        },
    },
}

M.TrafficUsage = {
    IGNORE_TRAFFIC_DATA = "IgnoreTrafficData",
    USE_TRAFFIC_DATA = "UseTrafficData",
}

M.IsolineTrafficOptions = {
    type = "structure",
    members = {
        FlowEventThresholdOverride = {
            type = "number",
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
    members = {
        LastCharacter = {
            type = "string",
        },
    },
}

M.IsolineCarOptions = {
    type = "structure",
    members = {
        EngineType = {
            type = "string",
        },
        LicensePlate = {
            type = "structure",
        },
        MaxSpeed = {
            type = "number",
        },
        Occupancy = {
            type = "number",
        },
    },
}

M.IsolineScooterOptions = {
    type = "structure",
    members = {
        EngineType = {
            type = "string",
        },
        LicensePlate = {
            type = "structure",
        },
        MaxSpeed = {
            type = "number",
        },
        Occupancy = {
            type = "number",
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
    members = {
        AxleCount = {
            type = "number",
        },
        TrailerCount = {
            type = "number",
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
    members = {
        Single = {
            type = "number",
        },
        Tandem = {
            type = "number",
        },
        Triple = {
            type = "number",
        },
        Quad = {
            type = "number",
        },
        Quint = {
            type = "number",
        },
    },
}

M.IsolineTruckOptions = {
    type = "structure",
    members = {
        AxleCount = {
            type = "number",
        },
        EngineType = {
            type = "string",
        },
        GrossWeight = {
            type = "number",
        },
        HazardousCargos = {
            type = "list",
            member_type = "string",
        },
        Height = {
            type = "number",
        },
        HeightAboveFirstAxle = {
            type = "number",
        },
        KpraLength = {
            type = "number",
        },
        Length = {
            type = "number",
        },
        LicensePlate = {
            type = "structure",
        },
        MaxSpeed = {
            type = "number",
        },
        Occupancy = {
            type = "number",
        },
        PayloadCapacity = {
            type = "number",
        },
        TireCount = {
            type = "number",
        },
        Trailer = {
            type = "structure",
        },
        TruckType = {
            type = "string",
        },
        TunnelRestrictionCode = {
            type = "string",
        },
        WeightPerAxle = {
            type = "number",
        },
        WeightPerAxleGroup = {
            type = "structure",
        },
        Width = {
            type = "number",
        },
    },
}

M.IsolineTravelModeOptions = {
    type = "structure",
    members = {
        Car = {
            type = "structure",
        },
        Scooter = {
            type = "structure",
        },
        Truck = {
            type = "structure",
        },
    },
}

M.CalculateIsolinesInput = {
    type = "structure",
    members = {
        Allow = {
            type = "structure",
        },
        ArrivalTime = {
            type = "string",
        },
        Avoid = {
            type = "structure",
        },
        DepartNow = {
            type = "boolean",
        },
        DepartureTime = {
            type = "string",
        },
        Destination = {
            type = "list",
            member_type = "number",
        },
        DestinationOptions = {
            type = "structure",
        },
        IsolineGeometryFormat = {
            type = "string",
        },
        IsolineGranularity = {
            type = "structure",
        },
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
            member_type = "number",
        },
        OriginOptions = {
            type = "structure",
        },
        Thresholds = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Traffic = {
            type = "structure",
        },
        TravelMode = {
            type = "string",
        },
        TravelModeOptions = {
            type = "structure",
        },
    },
}

M.IsolineConnectionGeometry = {
    type = "structure",
    members = {
        LineString = {
            type = "list",
            member_type = "list",
        },
        Polyline = {
            type = "string",
        },
    },
}

M.IsolineConnection = {
    type = "structure",
    members = {
        FromPolygonIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Geometry = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ToPolygonIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.IsolineShapeGeometry = {
    type = "structure",
    members = {
        Polygon = {
            type = "list",
            member_type = "list",
        },
        PolylinePolygon = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Isoline = {
    type = "structure",
    members = {
        Connections = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DistanceThreshold = {
            type = "number",
        },
        Geometries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        TimeThreshold = {
            type = "number",
        },
    },
}

M.CalculateIsolinesOutput = {
    type = "structure",
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
            member_type = "structure",
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
            member_type = "number",
        },
        SnappedOrigin = {
            type = "list",
            member_type = "number",
        },
    },
}

M.InternalServerException = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                json_name = "fieldList",
                required = true,
            },
        },
    },
}

M.RouteMatrixAllowOptions = {
    type = "structure",
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
    members = {
        BoundingBox = {
            type = "list",
            member_type = "number",
        },
        Polygon = {
            type = "list",
            member_type = "list",
        },
        PolylinePolygon = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RouteMatrixAvoidanceArea = {
    type = "structure",
    members = {
        Geometry = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteMatrixZoneCategory = {
    CONGESTION_PRICING = "CongestionPricing",
    ENVIRONMENTAL = "Environmental",
    VIGNETTE = "Vignette",
}

M.RouteMatrixAvoidanceZoneCategory = {
    type = "structure",
    members = {
        Category = {
            type = "string",
        },
    },
}

M.RouteMatrixAvoidanceOptions = {
    type = "structure",
    members = {
        Areas = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        Tunnels = {
            type = "boolean",
        },
        UTurns = {
            type = "boolean",
        },
        ZoneCategories = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RouteMatrixMatchingOptions = {
    type = "structure",
    members = {
        NameHint = {
            type = "string",
        },
        OnRoadThreshold = {
            type = "number",
        },
        Radius = {
            type = "number",
        },
        Strategy = {
            type = "string",
        },
    },
}

M.RouteMatrixSideOfStreetOptions = {
    type = "structure",
    members = {
        Position = {
            type = "list",
            member_type = "number",
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
    members = {
        AvoidActionsForDistance = {
            type = "number",
        },
        Heading = {
            type = "number",
        },
        Matching = {
            type = "structure",
        },
        SideOfStreet = {
            type = "structure",
        },
    },
}

M.RouteMatrixDestination = {
    type = "structure",
    members = {
        Options = {
            type = "structure",
        },
        Position = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteMatrixExclusionOptions = {
    type = "structure",
    members = {
        Countries = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteMatrixOriginOptions = {
    type = "structure",
    members = {
        AvoidActionsForDistance = {
            type = "number",
        },
        Heading = {
            type = "number",
        },
        Matching = {
            type = "structure",
        },
        SideOfStreet = {
            type = "structure",
        },
    },
}

M.RouteMatrixOrigin = {
    type = "structure",
    members = {
        Options = {
            type = "structure",
        },
        Position = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteMatrixAutoCircle = {
    type = "structure",
    members = {
        Margin = {
            type = "number",
        },
        MaxRadius = {
            type = "number",
        },
    },
}

M.Circle = {
    type = "structure",
    members = {
        Center = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        Radius = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteMatrixBoundaryGeometry = {
    type = "structure",
    members = {
        AutoCircle = {
            type = "structure",
        },
        Circle = {
            type = "structure",
        },
        BoundingBox = {
            type = "list",
            member_type = "number",
        },
        Polygon = {
            type = "list",
            member_type = "list",
        },
    },
}

M.RouteMatrixBoundary = {
    type = "structure",
    members = {
        Geometry = {
            type = "structure",
        },
        Unbounded = {
            type = "boolean",
        },
    },
}

M.RouteMatrixTrafficOptions = {
    type = "structure",
    members = {
        FlowEventThresholdOverride = {
            type = "number",
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
    members = {
        LastCharacter = {
            type = "string",
        },
    },
}

M.RouteMatrixCarOptions = {
    type = "structure",
    members = {
        LicensePlate = {
            type = "structure",
        },
        MaxSpeed = {
            type = "number",
        },
        Occupancy = {
            type = "number",
        },
    },
}

M.RouteMatrixScooterOptions = {
    type = "structure",
    members = {
        LicensePlate = {
            type = "structure",
        },
        MaxSpeed = {
            type = "number",
        },
        Occupancy = {
            type = "number",
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
    members = {
        TrailerCount = {
            type = "number",
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
    members = {
        AxleCount = {
            type = "number",
        },
        GrossWeight = {
            type = "number",
        },
        HazardousCargos = {
            type = "list",
            member_type = "string",
        },
        Height = {
            type = "number",
        },
        KpraLength = {
            type = "number",
        },
        Length = {
            type = "number",
        },
        LicensePlate = {
            type = "structure",
        },
        MaxSpeed = {
            type = "number",
        },
        Occupancy = {
            type = "number",
        },
        PayloadCapacity = {
            type = "number",
        },
        Trailer = {
            type = "structure",
        },
        TruckType = {
            type = "string",
        },
        TunnelRestrictionCode = {
            type = "string",
        },
        WeightPerAxle = {
            type = "number",
        },
        WeightPerAxleGroup = {
            type = "structure",
        },
        Width = {
            type = "number",
        },
    },
}

M.RouteMatrixTravelModeOptions = {
    type = "structure",
    members = {
        Car = {
            type = "structure",
        },
        Scooter = {
            type = "structure",
        },
        Truck = {
            type = "structure",
        },
    },
}

M.CalculateRouteMatrixInput = {
    type = "structure",
    members = {
        Allow = {
            type = "structure",
        },
        Avoid = {
            type = "structure",
        },
        DepartNow = {
            type = "boolean",
        },
        DepartureTime = {
            type = "string",
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Exclude = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        RoutingBoundary = {
            type = "structure",
        },
        Traffic = {
            type = "structure",
        },
        TravelMode = {
            type = "string",
        },
        TravelModeOptions = {
            type = "structure",
        },
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
    members = {
        Distance = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Duration = {
            type = "number",
            traits = {
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
    members = {
        ErrorCount = {
            type = "number",
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
            member_type = "list",
            traits = {
                required = true,
            },
        },
        RoutingBoundary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteAllowOptions = {
    type = "structure",
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
    members = {
        Corridor = {
            type = "structure",
        },
        BoundingBox = {
            type = "list",
            member_type = "number",
        },
        Polygon = {
            type = "list",
            member_type = "list",
        },
        PolylineCorridor = {
            type = "structure",
        },
        PolylinePolygon = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RouteAvoidanceArea = {
    type = "structure",
    members = {
        Except = {
            type = "list",
            member_type = "structure",
        },
        Geometry = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteZoneCategory = {
    CONGESTION_PRICING = "CongestionPricing",
    ENVIRONMENTAL = "Environmental",
    VIGNETTE = "Vignette",
}

M.RouteAvoidanceZoneCategory = {
    type = "structure",
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
    members = {
        Areas = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        Tunnels = {
            type = "boolean",
        },
        UTurns = {
            type = "boolean",
        },
        ZoneCategories = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RouteMatchingOptions = {
    type = "structure",
    members = {
        NameHint = {
            type = "string",
        },
        OnRoadThreshold = {
            type = "number",
        },
        Radius = {
            type = "number",
        },
        Strategy = {
            type = "string",
        },
    },
}

M.RouteSideOfStreetOptions = {
    type = "structure",
    members = {
        Position = {
            type = "list",
            member_type = "number",
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
    members = {
        AvoidActionsForDistance = {
            type = "number",
        },
        AvoidUTurns = {
            type = "boolean",
        },
        Heading = {
            type = "number",
        },
        Matching = {
            type = "structure",
        },
        SideOfStreet = {
            type = "structure",
        },
        StopDuration = {
            type = "number",
        },
    },
}

M.RouteDriverScheduleInterval = {
    type = "structure",
    members = {
        DriveDuration = {
            type = "number",
            traits = {
                required = true,
            },
        },
        RestDuration = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteDriverOptions = {
    type = "structure",
    members = {
        Schedule = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RouteExclusionOptions = {
    type = "structure",
    members = {
        Countries = {
            type = "list",
            member_type = "string",
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
    members = {
        AvoidActionsForDistance = {
            type = "number",
        },
        AvoidUTurns = {
            type = "boolean",
        },
        Heading = {
            type = "number",
        },
        Matching = {
            type = "structure",
        },
        SideOfStreet = {
            type = "structure",
        },
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
        EmissionType = {
            type = "structure",
        },
        VehicleCategory = {
            type = "string",
        },
    },
}

M.RouteTrafficOptions = {
    type = "structure",
    members = {
        FlowEventThresholdOverride = {
            type = "number",
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
    members = {
        LastCharacter = {
            type = "string",
        },
    },
}

M.RouteCarOptions = {
    type = "structure",
    members = {
        EngineType = {
            type = "string",
        },
        LicensePlate = {
            type = "structure",
        },
        MaxSpeed = {
            type = "number",
        },
        Occupancy = {
            type = "number",
        },
    },
}

M.RoutePedestrianOptions = {
    type = "structure",
    members = {
        Speed = {
            type = "number",
        },
    },
}

M.RouteScooterOptions = {
    type = "structure",
    members = {
        EngineType = {
            type = "string",
        },
        LicensePlate = {
            type = "structure",
        },
        MaxSpeed = {
            type = "number",
        },
        Occupancy = {
            type = "number",
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
    members = {
        AxleCount = {
            type = "number",
        },
        TrailerCount = {
            type = "number",
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
    members = {
        AxleCount = {
            type = "number",
        },
        EngineType = {
            type = "string",
        },
        GrossWeight = {
            type = "number",
        },
        HazardousCargos = {
            type = "list",
            member_type = "string",
        },
        Height = {
            type = "number",
        },
        HeightAboveFirstAxle = {
            type = "number",
        },
        KpraLength = {
            type = "number",
        },
        Length = {
            type = "number",
        },
        LicensePlate = {
            type = "structure",
        },
        MaxSpeed = {
            type = "number",
        },
        Occupancy = {
            type = "number",
        },
        PayloadCapacity = {
            type = "number",
        },
        TireCount = {
            type = "number",
        },
        Trailer = {
            type = "structure",
        },
        TruckType = {
            type = "string",
        },
        TunnelRestrictionCode = {
            type = "string",
        },
        WeightPerAxle = {
            type = "number",
        },
        WeightPerAxleGroup = {
            type = "structure",
        },
        Width = {
            type = "number",
        },
    },
}

M.RouteTravelModeOptions = {
    type = "structure",
    members = {
        Car = {
            type = "structure",
        },
        Pedestrian = {
            type = "structure",
        },
        Scooter = {
            type = "structure",
        },
        Truck = {
            type = "structure",
        },
    },
}

M.RouteTravelStepType = {
    DEFAULT = "Default",
    TURN_BY_TURN = "TurnByTurn",
}

M.RouteWaypoint = {
    type = "structure",
    members = {
        AvoidActionsForDistance = {
            type = "number",
        },
        AvoidUTurns = {
            type = "boolean",
        },
        Heading = {
            type = "number",
        },
        Matching = {
            type = "structure",
        },
        PassThrough = {
            type = "boolean",
        },
        Position = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        SideOfStreet = {
            type = "structure",
        },
        StopDuration = {
            type = "number",
        },
    },
}

M.CalculateRoutesInput = {
    type = "structure",
    members = {
        Allow = {
            type = "structure",
        },
        ArrivalTime = {
            type = "string",
        },
        Avoid = {
            type = "structure",
        },
        DepartNow = {
            type = "boolean",
        },
        DepartureTime = {
            type = "string",
        },
        Destination = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        DestinationOptions = {
            type = "structure",
        },
        Driver = {
            type = "structure",
        },
        Exclude = {
            type = "structure",
        },
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
            member_type = "string",
        },
        LegAdditionalFeatures = {
            type = "list",
            member_type = "string",
        },
        LegGeometryFormat = {
            type = "string",
        },
        MaxAlternatives = {
            type = "number",
        },
        OptimizeRoutingFor = {
            type = "string",
        },
        Origin = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        OriginOptions = {
            type = "structure",
        },
        SpanAdditionalFeatures = {
            type = "list",
            member_type = "string",
        },
        Tolls = {
            type = "structure",
        },
        Traffic = {
            type = "structure",
        },
        TravelMode = {
            type = "string",
        },
        TravelModeOptions = {
            type = "structure",
        },
        TravelStepType = {
            type = "string",
        },
        Waypoints = {
            type = "list",
            member_type = "structure",
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
    members = {
        Duration = {
            type = "number",
            traits = {
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
    members = {
        Name = {
            type = "string",
        },
        OriginalPosition = {
            type = "list",
            member_type = "number",
        },
        Position = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        WaypointIndex = {
            type = "number",
        },
    },
}

M.RouteFerryArrival = {
    type = "structure",
    members = {
        Place = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        Duration = {
            type = "number",
            traits = {
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
    members = {
        Place = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        OriginalPosition = {
            type = "list",
            member_type = "number",
        },
        Position = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        WaypointIndex = {
            type = "number",
        },
    },
}

M.RoutePassThroughWaypoint = {
    type = "structure",
    members = {
        GeometryOffset = {
            type = "number",
        },
        Place = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.LocalizedString = {
    type = "structure",
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
    members = {
        Country = {
            type = "string",
        },
        Distance = {
            type = "number",
        },
        Duration = {
            type = "number",
        },
        GeometryOffset = {
            type = "number",
        },
        Names = {
            type = "list",
            member_type = "structure",
        },
        Region = {
            type = "string",
        },
    },
}

M.RouteFerryOverviewSummary = {
    type = "structure",
    members = {
        Distance = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Duration = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteFerryTravelOnlySummary = {
    type = "structure",
    members = {
        Duration = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteFerrySummary = {
    type = "structure",
    members = {
        Overview = {
            type = "structure",
        },
        TravelOnly = {
            type = "structure",
        },
    },
}

M.RouteFerryTravelStepType = {
    DEPART = "Depart",
    CONTINUE = "Continue",
    ARRIVE = "Arrive",
}

M.RouteFerryTravelStep = {
    type = "structure",
    members = {
        Distance = {
            type = "number",
        },
        Duration = {
            type = "number",
            traits = {
                required = true,
            },
        },
        GeometryOffset = {
            type = "number",
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
    members = {
        AfterTravelSteps = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Arrival = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        BeforeTravelSteps = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Departure = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Notices = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        PassThroughWaypoints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        RouteName = {
            type = "string",
        },
        Spans = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Summary = {
            type = "structure",
        },
        TravelSteps = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteLegGeometry = {
    type = "structure",
    members = {
        LineString = {
            type = "list",
            member_type = "list",
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
    members = {
        Name = {
            type = "string",
        },
        OriginalPosition = {
            type = "list",
            member_type = "number",
        },
        Position = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        SideOfStreet = {
            type = "string",
        },
        WaypointIndex = {
            type = "number",
        },
    },
}

M.RoutePedestrianArrival = {
    type = "structure",
    members = {
        Place = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Time = {
            type = "string",
        },
    },
}

M.RoutePedestrianDeparture = {
    type = "structure",
    members = {
        Place = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        BestCaseSpeed = {
            type = "number",
        },
        TurnDuration = {
            type = "number",
        },
        TypicalSpeed = {
            type = "number",
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
    members = {
        MaxSpeed = {
            type = "number",
        },
        Unlimited = {
            type = "boolean",
        },
    },
}

M.RoutePedestrianSpan = {
    type = "structure",
    members = {
        BestCaseDuration = {
            type = "number",
        },
        Country = {
            type = "string",
        },
        Distance = {
            type = "number",
        },
        Duration = {
            type = "number",
        },
        DynamicSpeed = {
            type = "structure",
        },
        FunctionalClassification = {
            type = "number",
        },
        GeometryOffset = {
            type = "number",
        },
        Incidents = {
            type = "list",
            member_type = "number",
        },
        Names = {
            type = "list",
            member_type = "structure",
        },
        PedestrianAccess = {
            type = "list",
            member_type = "string",
        },
        Region = {
            type = "string",
        },
        RoadAttributes = {
            type = "list",
            member_type = "string",
        },
        RouteNumbers = {
            type = "list",
            member_type = "structure",
        },
        SpeedLimit = {
            type = "structure",
        },
        TypicalDuration = {
            type = "number",
        },
    },
}

M.RoutePedestrianOverviewSummary = {
    type = "structure",
    members = {
        Distance = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Duration = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RoutePedestrianTravelOnlySummary = {
    type = "structure",
    members = {
        Duration = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RoutePedestrianSummary = {
    type = "structure",
    members = {
        Overview = {
            type = "structure",
        },
        TravelOnly = {
            type = "structure",
        },
    },
}

M.RouteContinueStepDetails = {
    type = "structure",
    members = {
        Intersection = {
            type = "list",
            member_type = "structure",
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
    members = {
        RoadName = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        RouteNumber = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Towards = {
            type = "list",
            member_type = "structure",
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
    members = {
        Intersection = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "number",
        },
        TurnIntensity = {
            type = "string",
        },
    },
}

M.RouteRoundaboutEnterStepDetails = {
    type = "structure",
    members = {
        Intersection = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "number",
        },
        TurnIntensity = {
            type = "string",
        },
    },
}

M.RouteRoundaboutExitStepDetails = {
    type = "structure",
    members = {
        Intersection = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        RelativeExit = {
            type = "number",
        },
        RoundaboutAngle = {
            type = "number",
        },
        SteeringDirection = {
            type = "string",
        },
    },
}

M.RouteRoundaboutPassStepDetails = {
    type = "structure",
    members = {
        Intersection = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "number",
        },
        TurnIntensity = {
            type = "string",
        },
    },
}

M.RouteSignpostLabel = {
    type = "structure",
    members = {
        RouteNumber = {
            type = "structure",
        },
        Text = {
            type = "structure",
        },
    },
}

M.RouteSignpost = {
    type = "structure",
    members = {
        Labels = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteTurnStepDetails = {
    type = "structure",
    members = {
        Intersection = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "number",
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
    members = {
        ContinueStepDetails = {
            type = "structure",
        },
        CurrentRoad = {
            type = "structure",
        },
        Distance = {
            type = "number",
        },
        Duration = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ExitNumber = {
            type = "list",
            member_type = "structure",
        },
        GeometryOffset = {
            type = "number",
        },
        Instruction = {
            type = "string",
        },
        KeepStepDetails = {
            type = "structure",
        },
        NextRoad = {
            type = "structure",
        },
        RoundaboutEnterStepDetails = {
            type = "structure",
        },
        RoundaboutExitStepDetails = {
            type = "structure",
        },
        RoundaboutPassStepDetails = {
            type = "structure",
        },
        Signpost = {
            type = "structure",
        },
        TurnStepDetails = {
            type = "structure",
        },
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
    members = {
        Arrival = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Departure = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Notices = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        PassThroughWaypoints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Spans = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Summary = {
            type = "structure",
        },
        TravelSteps = {
            type = "list",
            member_type = "structure",
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
    members = {
        Name = {
            type = "string",
        },
        OriginalPosition = {
            type = "list",
            member_type = "number",
        },
        Position = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        SideOfStreet = {
            type = "string",
        },
        WaypointIndex = {
            type = "number",
        },
    },
}

M.RouteVehicleArrival = {
    type = "structure",
    members = {
        Place = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Time = {
            type = "string",
        },
    },
}

M.RouteVehicleDeparture = {
    type = "structure",
    members = {
        Place = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        Min = {
            type = "number",
        },
        Max = {
            type = "number",
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
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteViolatedConstraints = {
    type = "structure",
    members = {
        AllHazardsRestricted = {
            type = "boolean",
        },
        AxleCount = {
            type = "structure",
        },
        HazardousCargos = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        MaxHeight = {
            type = "number",
        },
        MaxKpraLength = {
            type = "number",
        },
        MaxLength = {
            type = "number",
        },
        MaxPayloadCapacity = {
            type = "number",
        },
        MaxWeight = {
            type = "structure",
        },
        MaxWeightPerAxle = {
            type = "number",
        },
        MaxWeightPerAxleGroup = {
            type = "structure",
        },
        MaxWidth = {
            type = "number",
        },
        Occupancy = {
            type = "structure",
        },
        RestrictedTimes = {
            type = "string",
        },
        TimeDependent = {
            type = "boolean",
        },
        TrailerCount = {
            type = "structure",
        },
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
    members = {
        Title = {
            type = "string",
        },
        ViolatedConstraints = {
            type = "structure",
        },
    },
}

M.RouteVehicleNotice = {
    type = "structure",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Details = {
            type = "list",
            member_type = "structure",
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
    members = {
        BestCaseDuration = {
            type = "number",
        },
        CarAccess = {
            type = "list",
            member_type = "string",
        },
        Country = {
            type = "string",
        },
        Distance = {
            type = "number",
        },
        Duration = {
            type = "number",
        },
        DynamicSpeed = {
            type = "structure",
        },
        FunctionalClassification = {
            type = "number",
        },
        Gate = {
            type = "string",
        },
        GeometryOffset = {
            type = "number",
        },
        Incidents = {
            type = "list",
            member_type = "number",
        },
        Names = {
            type = "list",
            member_type = "structure",
        },
        Notices = {
            type = "list",
            member_type = "number",
        },
        RailwayCrossing = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        RoadAttributes = {
            type = "list",
            member_type = "string",
        },
        RouteNumbers = {
            type = "list",
            member_type = "structure",
        },
        ScooterAccess = {
            type = "list",
            member_type = "string",
        },
        SpeedLimit = {
            type = "structure",
        },
        TollSystems = {
            type = "list",
            member_type = "number",
        },
        TruckAccess = {
            type = "list",
            member_type = "string",
        },
        TruckRoadTypes = {
            type = "list",
            member_type = "number",
        },
        TypicalDuration = {
            type = "number",
        },
        Zones = {
            type = "list",
            member_type = "number",
        },
    },
}

M.RouteVehicleOverviewSummary = {
    type = "structure",
    members = {
        BestCaseDuration = {
            type = "number",
        },
        Distance = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Duration = {
            type = "number",
            traits = {
                required = true,
            },
        },
        TypicalDuration = {
            type = "number",
        },
    },
}

M.RouteVehicleTravelOnlySummary = {
    type = "structure",
    members = {
        BestCaseDuration = {
            type = "number",
        },
        Duration = {
            type = "number",
            traits = {
                required = true,
            },
        },
        TypicalDuration = {
            type = "number",
        },
    },
}

M.RouteVehicleSummary = {
    type = "structure",
    members = {
        Overview = {
            type = "structure",
        },
        TravelOnly = {
            type = "structure",
        },
    },
}

M.RouteTollPaymentSite = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Position = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteTollPriceValueRange = {
    type = "structure",
    members = {
        Min = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Max = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteTollPrice = {
    type = "structure",
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
            type = "number",
        },
        Range = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        RangeValue = {
            type = "structure",
        },
        Value = {
            type = "number",
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
    members = {
        Period = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PeriodCount = {
            type = "number",
        },
    },
}

M.RouteTollPass = {
    type = "structure",
    members = {
        IncludesReturnTrip = {
            type = "boolean",
        },
        SeniorPass = {
            type = "boolean",
        },
        TransferCount = {
            type = "number",
        },
        TripCount = {
            type = "number",
        },
        ValidityPeriod = {
            type = "structure",
        },
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
    members = {
        SystemName = {
            type = "string",
        },
    },
}

M.RouteTollRate = {
    type = "structure",
    members = {
        ApplicableTimes = {
            type = "string",
        },
        ConvertedPrice = {
            type = "structure",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocalPrice = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Pass = {
            type = "structure",
        },
        PaymentMethods = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Transponders = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteToll = {
    type = "structure",
    members = {
        Country = {
            type = "string",
        },
        PaymentSites = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Rates = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Systems = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteTollSystem = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.RouteContinueHighwayStepDetails = {
    type = "structure",
    members = {
        Intersection = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "number",
        },
        TurnIntensity = {
            type = "string",
        },
    },
}

M.RouteEnterHighwayStepDetails = {
    type = "structure",
    members = {
        Intersection = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "number",
        },
        TurnIntensity = {
            type = "string",
        },
    },
}

M.RouteExitStepDetails = {
    type = "structure",
    members = {
        Intersection = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        RelativeExit = {
            type = "number",
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "number",
        },
        TurnIntensity = {
            type = "string",
        },
    },
}

M.RouteRampStepDetails = {
    type = "structure",
    members = {
        Intersection = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "number",
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
    members = {
        Intersection = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SteeringDirection = {
            type = "string",
        },
        TurnAngle = {
            type = "number",
        },
        TurnIntensity = {
            type = "string",
        },
    },
}

M.RouteVehicleTravelStep = {
    type = "structure",
    members = {
        ContinueHighwayStepDetails = {
            type = "structure",
        },
        ContinueStepDetails = {
            type = "structure",
        },
        CurrentRoad = {
            type = "structure",
        },
        Distance = {
            type = "number",
        },
        Duration = {
            type = "number",
            traits = {
                required = true,
            },
        },
        EnterHighwayStepDetails = {
            type = "structure",
        },
        ExitNumber = {
            type = "list",
            member_type = "structure",
        },
        ExitStepDetails = {
            type = "structure",
        },
        GeometryOffset = {
            type = "number",
        },
        Instruction = {
            type = "string",
        },
        KeepStepDetails = {
            type = "structure",
        },
        NextRoad = {
            type = "structure",
        },
        RampStepDetails = {
            type = "structure",
        },
        RoundaboutEnterStepDetails = {
            type = "structure",
        },
        RoundaboutExitStepDetails = {
            type = "structure",
        },
        RoundaboutPassStepDetails = {
            type = "structure",
        },
        Signpost = {
            type = "structure",
        },
        TurnStepDetails = {
            type = "structure",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UTurnStepDetails = {
            type = "structure",
        },
    },
}

M.RouteZone = {
    type = "structure",
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
    members = {
        Arrival = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Departure = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Incidents = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Notices = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        PassThroughWaypoints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Spans = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Summary = {
            type = "structure",
        },
        Tolls = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        TollSystems = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        TravelSteps = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        TruckRoadTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Zones = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteLeg = {
    type = "structure",
    members = {
        FerryLegDetails = {
            type = "structure",
        },
        Geometry = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Language = {
            type = "string",
        },
        PedestrianLegDetails = {
            type = "structure",
        },
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
        VehicleLegDetails = {
            type = "structure",
        },
    },
}

M.RouteMajorRoadLabel = {
    type = "structure",
    members = {
        RoadName = {
            type = "structure",
        },
        RouteNumber = {
            type = "structure",
        },
    },
}

M.RouteTollPriceSummary = {
    type = "structure",
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
        RangeValue = {
            type = "structure",
        },
        Value = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteTollSummary = {
    type = "structure",
    members = {
        Total = {
            type = "structure",
        },
    },
}

M.RouteSummary = {
    type = "structure",
    members = {
        Distance = {
            type = "number",
        },
        Duration = {
            type = "number",
        },
        Tolls = {
            type = "structure",
        },
    },
}

M.Route = {
    type = "structure",
    members = {
        Legs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        MajorRoadLabels = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Summary = {
            type = "structure",
        },
    },
}

M.CalculateRoutesOutput = {
    type = "structure",
    members = {
        LegGeometryFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Notices = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
    members = {
        BoundingBox = {
            type = "list",
            member_type = "number",
        },
    },
}

M.WaypointOptimizationAvoidanceArea = {
    type = "structure",
    members = {
        Geometry = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.WaypointOptimizationAvoidanceOptions = {
    type = "structure",
    members = {
        Areas = {
            type = "list",
            member_type = "structure",
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
    members = {
        DrivingDistance = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.WaypointOptimizationClusteringOptions = {
    type = "structure",
    members = {
        Algorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DrivingDistanceOptions = {
            type = "structure",
        },
    },
}

M.WaypointOptimizationAccessHoursEntry = {
    type = "structure",
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
    members = {
        From = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        To = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.WaypointOptimizationSideOfStreetOptions = {
    type = "structure",
    members = {
        Position = {
            type = "list",
            member_type = "number",
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
    members = {
        AccessHours = {
            type = "structure",
        },
        AppointmentTime = {
            type = "string",
        },
        Heading = {
            type = "number",
        },
        Id = {
            type = "string",
        },
        ServiceDuration = {
            type = "number",
        },
        SideOfStreet = {
            type = "structure",
        },
    },
}

M.WaypointOptimizationRestCycleDurations = {
    type = "structure",
    members = {
        RestDuration = {
            type = "number",
            traits = {
                required = true,
            },
        },
        WorkDuration = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.WaypointOptimizationRestCycles = {
    type = "structure",
    members = {
        LongCycle = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ShortCycle = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.WaypointOptimizationRestProfile = {
    type = "structure",
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
    members = {
        RestCycles = {
            type = "structure",
        },
        RestProfile = {
            type = "structure",
        },
        TreatServiceTimeAs = {
            type = "string",
        },
    },
}

M.WaypointOptimizationExclusionOptions = {
    type = "structure",
    members = {
        Countries = {
            type = "list",
            member_type = "string",
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
    members = {
        Id = {
            type = "string",
        },
    },
}

M.WaypointOptimizationTrafficOptions = {
    type = "structure",
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
    members = {
        Speed = {
            type = "number",
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
    members = {
        TrailerCount = {
            type = "number",
        },
    },
}

M.WaypointOptimizationTruckType = {
    STRAIGHT_TRUCK = "StraightTruck",
    TRACTOR = "Tractor",
}

M.WaypointOptimizationTruckOptions = {
    type = "structure",
    members = {
        GrossWeight = {
            type = "number",
        },
        HazardousCargos = {
            type = "list",
            member_type = "string",
        },
        Height = {
            type = "number",
        },
        Length = {
            type = "number",
        },
        Trailer = {
            type = "structure",
        },
        TruckType = {
            type = "string",
        },
        TunnelRestrictionCode = {
            type = "string",
        },
        WeightPerAxle = {
            type = "number",
        },
        Width = {
            type = "number",
        },
    },
}

M.WaypointOptimizationTravelModeOptions = {
    type = "structure",
    members = {
        Pedestrian = {
            type = "structure",
        },
        Truck = {
            type = "structure",
        },
    },
}

M.WaypointOptimizationWaypoint = {
    type = "structure",
    members = {
        AccessHours = {
            type = "structure",
        },
        AppointmentTime = {
            type = "string",
        },
        Before = {
            type = "list",
            member_type = "number",
        },
        Heading = {
            type = "number",
        },
        Id = {
            type = "string",
        },
        Position = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        ServiceDuration = {
            type = "number",
        },
        SideOfStreet = {
            type = "structure",
        },
    },
}

M.OptimizeWaypointsInput = {
    type = "structure",
    members = {
        Avoid = {
            type = "structure",
        },
        Clustering = {
            type = "structure",
        },
        DepartureTime = {
            type = "string",
        },
        Destination = {
            type = "list",
            member_type = "number",
        },
        DestinationOptions = {
            type = "structure",
        },
        Driver = {
            type = "structure",
        },
        Exclude = {
            type = "structure",
        },
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
            member_type = "number",
            traits = {
                required = true,
            },
        },
        OriginOptions = {
            type = "structure",
        },
        Traffic = {
            type = "structure",
        },
        TravelMode = {
            type = "string",
        },
        TravelModeOptions = {
            type = "structure",
        },
        Waypoints = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.WaypointOptimizationConnection = {
    type = "structure",
    members = {
        Distance = {
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
                required = true,
            },
        },
        WaitDuration = {
            type = "number",
            traits = {
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
    members = {
        FailedConstraints = {
            type = "list",
            member_type = "structure",
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
            member_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.WaypointOptimizationOptimizedWaypoint = {
    type = "structure",
    members = {
        ArrivalTime = {
            type = "string",
        },
        ClusterIndex = {
            type = "number",
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
            member_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.WaypointOptimizationTimeBreakdown = {
    type = "structure",
    members = {
        RestDuration = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ServiceDuration = {
            type = "number",
            traits = {
                required = true,
            },
        },
        TravelDuration = {
            type = "number",
            traits = {
                required = true,
            },
        },
        WaitDuration = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.OptimizeWaypointsOutput = {
    type = "structure",
    members = {
        Connections = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Distance = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Duration = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ImpedingWaypoints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        OptimizedWaypoints = {
            type = "list",
            member_type = "structure",
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
        TimeBreakdown = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RoadSnapTracePoint = {
    type = "structure",
    members = {
        Heading = {
            type = "number",
        },
        Position = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        Speed = {
            type = "number",
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
    members = {
        TrailerCount = {
            type = "number",
        },
    },
}

M.RoadSnapTruckOptions = {
    type = "structure",
    members = {
        GrossWeight = {
            type = "number",
        },
        HazardousCargos = {
            type = "list",
            member_type = "string",
        },
        Height = {
            type = "number",
        },
        Length = {
            type = "number",
        },
        Trailer = {
            type = "structure",
        },
        TunnelRestrictionCode = {
            type = "string",
        },
        Width = {
            type = "number",
        },
    },
}

M.RoadSnapTravelModeOptions = {
    type = "structure",
    members = {
        Truck = {
            type = "structure",
        },
    },
}

M.SnapToRoadsInput = {
    type = "structure",
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
            type = "number",
        },
        TracePoints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        TravelMode = {
            type = "string",
        },
        TravelModeOptions = {
            type = "structure",
        },
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
            member_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RoadSnapSnappedGeometry = {
    type = "structure",
    members = {
        LineString = {
            type = "list",
            member_type = "list",
        },
        Polyline = {
            type = "string",
        },
    },
}

M.RoadSnapSnappedTracePoint = {
    type = "structure",
    members = {
        Confidence = {
            type = "number",
            traits = {
                required = true,
            },
        },
        OriginalPosition = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        SnappedPosition = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SnapToRoadsOutput = {
    type = "structure",
    members = {
        Notices = {
            type = "list",
            member_type = "structure",
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
        SnappedGeometry = {
            type = "structure",
        },
        SnappedGeometryFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnappedTracePoints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

return M
