local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.georoutes"

local M = {}

M.Position = schema.new({ type = "list", list_member = prelude.Double })

M.IsolineList = schema.new({ type = "list", list_member = M.Isoline })

M.ValidationExceptionFieldList = schema.new({ type = "list", list_member = M.ValidationExceptionField })

M.RouteMatrixDestinationList = schema.new({ type = "list", list_member = M.RouteMatrixDestination })

M.RouteMatrixOriginList = schema.new({ type = "list", list_member = M.RouteMatrixOrigin })

M.RouteMatrix = schema.new({ type = "list", list_member = M.RouteMatrixRow })

M.LanguageTagList = schema.new({ type = "list", list_member = prelude.String })

M.RouteLegAdditionalFeatureList = schema.new({ type = "list", list_member = prelude.String })

M.RouteSpanAdditionalFeatureList = schema.new({ type = "list", list_member = prelude.String })

M.RouteWaypointList = schema.new({ type = "list", list_member = M.RouteWaypoint })

M.RouteResponseNoticeList = schema.new({ type = "list", list_member = M.RouteResponseNotice })

M.RouteList = schema.new({ type = "list", list_member = M.Route })

M.WaypointOptimizationWaypointList = schema.new({ type = "list", list_member = M.WaypointOptimizationWaypoint })

M.WaypointOptimizationConnectionList = schema.new({ type = "list", list_member = M.WaypointOptimizationConnection })

M.WaypointOptimizationImpedingWaypointList = schema.new({ type = "list", list_member = M.WaypointOptimizationImpedingWaypoint })

M.WaypointOptimizationOptimizedWaypointList = schema.new({ type = "list", list_member = M.WaypointOptimizationOptimizedWaypoint })

M.RoadSnapTracePointList = schema.new({ type = "list", list_member = M.RoadSnapTracePoint })

M.RoadSnapNoticeList = schema.new({ type = "list", list_member = M.RoadSnapNotice })

M.RoadSnapSnappedTracePointList = schema.new({ type = "list", list_member = M.RoadSnapSnappedTracePoint })

M.IsolineAvoidanceAreaList = schema.new({ type = "list", list_member = M.IsolineAvoidanceArea })

M.TruckRoadTypeList = schema.new({ type = "list", list_member = prelude.String })

M.IsolineAvoidanceZoneCategoryList = schema.new({ type = "list", list_member = M.IsolineAvoidanceZoneCategory })

M.DistanceThresholdList = schema.new({ type = "list", list_member = prelude.Long })

M.TimeThresholdList = schema.new({ type = "list", list_member = prelude.Long })

M.RouteMatrixAvoidanceAreaList = schema.new({ type = "list", list_member = M.RouteMatrixAvoidanceArea })

M.RouteMatrixAvoidanceZoneCategoryList = schema.new({ type = "list", list_member = M.RouteMatrixAvoidanceZoneCategory })

M.CountryCodeList = schema.new({ type = "list", list_member = prelude.String })

M.RouteMatrixRow = schema.new({ type = "list", list_member = M.RouteMatrixEntry })

M.RouteAvoidanceAreaList = schema.new({ type = "list", list_member = M.RouteAvoidanceArea })

M.RouteAvoidanceZoneCategoryList = schema.new({ type = "list", list_member = M.RouteAvoidanceZoneCategory })

M.RouteDriverScheduleIntervalList = schema.new({ type = "list", list_member = M.RouteDriverScheduleInterval })

M.WaypointOptimizationAvoidanceAreaList = schema.new({ type = "list", list_member = M.WaypointOptimizationAvoidanceArea })

M.LineString = schema.new({ type = "list", list_member = M.Position })

M.IsolineHazardousCargoTypeList = schema.new({ type = "list", list_member = prelude.String })

M.IsolineConnectionList = schema.new({ type = "list", list_member = M.IsolineConnection })

M.IsolineShapeGeometryList = schema.new({ type = "list", list_member = M.IsolineShapeGeometry })

M.BoundingBox = schema.new({ type = "list", list_member = prelude.Double })

M.LinearRings = schema.new({ type = "list", list_member = M.LinearRing })

M.RouteMatrixHazardousCargoTypeList = schema.new({ type = "list", list_member = prelude.String })

M.RouteHazardousCargoTypeList = schema.new({ type = "list", list_member = prelude.String })

M.RouteLegList = schema.new({ type = "list", list_member = M.RouteLeg })

M.RouteMajorRoadLabelList = schema.new({ type = "list", list_member = M.RouteMajorRoadLabel })

M.WaypointOptimizationHazardousCargoTypeList = schema.new({ type = "list", list_member = prelude.String })

M.BeforeWaypointsList = schema.new({ type = "list", list_member = prelude.Integer })

M.WaypointOptimizationFailedConstraintList = schema.new({ type = "list", list_member = M.WaypointOptimizationFailedConstraint })

M.RoadSnapHazardousCargoTypeList = schema.new({ type = "list", list_member = prelude.String })

M.RoadSnapTracePointIndexList = schema.new({ type = "list", list_member = prelude.Integer })

M.IsolineAvoidanceAreaGeometryList = schema.new({ type = "list", list_member = M.IsolineAvoidanceAreaGeometry })

M.LinearRing = schema.new({ type = "list", list_member = M.Position })

M.RouteAvoidanceAreaGeometryList = schema.new({ type = "list", list_member = M.RouteAvoidanceAreaGeometry })

M.PolylineRingList = schema.new({ type = "list", list_member = prelude.String })

M.RouteFerryAfterTravelStepList = schema.new({ type = "list", list_member = M.RouteFerryAfterTravelStep })

M.RouteFerryBeforeTravelStepList = schema.new({ type = "list", list_member = M.RouteFerryBeforeTravelStep })

M.RouteFerryNoticeList = schema.new({ type = "list", list_member = M.RouteFerryNotice })

M.RoutePassThroughWaypointList = schema.new({ type = "list", list_member = M.RoutePassThroughWaypoint })

M.RouteFerrySpanList = schema.new({ type = "list", list_member = M.RouteFerrySpan })

M.RouteFerryTravelStepList = schema.new({ type = "list", list_member = M.RouteFerryTravelStep })

M.RoutePedestrianNoticeList = schema.new({ type = "list", list_member = M.RoutePedestrianNotice })

M.RoutePedestrianSpanList = schema.new({ type = "list", list_member = M.RoutePedestrianSpan })

M.RoutePedestrianTravelStepList = schema.new({ type = "list", list_member = M.RoutePedestrianTravelStep })

M.RouteVehicleIncidentList = schema.new({ type = "list", list_member = M.RouteVehicleIncident })

M.RouteVehicleNoticeList = schema.new({ type = "list", list_member = M.RouteVehicleNotice })

M.RouteVehicleSpanList = schema.new({ type = "list", list_member = M.RouteVehicleSpan })

M.RouteTollList = schema.new({ type = "list", list_member = M.RouteToll })

M.RouteTollSystemList = schema.new({ type = "list", list_member = M.RouteTollSystem })

M.RouteVehicleTravelStepList = schema.new({ type = "list", list_member = M.RouteVehicleTravelStep })

M.RouteZoneList = schema.new({ type = "list", list_member = M.RouteZone })

M.Position23 = schema.new({ type = "list", list_member = prelude.Double })

M.LocalizedStringList = schema.new({ type = "list", list_member = M.LocalizedString })

M.IndexList = schema.new({ type = "list", list_member = prelude.Integer })

M.RouteSpanPedestrianAccessAttributeList = schema.new({ type = "list", list_member = prelude.String })

M.RouteSpanRoadAttributeList = schema.new({ type = "list", list_member = prelude.String })

M.RouteNumberList = schema.new({ type = "list", list_member = M.RouteNumber })

M.RouteVehicleNoticeDetailList = schema.new({ type = "list", list_member = M.RouteVehicleNoticeDetail })

M.RouteSpanCarAccessAttributeList = schema.new({ type = "list", list_member = prelude.String })

M.RouteSpanScooterAccessAttributeList = schema.new({ type = "list", list_member = prelude.String })

M.RouteSpanTruckAccessAttributeList = schema.new({ type = "list", list_member = prelude.String })

M.RouteTollPaymentSiteList = schema.new({ type = "list", list_member = M.RouteTollPaymentSite })

M.RouteTollRateList = schema.new({ type = "list", list_member = M.RouteTollRate })

M.RouteSignpostLabelList = schema.new({ type = "list", list_member = M.RouteSignpostLabel })

M.RouteTollPaymentMethodList = schema.new({ type = "list", list_member = prelude.String })

M.RouteTransponderList = schema.new({ type = "list", list_member = M.RouteTransponder })

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.IsolineAllowOptions = schema.new({
    id = id.from(_N, "IsolineAllowOptions"),
    type = "structure",
    members = {
        Hot = schema.new({
            id = id.from(_N, "IsolineAllowOptions", "Hot"),
            type = "boolean",
            name = "Hot",
            target_id = prelude.Boolean.id,
        }),
        Hov = schema.new({
            id = id.from(_N, "IsolineAllowOptions", "Hov"),
            type = "boolean",
            name = "Hov",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.Corridor = schema.new({
    id = id.from(_N, "Corridor"),
    type = "structure",
    members = {
        LineString = schema.new({
            id = id.from(_N, "Corridor", "LineString"),
            type = "list",
            name = "LineString",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "list", list_member = prelude.Double }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Radius = schema.new({
            id = id.from(_N, "Corridor", "Radius"),
            type = "integer",
            name = "Radius",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PolylineCorridor = schema.new({
    id = id.from(_N, "PolylineCorridor"),
    type = "structure",
    members = {
        Polyline = schema.new({
            id = id.from(_N, "PolylineCorridor", "Polyline"),
            type = "string",
            name = "Polyline",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Radius = schema.new({
            id = id.from(_N, "PolylineCorridor", "Radius"),
            type = "integer",
            name = "Radius",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IsolineAvoidanceAreaGeometry = schema.new({
    id = id.from(_N, "IsolineAvoidanceAreaGeometry"),
    type = "structure",
    members = {
        BoundingBox = schema.new({
            id = id.from(_N, "IsolineAvoidanceAreaGeometry", "BoundingBox"),
            type = "list",
            name = "BoundingBox",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
        Corridor = schema.new({
            id = id.from(_N, "IsolineAvoidanceAreaGeometry", "Corridor"),
            type = "structure",
            name = "Corridor",
            target_id = id.from(_N, "Corridor"),
            target = M.Corridor,
        }),
        Polygon = schema.new({
            id = id.from(_N, "IsolineAvoidanceAreaGeometry", "Polygon"),
            type = "list",
            name = "Polygon",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "list", list_member = M.Position }),
        }),
        PolylineCorridor = schema.new({
            id = id.from(_N, "IsolineAvoidanceAreaGeometry", "PolylineCorridor"),
            type = "structure",
            name = "PolylineCorridor",
            target_id = id.from(_N, "PolylineCorridor"),
            target = M.PolylineCorridor,
        }),
        PolylinePolygon = schema.new({
            id = id.from(_N, "IsolineAvoidanceAreaGeometry", "PolylinePolygon"),
            type = "list",
            name = "PolylinePolygon",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.IsolineAvoidanceArea = schema.new({
    id = id.from(_N, "IsolineAvoidanceArea"),
    type = "structure",
    members = {
        Except = schema.new({
            id = id.from(_N, "IsolineAvoidanceArea", "Except"),
            type = "list",
            name = "Except",
            target_id = prelude.Document.id,
            list_member = M.IsolineAvoidanceAreaGeometry,
        }),
        Geometry = schema.new({
            id = id.from(_N, "IsolineAvoidanceArea", "Geometry"),
            type = "structure",
            name = "Geometry",
            target_id = id.from(_N, "IsolineAvoidanceAreaGeometry"),
            target = M.IsolineAvoidanceAreaGeometry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IsolineAvoidanceZoneCategory = schema.new({
    id = id.from(_N, "IsolineAvoidanceZoneCategory"),
    type = "structure",
    members = {
        Category = schema.new({
            id = id.from(_N, "IsolineAvoidanceZoneCategory", "Category"),
            type = "string",
            name = "Category",
            target_id = prelude.String.id,
        }),
    },
})

M.IsolineAvoidanceOptions = schema.new({
    id = id.from(_N, "IsolineAvoidanceOptions"),
    type = "structure",
    members = {
        Areas = schema.new({
            id = id.from(_N, "IsolineAvoidanceOptions", "Areas"),
            type = "list",
            name = "Areas",
            target_id = prelude.Document.id,
            list_member = M.IsolineAvoidanceArea,
        }),
        CarShuttleTrains = schema.new({
            id = id.from(_N, "IsolineAvoidanceOptions", "CarShuttleTrains"),
            type = "boolean",
            name = "CarShuttleTrains",
            target_id = prelude.Boolean.id,
        }),
        ControlledAccessHighways = schema.new({
            id = id.from(_N, "IsolineAvoidanceOptions", "ControlledAccessHighways"),
            type = "boolean",
            name = "ControlledAccessHighways",
            target_id = prelude.Boolean.id,
        }),
        DirtRoads = schema.new({
            id = id.from(_N, "IsolineAvoidanceOptions", "DirtRoads"),
            type = "boolean",
            name = "DirtRoads",
            target_id = prelude.Boolean.id,
        }),
        Ferries = schema.new({
            id = id.from(_N, "IsolineAvoidanceOptions", "Ferries"),
            type = "boolean",
            name = "Ferries",
            target_id = prelude.Boolean.id,
        }),
        SeasonalClosure = schema.new({
            id = id.from(_N, "IsolineAvoidanceOptions", "SeasonalClosure"),
            type = "boolean",
            name = "SeasonalClosure",
            target_id = prelude.Boolean.id,
        }),
        TollRoads = schema.new({
            id = id.from(_N, "IsolineAvoidanceOptions", "TollRoads"),
            type = "boolean",
            name = "TollRoads",
            target_id = prelude.Boolean.id,
        }),
        TollTransponders = schema.new({
            id = id.from(_N, "IsolineAvoidanceOptions", "TollTransponders"),
            type = "boolean",
            name = "TollTransponders",
            target_id = prelude.Boolean.id,
        }),
        TruckRoadTypes = schema.new({
            id = id.from(_N, "IsolineAvoidanceOptions", "TruckRoadTypes"),
            type = "list",
            name = "TruckRoadTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tunnels = schema.new({
            id = id.from(_N, "IsolineAvoidanceOptions", "Tunnels"),
            type = "boolean",
            name = "Tunnels",
            target_id = prelude.Boolean.id,
        }),
        UTurns = schema.new({
            id = id.from(_N, "IsolineAvoidanceOptions", "UTurns"),
            type = "boolean",
            name = "UTurns",
            target_id = prelude.Boolean.id,
        }),
        ZoneCategories = schema.new({
            id = id.from(_N, "IsolineAvoidanceOptions", "ZoneCategories"),
            type = "list",
            name = "ZoneCategories",
            target_id = prelude.Document.id,
            list_member = M.IsolineAvoidanceZoneCategory,
        }),
    },
})

M.IsolineMatchingOptions = schema.new({
    id = id.from(_N, "IsolineMatchingOptions"),
    type = "structure",
    members = {
        NameHint = schema.new({
            id = id.from(_N, "IsolineMatchingOptions", "NameHint"),
            type = "string",
            name = "NameHint",
            target_id = prelude.String.id,
        }),
        OnRoadThreshold = schema.new({
            id = id.from(_N, "IsolineMatchingOptions", "OnRoadThreshold"),
            type = "long",
            name = "OnRoadThreshold",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Radius = schema.new({
            id = id.from(_N, "IsolineMatchingOptions", "Radius"),
            type = "long",
            name = "Radius",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Strategy = schema.new({
            id = id.from(_N, "IsolineMatchingOptions", "Strategy"),
            type = "string",
            name = "Strategy",
            target_id = prelude.String.id,
        }),
    },
})

M.IsolineSideOfStreetOptions = schema.new({
    id = id.from(_N, "IsolineSideOfStreetOptions"),
    type = "structure",
    members = {
        Position = schema.new({
            id = id.from(_N, "IsolineSideOfStreetOptions", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UseWith = schema.new({
            id = id.from(_N, "IsolineSideOfStreetOptions", "UseWith"),
            type = "string",
            name = "UseWith",
            target_id = prelude.String.id,
        }),
    },
})

M.IsolineDestinationOptions = schema.new({
    id = id.from(_N, "IsolineDestinationOptions"),
    type = "structure",
    members = {
        AvoidActionsForDistance = schema.new({
            id = id.from(_N, "IsolineDestinationOptions", "AvoidActionsForDistance"),
            type = "long",
            name = "AvoidActionsForDistance",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Heading = schema.new({
            id = id.from(_N, "IsolineDestinationOptions", "Heading"),
            type = "double",
            name = "Heading",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Matching = schema.new({
            id = id.from(_N, "IsolineDestinationOptions", "Matching"),
            type = "structure",
            name = "Matching",
            target_id = id.from(_N, "IsolineMatchingOptions"),
            target = M.IsolineMatchingOptions,
        }),
        SideOfStreet = schema.new({
            id = id.from(_N, "IsolineDestinationOptions", "SideOfStreet"),
            type = "structure",
            name = "SideOfStreet",
            target_id = id.from(_N, "IsolineSideOfStreetOptions"),
            target = M.IsolineSideOfStreetOptions,
        }),
    },
})

M.IsolineGranularityOptions = schema.new({
    id = id.from(_N, "IsolineGranularityOptions"),
    type = "structure",
    members = {
        MaxPoints = schema.new({
            id = id.from(_N, "IsolineGranularityOptions", "MaxPoints"),
            type = "integer",
            name = "MaxPoints",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        MaxResolution = schema.new({
            id = id.from(_N, "IsolineGranularityOptions", "MaxResolution"),
            type = "long",
            name = "MaxResolution",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.IsolineOriginOptions = schema.new({
    id = id.from(_N, "IsolineOriginOptions"),
    type = "structure",
    members = {
        AvoidActionsForDistance = schema.new({
            id = id.from(_N, "IsolineOriginOptions", "AvoidActionsForDistance"),
            type = "long",
            name = "AvoidActionsForDistance",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Heading = schema.new({
            id = id.from(_N, "IsolineOriginOptions", "Heading"),
            type = "double",
            name = "Heading",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Matching = schema.new({
            id = id.from(_N, "IsolineOriginOptions", "Matching"),
            type = "structure",
            name = "Matching",
            target_id = id.from(_N, "IsolineMatchingOptions"),
            target = M.IsolineMatchingOptions,
        }),
        SideOfStreet = schema.new({
            id = id.from(_N, "IsolineOriginOptions", "SideOfStreet"),
            type = "structure",
            name = "SideOfStreet",
            target_id = id.from(_N, "IsolineSideOfStreetOptions"),
            target = M.IsolineSideOfStreetOptions,
        }),
    },
})

M.IsolineThresholds = schema.new({
    id = id.from(_N, "IsolineThresholds"),
    type = "structure",
    members = {
        Distance = schema.new({
            id = id.from(_N, "IsolineThresholds", "Distance"),
            type = "list",
            name = "Distance",
            target_id = prelude.Document.id,
            list_member = prelude.Long,
        }),
        Time = schema.new({
            id = id.from(_N, "IsolineThresholds", "Time"),
            type = "list",
            name = "Time",
            target_id = prelude.Document.id,
            list_member = prelude.Long,
        }),
    },
})

M.IsolineTrafficOptions = schema.new({
    id = id.from(_N, "IsolineTrafficOptions"),
    type = "structure",
    members = {
        FlowEventThresholdOverride = schema.new({
            id = id.from(_N, "IsolineTrafficOptions", "FlowEventThresholdOverride"),
            type = "long",
            name = "FlowEventThresholdOverride",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Usage = schema.new({
            id = id.from(_N, "IsolineTrafficOptions", "Usage"),
            type = "string",
            name = "Usage",
            target_id = prelude.String.id,
        }),
    },
})

M.IsolineVehicleLicensePlate = schema.new({
    id = id.from(_N, "IsolineVehicleLicensePlate"),
    type = "structure",
    members = {
        LastCharacter = schema.new({
            id = id.from(_N, "IsolineVehicleLicensePlate", "LastCharacter"),
            type = "string",
            name = "LastCharacter",
            target_id = prelude.String.id,
        }),
    },
})

M.IsolineCarOptions = schema.new({
    id = id.from(_N, "IsolineCarOptions"),
    type = "structure",
    members = {
        EngineType = schema.new({
            id = id.from(_N, "IsolineCarOptions", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
        }),
        LicensePlate = schema.new({
            id = id.from(_N, "IsolineCarOptions", "LicensePlate"),
            type = "structure",
            name = "LicensePlate",
            target_id = id.from(_N, "IsolineVehicleLicensePlate"),
            target = M.IsolineVehicleLicensePlate,
        }),
        MaxSpeed = schema.new({
            id = id.from(_N, "IsolineCarOptions", "MaxSpeed"),
            type = "double",
            name = "MaxSpeed",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Occupancy = schema.new({
            id = id.from(_N, "IsolineCarOptions", "Occupancy"),
            type = "integer",
            name = "Occupancy",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.IsolineScooterOptions = schema.new({
    id = id.from(_N, "IsolineScooterOptions"),
    type = "structure",
    members = {
        EngineType = schema.new({
            id = id.from(_N, "IsolineScooterOptions", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
        }),
        LicensePlate = schema.new({
            id = id.from(_N, "IsolineScooterOptions", "LicensePlate"),
            type = "structure",
            name = "LicensePlate",
            target_id = id.from(_N, "IsolineVehicleLicensePlate"),
            target = M.IsolineVehicleLicensePlate,
        }),
        MaxSpeed = schema.new({
            id = id.from(_N, "IsolineScooterOptions", "MaxSpeed"),
            type = "double",
            name = "MaxSpeed",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Occupancy = schema.new({
            id = id.from(_N, "IsolineScooterOptions", "Occupancy"),
            type = "integer",
            name = "Occupancy",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.IsolineTrailerOptions = schema.new({
    id = id.from(_N, "IsolineTrailerOptions"),
    type = "structure",
    members = {
        AxleCount = schema.new({
            id = id.from(_N, "IsolineTrailerOptions", "AxleCount"),
            type = "integer",
            name = "AxleCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        TrailerCount = schema.new({
            id = id.from(_N, "IsolineTrailerOptions", "TrailerCount"),
            type = "integer",
            name = "TrailerCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.WeightPerAxleGroup = schema.new({
    id = id.from(_N, "WeightPerAxleGroup"),
    type = "structure",
    members = {
        Single = schema.new({
            id = id.from(_N, "WeightPerAxleGroup", "Single"),
            type = "long",
            name = "Single",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Tandem = schema.new({
            id = id.from(_N, "WeightPerAxleGroup", "Tandem"),
            type = "long",
            name = "Tandem",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Triple = schema.new({
            id = id.from(_N, "WeightPerAxleGroup", "Triple"),
            type = "long",
            name = "Triple",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Quad = schema.new({
            id = id.from(_N, "WeightPerAxleGroup", "Quad"),
            type = "long",
            name = "Quad",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Quint = schema.new({
            id = id.from(_N, "WeightPerAxleGroup", "Quint"),
            type = "long",
            name = "Quint",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.IsolineTruckOptions = schema.new({
    id = id.from(_N, "IsolineTruckOptions"),
    type = "structure",
    members = {
        AxleCount = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "AxleCount"),
            type = "integer",
            name = "AxleCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        EngineType = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
        }),
        GrossWeight = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "GrossWeight"),
            type = "long",
            name = "GrossWeight",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        HazardousCargos = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "HazardousCargos"),
            type = "list",
            name = "HazardousCargos",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Height = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "Height"),
            type = "long",
            name = "Height",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        HeightAboveFirstAxle = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "HeightAboveFirstAxle"),
            type = "long",
            name = "HeightAboveFirstAxle",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        KpraLength = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "KpraLength"),
            type = "long",
            name = "KpraLength",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Length = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "Length"),
            type = "long",
            name = "Length",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        LicensePlate = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "LicensePlate"),
            type = "structure",
            name = "LicensePlate",
            target_id = id.from(_N, "IsolineVehicleLicensePlate"),
            target = M.IsolineVehicleLicensePlate,
        }),
        MaxSpeed = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "MaxSpeed"),
            type = "double",
            name = "MaxSpeed",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Occupancy = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "Occupancy"),
            type = "integer",
            name = "Occupancy",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        PayloadCapacity = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "PayloadCapacity"),
            type = "long",
            name = "PayloadCapacity",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TireCount = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "TireCount"),
            type = "integer",
            name = "TireCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Trailer = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "Trailer"),
            type = "structure",
            name = "Trailer",
            target_id = id.from(_N, "IsolineTrailerOptions"),
            target = M.IsolineTrailerOptions,
        }),
        TruckType = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "TruckType"),
            type = "string",
            name = "TruckType",
            target_id = prelude.String.id,
        }),
        TunnelRestrictionCode = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "TunnelRestrictionCode"),
            type = "string",
            name = "TunnelRestrictionCode",
            target_id = prelude.String.id,
        }),
        WeightPerAxle = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "WeightPerAxle"),
            type = "long",
            name = "WeightPerAxle",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        WeightPerAxleGroup = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "WeightPerAxleGroup"),
            type = "structure",
            name = "WeightPerAxleGroup",
            target_id = id.from(_N, "WeightPerAxleGroup"),
            target = M.WeightPerAxleGroup,
        }),
        Width = schema.new({
            id = id.from(_N, "IsolineTruckOptions", "Width"),
            type = "long",
            name = "Width",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.IsolineTravelModeOptions = schema.new({
    id = id.from(_N, "IsolineTravelModeOptions"),
    type = "structure",
    members = {
        Car = schema.new({
            id = id.from(_N, "IsolineTravelModeOptions", "Car"),
            type = "structure",
            name = "Car",
            target_id = id.from(_N, "IsolineCarOptions"),
            target = M.IsolineCarOptions,
        }),
        Scooter = schema.new({
            id = id.from(_N, "IsolineTravelModeOptions", "Scooter"),
            type = "structure",
            name = "Scooter",
            target_id = id.from(_N, "IsolineScooterOptions"),
            target = M.IsolineScooterOptions,
        }),
        Truck = schema.new({
            id = id.from(_N, "IsolineTravelModeOptions", "Truck"),
            type = "structure",
            name = "Truck",
            target_id = id.from(_N, "IsolineTruckOptions"),
            target = M.IsolineTruckOptions,
        }),
    },
})

M.CalculateIsolinesInput = schema.new({
    id = id.from(_N, "CalculateIsolinesRequest"),
    type = "structure",
    members = {
        Allow = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "Allow"),
            type = "structure",
            name = "Allow",
            target_id = id.from(_N, "IsolineAllowOptions"),
            target = M.IsolineAllowOptions,
        }),
        ArrivalTime = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "ArrivalTime"),
            type = "string",
            name = "ArrivalTime",
            target_id = prelude.String.id,
        }),
        Avoid = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "Avoid"),
            type = "structure",
            name = "Avoid",
            target_id = id.from(_N, "IsolineAvoidanceOptions"),
            target = M.IsolineAvoidanceOptions,
        }),
        DepartNow = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "DepartNow"),
            type = "boolean",
            name = "DepartNow",
            target_id = prelude.Boolean.id,
        }),
        DepartureTime = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "DepartureTime"),
            type = "string",
            name = "DepartureTime",
            target_id = prelude.String.id,
        }),
        Destination = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "Destination"),
            type = "list",
            name = "Destination",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
        DestinationOptions = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "DestinationOptions"),
            type = "structure",
            name = "DestinationOptions",
            target_id = id.from(_N, "IsolineDestinationOptions"),
            target = M.IsolineDestinationOptions,
        }),
        IsolineGeometryFormat = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "IsolineGeometryFormat"),
            type = "string",
            name = "IsolineGeometryFormat",
            target_id = prelude.String.id,
        }),
        IsolineGranularity = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "IsolineGranularity"),
            type = "structure",
            name = "IsolineGranularity",
            target_id = id.from(_N, "IsolineGranularityOptions"),
            target = M.IsolineGranularityOptions,
        }),
        Key = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "key" },
            },
        }),
        OptimizeIsolineFor = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "OptimizeIsolineFor"),
            type = "string",
            name = "OptimizeIsolineFor",
            target_id = prelude.String.id,
        }),
        OptimizeRoutingFor = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "OptimizeRoutingFor"),
            type = "string",
            name = "OptimizeRoutingFor",
            target_id = prelude.String.id,
        }),
        Origin = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "Origin"),
            type = "list",
            name = "Origin",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
        OriginOptions = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "OriginOptions"),
            type = "structure",
            name = "OriginOptions",
            target_id = id.from(_N, "IsolineOriginOptions"),
            target = M.IsolineOriginOptions,
        }),
        Thresholds = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "Thresholds"),
            type = "structure",
            name = "Thresholds",
            target_id = id.from(_N, "IsolineThresholds"),
            target = M.IsolineThresholds,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Traffic = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "Traffic"),
            type = "structure",
            name = "Traffic",
            target_id = id.from(_N, "IsolineTrafficOptions"),
            target = M.IsolineTrafficOptions,
        }),
        TravelMode = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "TravelMode"),
            type = "string",
            name = "TravelMode",
            target_id = prelude.String.id,
        }),
        TravelModeOptions = schema.new({
            id = id.from(_N, "CalculateIsolinesInput", "TravelModeOptions"),
            type = "structure",
            name = "TravelModeOptions",
            target_id = id.from(_N, "IsolineTravelModeOptions"),
            target = M.IsolineTravelModeOptions,
        }),
    },
})

M.IsolineConnectionGeometry = schema.new({
    id = id.from(_N, "IsolineConnectionGeometry"),
    type = "structure",
    members = {
        LineString = schema.new({
            id = id.from(_N, "IsolineConnectionGeometry", "LineString"),
            type = "list",
            name = "LineString",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "list", list_member = prelude.Double }),
        }),
        Polyline = schema.new({
            id = id.from(_N, "IsolineConnectionGeometry", "Polyline"),
            type = "string",
            name = "Polyline",
            target_id = prelude.String.id,
        }),
    },
})

M.IsolineConnection = schema.new({
    id = id.from(_N, "IsolineConnection"),
    type = "structure",
    members = {
        FromPolygonIndex = schema.new({
            id = id.from(_N, "IsolineConnection", "FromPolygonIndex"),
            type = "integer",
            name = "FromPolygonIndex",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Geometry = schema.new({
            id = id.from(_N, "IsolineConnection", "Geometry"),
            type = "structure",
            name = "Geometry",
            target_id = id.from(_N, "IsolineConnectionGeometry"),
            target = M.IsolineConnectionGeometry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ToPolygonIndex = schema.new({
            id = id.from(_N, "IsolineConnection", "ToPolygonIndex"),
            type = "integer",
            name = "ToPolygonIndex",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IsolineShapeGeometry = schema.new({
    id = id.from(_N, "IsolineShapeGeometry"),
    type = "structure",
    members = {
        Polygon = schema.new({
            id = id.from(_N, "IsolineShapeGeometry", "Polygon"),
            type = "list",
            name = "Polygon",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "list", list_member = M.Position }),
        }),
        PolylinePolygon = schema.new({
            id = id.from(_N, "IsolineShapeGeometry", "PolylinePolygon"),
            type = "list",
            name = "PolylinePolygon",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.Isoline = schema.new({
    id = id.from(_N, "Isoline"),
    type = "structure",
    members = {
        Connections = schema.new({
            id = id.from(_N, "Isoline", "Connections"),
            type = "list",
            name = "Connections",
            target_id = prelude.Document.id,
            list_member = M.IsolineConnection,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DistanceThreshold = schema.new({
            id = id.from(_N, "Isoline", "DistanceThreshold"),
            type = "long",
            name = "DistanceThreshold",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Geometries = schema.new({
            id = id.from(_N, "Isoline", "Geometries"),
            type = "list",
            name = "Geometries",
            target_id = prelude.Document.id,
            list_member = M.IsolineShapeGeometry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimeThreshold = schema.new({
            id = id.from(_N, "Isoline", "TimeThreshold"),
            type = "long",
            name = "TimeThreshold",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CalculateIsolinesOutput = schema.new({
    id = id.from(_N, "CalculateIsolinesResponse"),
    type = "structure",
    members = {
        ArrivalTime = schema.new({
            id = id.from(_N, "CalculateIsolinesOutput", "ArrivalTime"),
            type = "string",
            name = "ArrivalTime",
            target_id = prelude.String.id,
        }),
        DepartureTime = schema.new({
            id = id.from(_N, "CalculateIsolinesOutput", "DepartureTime"),
            type = "string",
            name = "DepartureTime",
            target_id = prelude.String.id,
        }),
        IsolineGeometryFormat = schema.new({
            id = id.from(_N, "CalculateIsolinesOutput", "IsolineGeometryFormat"),
            type = "string",
            name = "IsolineGeometryFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Isolines = schema.new({
            id = id.from(_N, "CalculateIsolinesOutput", "Isolines"),
            type = "list",
            name = "Isolines",
            target_id = prelude.Document.id,
            list_member = M.Isoline,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PricingBucket = schema.new({
            id = id.from(_N, "CalculateIsolinesOutput", "PricingBucket"),
            type = "string",
            name = "PricingBucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-geo-pricing-bucket" },
            },
        }),
        SnappedDestination = schema.new({
            id = id.from(_N, "CalculateIsolinesOutput", "SnappedDestination"),
            type = "list",
            name = "SnappedDestination",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
        SnappedOrigin = schema.new({
            id = id.from(_N, "CalculateIsolinesOutput", "SnappedOrigin"),
            type = "list",
            name = "SnappedOrigin",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ValidationExceptionField", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "name" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "ValidationException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "reason" },
            },
        }),
        FieldList = schema.new({
            id = id.from(_N, "ValidationException", "FieldList"),
            type = "list",
            name = "FieldList",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "fieldList" },
            },
        }),
    },
})

M.RouteMatrixAllowOptions = schema.new({
    id = id.from(_N, "RouteMatrixAllowOptions"),
    type = "structure",
    members = {
        Hot = schema.new({
            id = id.from(_N, "RouteMatrixAllowOptions", "Hot"),
            type = "boolean",
            name = "Hot",
            target_id = prelude.Boolean.id,
        }),
        Hov = schema.new({
            id = id.from(_N, "RouteMatrixAllowOptions", "Hov"),
            type = "boolean",
            name = "Hov",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.RouteMatrixAvoidanceAreaGeometry = schema.new({
    id = id.from(_N, "RouteMatrixAvoidanceAreaGeometry"),
    type = "structure",
    members = {
        BoundingBox = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceAreaGeometry", "BoundingBox"),
            type = "list",
            name = "BoundingBox",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
        Polygon = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceAreaGeometry", "Polygon"),
            type = "list",
            name = "Polygon",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "list", list_member = M.Position }),
        }),
        PolylinePolygon = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceAreaGeometry", "PolylinePolygon"),
            type = "list",
            name = "PolylinePolygon",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RouteMatrixAvoidanceArea = schema.new({
    id = id.from(_N, "RouteMatrixAvoidanceArea"),
    type = "structure",
    members = {
        Geometry = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceArea", "Geometry"),
            type = "structure",
            name = "Geometry",
            target_id = id.from(_N, "RouteMatrixAvoidanceAreaGeometry"),
            target = M.RouteMatrixAvoidanceAreaGeometry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteMatrixAvoidanceZoneCategory = schema.new({
    id = id.from(_N, "RouteMatrixAvoidanceZoneCategory"),
    type = "structure",
    members = {
        Category = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceZoneCategory", "Category"),
            type = "string",
            name = "Category",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteMatrixAvoidanceOptions = schema.new({
    id = id.from(_N, "RouteMatrixAvoidanceOptions"),
    type = "structure",
    members = {
        Areas = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceOptions", "Areas"),
            type = "list",
            name = "Areas",
            target_id = prelude.Document.id,
            list_member = M.RouteMatrixAvoidanceArea,
        }),
        CarShuttleTrains = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceOptions", "CarShuttleTrains"),
            type = "boolean",
            name = "CarShuttleTrains",
            target_id = prelude.Boolean.id,
        }),
        ControlledAccessHighways = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceOptions", "ControlledAccessHighways"),
            type = "boolean",
            name = "ControlledAccessHighways",
            target_id = prelude.Boolean.id,
        }),
        DirtRoads = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceOptions", "DirtRoads"),
            type = "boolean",
            name = "DirtRoads",
            target_id = prelude.Boolean.id,
        }),
        Ferries = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceOptions", "Ferries"),
            type = "boolean",
            name = "Ferries",
            target_id = prelude.Boolean.id,
        }),
        TollRoads = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceOptions", "TollRoads"),
            type = "boolean",
            name = "TollRoads",
            target_id = prelude.Boolean.id,
        }),
        TollTransponders = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceOptions", "TollTransponders"),
            type = "boolean",
            name = "TollTransponders",
            target_id = prelude.Boolean.id,
        }),
        TruckRoadTypes = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceOptions", "TruckRoadTypes"),
            type = "list",
            name = "TruckRoadTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tunnels = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceOptions", "Tunnels"),
            type = "boolean",
            name = "Tunnels",
            target_id = prelude.Boolean.id,
        }),
        UTurns = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceOptions", "UTurns"),
            type = "boolean",
            name = "UTurns",
            target_id = prelude.Boolean.id,
        }),
        ZoneCategories = schema.new({
            id = id.from(_N, "RouteMatrixAvoidanceOptions", "ZoneCategories"),
            type = "list",
            name = "ZoneCategories",
            target_id = prelude.Document.id,
            list_member = M.RouteMatrixAvoidanceZoneCategory,
        }),
    },
})

M.RouteMatrixMatchingOptions = schema.new({
    id = id.from(_N, "RouteMatrixMatchingOptions"),
    type = "structure",
    members = {
        NameHint = schema.new({
            id = id.from(_N, "RouteMatrixMatchingOptions", "NameHint"),
            type = "string",
            name = "NameHint",
            target_id = prelude.String.id,
        }),
        OnRoadThreshold = schema.new({
            id = id.from(_N, "RouteMatrixMatchingOptions", "OnRoadThreshold"),
            type = "long",
            name = "OnRoadThreshold",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Radius = schema.new({
            id = id.from(_N, "RouteMatrixMatchingOptions", "Radius"),
            type = "long",
            name = "Radius",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Strategy = schema.new({
            id = id.from(_N, "RouteMatrixMatchingOptions", "Strategy"),
            type = "string",
            name = "Strategy",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteMatrixSideOfStreetOptions = schema.new({
    id = id.from(_N, "RouteMatrixSideOfStreetOptions"),
    type = "structure",
    members = {
        Position = schema.new({
            id = id.from(_N, "RouteMatrixSideOfStreetOptions", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UseWith = schema.new({
            id = id.from(_N, "RouteMatrixSideOfStreetOptions", "UseWith"),
            type = "string",
            name = "UseWith",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteMatrixDestinationOptions = schema.new({
    id = id.from(_N, "RouteMatrixDestinationOptions"),
    type = "structure",
    members = {
        AvoidActionsForDistance = schema.new({
            id = id.from(_N, "RouteMatrixDestinationOptions", "AvoidActionsForDistance"),
            type = "long",
            name = "AvoidActionsForDistance",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Heading = schema.new({
            id = id.from(_N, "RouteMatrixDestinationOptions", "Heading"),
            type = "double",
            name = "Heading",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Matching = schema.new({
            id = id.from(_N, "RouteMatrixDestinationOptions", "Matching"),
            type = "structure",
            name = "Matching",
            target_id = id.from(_N, "RouteMatrixMatchingOptions"),
            target = M.RouteMatrixMatchingOptions,
        }),
        SideOfStreet = schema.new({
            id = id.from(_N, "RouteMatrixDestinationOptions", "SideOfStreet"),
            type = "structure",
            name = "SideOfStreet",
            target_id = id.from(_N, "RouteMatrixSideOfStreetOptions"),
            target = M.RouteMatrixSideOfStreetOptions,
        }),
    },
})

M.RouteMatrixDestination = schema.new({
    id = id.from(_N, "RouteMatrixDestination"),
    type = "structure",
    members = {
        Options = schema.new({
            id = id.from(_N, "RouteMatrixDestination", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "RouteMatrixDestinationOptions"),
            target = M.RouteMatrixDestinationOptions,
        }),
        Position = schema.new({
            id = id.from(_N, "RouteMatrixDestination", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteMatrixExclusionOptions = schema.new({
    id = id.from(_N, "RouteMatrixExclusionOptions"),
    type = "structure",
    members = {
        Countries = schema.new({
            id = id.from(_N, "RouteMatrixExclusionOptions", "Countries"),
            type = "list",
            name = "Countries",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteMatrixOriginOptions = schema.new({
    id = id.from(_N, "RouteMatrixOriginOptions"),
    type = "structure",
    members = {
        AvoidActionsForDistance = schema.new({
            id = id.from(_N, "RouteMatrixOriginOptions", "AvoidActionsForDistance"),
            type = "long",
            name = "AvoidActionsForDistance",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Heading = schema.new({
            id = id.from(_N, "RouteMatrixOriginOptions", "Heading"),
            type = "double",
            name = "Heading",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Matching = schema.new({
            id = id.from(_N, "RouteMatrixOriginOptions", "Matching"),
            type = "structure",
            name = "Matching",
            target_id = id.from(_N, "RouteMatrixMatchingOptions"),
            target = M.RouteMatrixMatchingOptions,
        }),
        SideOfStreet = schema.new({
            id = id.from(_N, "RouteMatrixOriginOptions", "SideOfStreet"),
            type = "structure",
            name = "SideOfStreet",
            target_id = id.from(_N, "RouteMatrixSideOfStreetOptions"),
            target = M.RouteMatrixSideOfStreetOptions,
        }),
    },
})

M.RouteMatrixOrigin = schema.new({
    id = id.from(_N, "RouteMatrixOrigin"),
    type = "structure",
    members = {
        Options = schema.new({
            id = id.from(_N, "RouteMatrixOrigin", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "RouteMatrixOriginOptions"),
            target = M.RouteMatrixOriginOptions,
        }),
        Position = schema.new({
            id = id.from(_N, "RouteMatrixOrigin", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteMatrixAutoCircle = schema.new({
    id = id.from(_N, "RouteMatrixAutoCircle"),
    type = "structure",
    members = {
        Margin = schema.new({
            id = id.from(_N, "RouteMatrixAutoCircle", "Margin"),
            type = "long",
            name = "Margin",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxRadius = schema.new({
            id = id.from(_N, "RouteMatrixAutoCircle", "MaxRadius"),
            type = "long",
            name = "MaxRadius",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.Circle = schema.new({
    id = id.from(_N, "Circle"),
    type = "structure",
    members = {
        Center = schema.new({
            id = id.from(_N, "Circle", "Center"),
            type = "list",
            name = "Center",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Radius = schema.new({
            id = id.from(_N, "Circle", "Radius"),
            type = "double",
            name = "Radius",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteMatrixBoundaryGeometry = schema.new({
    id = id.from(_N, "RouteMatrixBoundaryGeometry"),
    type = "structure",
    members = {
        AutoCircle = schema.new({
            id = id.from(_N, "RouteMatrixBoundaryGeometry", "AutoCircle"),
            type = "structure",
            name = "AutoCircle",
            target_id = id.from(_N, "RouteMatrixAutoCircle"),
            target = M.RouteMatrixAutoCircle,
        }),
        Circle = schema.new({
            id = id.from(_N, "RouteMatrixBoundaryGeometry", "Circle"),
            type = "structure",
            name = "Circle",
            target_id = id.from(_N, "Circle"),
            target = M.Circle,
        }),
        BoundingBox = schema.new({
            id = id.from(_N, "RouteMatrixBoundaryGeometry", "BoundingBox"),
            type = "list",
            name = "BoundingBox",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
        Polygon = schema.new({
            id = id.from(_N, "RouteMatrixBoundaryGeometry", "Polygon"),
            type = "list",
            name = "Polygon",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "list", list_member = M.Position }),
        }),
    },
})

M.RouteMatrixBoundary = schema.new({
    id = id.from(_N, "RouteMatrixBoundary"),
    type = "structure",
    members = {
        Geometry = schema.new({
            id = id.from(_N, "RouteMatrixBoundary", "Geometry"),
            type = "structure",
            name = "Geometry",
            target_id = id.from(_N, "RouteMatrixBoundaryGeometry"),
            target = M.RouteMatrixBoundaryGeometry,
        }),
        Unbounded = schema.new({
            id = id.from(_N, "RouteMatrixBoundary", "Unbounded"),
            type = "boolean",
            name = "Unbounded",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.RouteMatrixTrafficOptions = schema.new({
    id = id.from(_N, "RouteMatrixTrafficOptions"),
    type = "structure",
    members = {
        FlowEventThresholdOverride = schema.new({
            id = id.from(_N, "RouteMatrixTrafficOptions", "FlowEventThresholdOverride"),
            type = "long",
            name = "FlowEventThresholdOverride",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Usage = schema.new({
            id = id.from(_N, "RouteMatrixTrafficOptions", "Usage"),
            type = "string",
            name = "Usage",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteMatrixVehicleLicensePlate = schema.new({
    id = id.from(_N, "RouteMatrixVehicleLicensePlate"),
    type = "structure",
    members = {
        LastCharacter = schema.new({
            id = id.from(_N, "RouteMatrixVehicleLicensePlate", "LastCharacter"),
            type = "string",
            name = "LastCharacter",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteMatrixCarOptions = schema.new({
    id = id.from(_N, "RouteMatrixCarOptions"),
    type = "structure",
    members = {
        LicensePlate = schema.new({
            id = id.from(_N, "RouteMatrixCarOptions", "LicensePlate"),
            type = "structure",
            name = "LicensePlate",
            target_id = id.from(_N, "RouteMatrixVehicleLicensePlate"),
            target = M.RouteMatrixVehicleLicensePlate,
        }),
        MaxSpeed = schema.new({
            id = id.from(_N, "RouteMatrixCarOptions", "MaxSpeed"),
            type = "double",
            name = "MaxSpeed",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Occupancy = schema.new({
            id = id.from(_N, "RouteMatrixCarOptions", "Occupancy"),
            type = "integer",
            name = "Occupancy",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.RouteMatrixScooterOptions = schema.new({
    id = id.from(_N, "RouteMatrixScooterOptions"),
    type = "structure",
    members = {
        LicensePlate = schema.new({
            id = id.from(_N, "RouteMatrixScooterOptions", "LicensePlate"),
            type = "structure",
            name = "LicensePlate",
            target_id = id.from(_N, "RouteMatrixVehicleLicensePlate"),
            target = M.RouteMatrixVehicleLicensePlate,
        }),
        MaxSpeed = schema.new({
            id = id.from(_N, "RouteMatrixScooterOptions", "MaxSpeed"),
            type = "double",
            name = "MaxSpeed",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Occupancy = schema.new({
            id = id.from(_N, "RouteMatrixScooterOptions", "Occupancy"),
            type = "integer",
            name = "Occupancy",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.RouteMatrixTrailerOptions = schema.new({
    id = id.from(_N, "RouteMatrixTrailerOptions"),
    type = "structure",
    members = {
        TrailerCount = schema.new({
            id = id.from(_N, "RouteMatrixTrailerOptions", "TrailerCount"),
            type = "integer",
            name = "TrailerCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RouteMatrixTruckOptions = schema.new({
    id = id.from(_N, "RouteMatrixTruckOptions"),
    type = "structure",
    members = {
        AxleCount = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "AxleCount"),
            type = "integer",
            name = "AxleCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        GrossWeight = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "GrossWeight"),
            type = "long",
            name = "GrossWeight",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        HazardousCargos = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "HazardousCargos"),
            type = "list",
            name = "HazardousCargos",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Height = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "Height"),
            type = "long",
            name = "Height",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        KpraLength = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "KpraLength"),
            type = "long",
            name = "KpraLength",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Length = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "Length"),
            type = "long",
            name = "Length",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        LicensePlate = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "LicensePlate"),
            type = "structure",
            name = "LicensePlate",
            target_id = id.from(_N, "RouteMatrixVehicleLicensePlate"),
            target = M.RouteMatrixVehicleLicensePlate,
        }),
        MaxSpeed = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "MaxSpeed"),
            type = "double",
            name = "MaxSpeed",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Occupancy = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "Occupancy"),
            type = "integer",
            name = "Occupancy",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        PayloadCapacity = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "PayloadCapacity"),
            type = "long",
            name = "PayloadCapacity",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Trailer = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "Trailer"),
            type = "structure",
            name = "Trailer",
            target_id = id.from(_N, "RouteMatrixTrailerOptions"),
            target = M.RouteMatrixTrailerOptions,
        }),
        TruckType = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "TruckType"),
            type = "string",
            name = "TruckType",
            target_id = prelude.String.id,
        }),
        TunnelRestrictionCode = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "TunnelRestrictionCode"),
            type = "string",
            name = "TunnelRestrictionCode",
            target_id = prelude.String.id,
        }),
        WeightPerAxle = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "WeightPerAxle"),
            type = "long",
            name = "WeightPerAxle",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        WeightPerAxleGroup = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "WeightPerAxleGroup"),
            type = "structure",
            name = "WeightPerAxleGroup",
            target_id = id.from(_N, "WeightPerAxleGroup"),
            target = M.WeightPerAxleGroup,
        }),
        Width = schema.new({
            id = id.from(_N, "RouteMatrixTruckOptions", "Width"),
            type = "long",
            name = "Width",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RouteMatrixTravelModeOptions = schema.new({
    id = id.from(_N, "RouteMatrixTravelModeOptions"),
    type = "structure",
    members = {
        Car = schema.new({
            id = id.from(_N, "RouteMatrixTravelModeOptions", "Car"),
            type = "structure",
            name = "Car",
            target_id = id.from(_N, "RouteMatrixCarOptions"),
            target = M.RouteMatrixCarOptions,
        }),
        Scooter = schema.new({
            id = id.from(_N, "RouteMatrixTravelModeOptions", "Scooter"),
            type = "structure",
            name = "Scooter",
            target_id = id.from(_N, "RouteMatrixScooterOptions"),
            target = M.RouteMatrixScooterOptions,
        }),
        Truck = schema.new({
            id = id.from(_N, "RouteMatrixTravelModeOptions", "Truck"),
            type = "structure",
            name = "Truck",
            target_id = id.from(_N, "RouteMatrixTruckOptions"),
            target = M.RouteMatrixTruckOptions,
        }),
    },
})

M.CalculateRouteMatrixInput = schema.new({
    id = id.from(_N, "CalculateRouteMatrixRequest"),
    type = "structure",
    members = {
        Allow = schema.new({
            id = id.from(_N, "CalculateRouteMatrixInput", "Allow"),
            type = "structure",
            name = "Allow",
            target_id = id.from(_N, "RouteMatrixAllowOptions"),
            target = M.RouteMatrixAllowOptions,
        }),
        Avoid = schema.new({
            id = id.from(_N, "CalculateRouteMatrixInput", "Avoid"),
            type = "structure",
            name = "Avoid",
            target_id = id.from(_N, "RouteMatrixAvoidanceOptions"),
            target = M.RouteMatrixAvoidanceOptions,
        }),
        DepartNow = schema.new({
            id = id.from(_N, "CalculateRouteMatrixInput", "DepartNow"),
            type = "boolean",
            name = "DepartNow",
            target_id = prelude.Boolean.id,
        }),
        DepartureTime = schema.new({
            id = id.from(_N, "CalculateRouteMatrixInput", "DepartureTime"),
            type = "string",
            name = "DepartureTime",
            target_id = prelude.String.id,
        }),
        Destinations = schema.new({
            id = id.from(_N, "CalculateRouteMatrixInput", "Destinations"),
            type = "list",
            name = "Destinations",
            target_id = prelude.Document.id,
            list_member = M.RouteMatrixDestination,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Exclude = schema.new({
            id = id.from(_N, "CalculateRouteMatrixInput", "Exclude"),
            type = "structure",
            name = "Exclude",
            target_id = id.from(_N, "RouteMatrixExclusionOptions"),
            target = M.RouteMatrixExclusionOptions,
        }),
        Key = schema.new({
            id = id.from(_N, "CalculateRouteMatrixInput", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "key" },
            },
        }),
        OptimizeRoutingFor = schema.new({
            id = id.from(_N, "CalculateRouteMatrixInput", "OptimizeRoutingFor"),
            type = "string",
            name = "OptimizeRoutingFor",
            target_id = prelude.String.id,
        }),
        Origins = schema.new({
            id = id.from(_N, "CalculateRouteMatrixInput", "Origins"),
            type = "list",
            name = "Origins",
            target_id = prelude.Document.id,
            list_member = M.RouteMatrixOrigin,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoutingBoundary = schema.new({
            id = id.from(_N, "CalculateRouteMatrixInput", "RoutingBoundary"),
            type = "structure",
            name = "RoutingBoundary",
            target_id = id.from(_N, "RouteMatrixBoundary"),
            target = M.RouteMatrixBoundary,
        }),
        Traffic = schema.new({
            id = id.from(_N, "CalculateRouteMatrixInput", "Traffic"),
            type = "structure",
            name = "Traffic",
            target_id = id.from(_N, "RouteMatrixTrafficOptions"),
            target = M.RouteMatrixTrafficOptions,
        }),
        TravelMode = schema.new({
            id = id.from(_N, "CalculateRouteMatrixInput", "TravelMode"),
            type = "string",
            name = "TravelMode",
            target_id = prelude.String.id,
        }),
        TravelModeOptions = schema.new({
            id = id.from(_N, "CalculateRouteMatrixInput", "TravelModeOptions"),
            type = "structure",
            name = "TravelModeOptions",
            target_id = id.from(_N, "RouteMatrixTravelModeOptions"),
            target = M.RouteMatrixTravelModeOptions,
        }),
    },
})

M.RouteMatrixEntry = schema.new({
    id = id.from(_N, "RouteMatrixEntry"),
    type = "structure",
    members = {
        Distance = schema.new({
            id = id.from(_N, "RouteMatrixEntry", "Distance"),
            type = "long",
            name = "Distance",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "RouteMatrixEntry", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Error = schema.new({
            id = id.from(_N, "RouteMatrixEntry", "Error"),
            type = "string",
            name = "Error",
            target_id = prelude.String.id,
        }),
    },
})

M.CalculateRouteMatrixOutput = schema.new({
    id = id.from(_N, "CalculateRouteMatrixResponse"),
    type = "structure",
    members = {
        ErrorCount = schema.new({
            id = id.from(_N, "CalculateRouteMatrixOutput", "ErrorCount"),
            type = "integer",
            name = "ErrorCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PricingBucket = schema.new({
            id = id.from(_N, "CalculateRouteMatrixOutput", "PricingBucket"),
            type = "string",
            name = "PricingBucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-geo-pricing-bucket" },
            },
        }),
        RouteMatrix = schema.new({
            id = id.from(_N, "CalculateRouteMatrixOutput", "RouteMatrix"),
            type = "list",
            name = "RouteMatrix",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "list", list_member = M.RouteMatrixEntry }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoutingBoundary = schema.new({
            id = id.from(_N, "CalculateRouteMatrixOutput", "RoutingBoundary"),
            type = "structure",
            name = "RoutingBoundary",
            target_id = id.from(_N, "RouteMatrixBoundary"),
            target = M.RouteMatrixBoundary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteAllowOptions = schema.new({
    id = id.from(_N, "RouteAllowOptions"),
    type = "structure",
    members = {
        Hot = schema.new({
            id = id.from(_N, "RouteAllowOptions", "Hot"),
            type = "boolean",
            name = "Hot",
            target_id = prelude.Boolean.id,
        }),
        Hov = schema.new({
            id = id.from(_N, "RouteAllowOptions", "Hov"),
            type = "boolean",
            name = "Hov",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.RouteAvoidanceAreaGeometry = schema.new({
    id = id.from(_N, "RouteAvoidanceAreaGeometry"),
    type = "structure",
    members = {
        Corridor = schema.new({
            id = id.from(_N, "RouteAvoidanceAreaGeometry", "Corridor"),
            type = "structure",
            name = "Corridor",
            target_id = id.from(_N, "Corridor"),
            target = M.Corridor,
        }),
        BoundingBox = schema.new({
            id = id.from(_N, "RouteAvoidanceAreaGeometry", "BoundingBox"),
            type = "list",
            name = "BoundingBox",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
        Polygon = schema.new({
            id = id.from(_N, "RouteAvoidanceAreaGeometry", "Polygon"),
            type = "list",
            name = "Polygon",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "list", list_member = M.Position }),
        }),
        PolylineCorridor = schema.new({
            id = id.from(_N, "RouteAvoidanceAreaGeometry", "PolylineCorridor"),
            type = "structure",
            name = "PolylineCorridor",
            target_id = id.from(_N, "PolylineCorridor"),
            target = M.PolylineCorridor,
        }),
        PolylinePolygon = schema.new({
            id = id.from(_N, "RouteAvoidanceAreaGeometry", "PolylinePolygon"),
            type = "list",
            name = "PolylinePolygon",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RouteAvoidanceArea = schema.new({
    id = id.from(_N, "RouteAvoidanceArea"),
    type = "structure",
    members = {
        Except = schema.new({
            id = id.from(_N, "RouteAvoidanceArea", "Except"),
            type = "list",
            name = "Except",
            target_id = prelude.Document.id,
            list_member = M.RouteAvoidanceAreaGeometry,
        }),
        Geometry = schema.new({
            id = id.from(_N, "RouteAvoidanceArea", "Geometry"),
            type = "structure",
            name = "Geometry",
            target_id = id.from(_N, "RouteAvoidanceAreaGeometry"),
            target = M.RouteAvoidanceAreaGeometry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteAvoidanceZoneCategory = schema.new({
    id = id.from(_N, "RouteAvoidanceZoneCategory"),
    type = "structure",
    members = {
        Category = schema.new({
            id = id.from(_N, "RouteAvoidanceZoneCategory", "Category"),
            type = "string",
            name = "Category",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteAvoidanceOptions = schema.new({
    id = id.from(_N, "RouteAvoidanceOptions"),
    type = "structure",
    members = {
        Areas = schema.new({
            id = id.from(_N, "RouteAvoidanceOptions", "Areas"),
            type = "list",
            name = "Areas",
            target_id = prelude.Document.id,
            list_member = M.RouteAvoidanceArea,
        }),
        CarShuttleTrains = schema.new({
            id = id.from(_N, "RouteAvoidanceOptions", "CarShuttleTrains"),
            type = "boolean",
            name = "CarShuttleTrains",
            target_id = prelude.Boolean.id,
        }),
        ControlledAccessHighways = schema.new({
            id = id.from(_N, "RouteAvoidanceOptions", "ControlledAccessHighways"),
            type = "boolean",
            name = "ControlledAccessHighways",
            target_id = prelude.Boolean.id,
        }),
        DirtRoads = schema.new({
            id = id.from(_N, "RouteAvoidanceOptions", "DirtRoads"),
            type = "boolean",
            name = "DirtRoads",
            target_id = prelude.Boolean.id,
        }),
        Ferries = schema.new({
            id = id.from(_N, "RouteAvoidanceOptions", "Ferries"),
            type = "boolean",
            name = "Ferries",
            target_id = prelude.Boolean.id,
        }),
        SeasonalClosure = schema.new({
            id = id.from(_N, "RouteAvoidanceOptions", "SeasonalClosure"),
            type = "boolean",
            name = "SeasonalClosure",
            target_id = prelude.Boolean.id,
        }),
        TollRoads = schema.new({
            id = id.from(_N, "RouteAvoidanceOptions", "TollRoads"),
            type = "boolean",
            name = "TollRoads",
            target_id = prelude.Boolean.id,
        }),
        TollTransponders = schema.new({
            id = id.from(_N, "RouteAvoidanceOptions", "TollTransponders"),
            type = "boolean",
            name = "TollTransponders",
            target_id = prelude.Boolean.id,
        }),
        TruckRoadTypes = schema.new({
            id = id.from(_N, "RouteAvoidanceOptions", "TruckRoadTypes"),
            type = "list",
            name = "TruckRoadTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tunnels = schema.new({
            id = id.from(_N, "RouteAvoidanceOptions", "Tunnels"),
            type = "boolean",
            name = "Tunnels",
            target_id = prelude.Boolean.id,
        }),
        UTurns = schema.new({
            id = id.from(_N, "RouteAvoidanceOptions", "UTurns"),
            type = "boolean",
            name = "UTurns",
            target_id = prelude.Boolean.id,
        }),
        ZoneCategories = schema.new({
            id = id.from(_N, "RouteAvoidanceOptions", "ZoneCategories"),
            type = "list",
            name = "ZoneCategories",
            target_id = prelude.Document.id,
            list_member = M.RouteAvoidanceZoneCategory,
        }),
    },
})

M.RouteMatchingOptions = schema.new({
    id = id.from(_N, "RouteMatchingOptions"),
    type = "structure",
    members = {
        NameHint = schema.new({
            id = id.from(_N, "RouteMatchingOptions", "NameHint"),
            type = "string",
            name = "NameHint",
            target_id = prelude.String.id,
        }),
        OnRoadThreshold = schema.new({
            id = id.from(_N, "RouteMatchingOptions", "OnRoadThreshold"),
            type = "long",
            name = "OnRoadThreshold",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Radius = schema.new({
            id = id.from(_N, "RouteMatchingOptions", "Radius"),
            type = "long",
            name = "Radius",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Strategy = schema.new({
            id = id.from(_N, "RouteMatchingOptions", "Strategy"),
            type = "string",
            name = "Strategy",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteSideOfStreetOptions = schema.new({
    id = id.from(_N, "RouteSideOfStreetOptions"),
    type = "structure",
    members = {
        Position = schema.new({
            id = id.from(_N, "RouteSideOfStreetOptions", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UseWith = schema.new({
            id = id.from(_N, "RouteSideOfStreetOptions", "UseWith"),
            type = "string",
            name = "UseWith",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteDestinationOptions = schema.new({
    id = id.from(_N, "RouteDestinationOptions"),
    type = "structure",
    members = {
        AvoidActionsForDistance = schema.new({
            id = id.from(_N, "RouteDestinationOptions", "AvoidActionsForDistance"),
            type = "long",
            name = "AvoidActionsForDistance",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AvoidUTurns = schema.new({
            id = id.from(_N, "RouteDestinationOptions", "AvoidUTurns"),
            type = "boolean",
            name = "AvoidUTurns",
            target_id = prelude.Boolean.id,
        }),
        Heading = schema.new({
            id = id.from(_N, "RouteDestinationOptions", "Heading"),
            type = "double",
            name = "Heading",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Matching = schema.new({
            id = id.from(_N, "RouteDestinationOptions", "Matching"),
            type = "structure",
            name = "Matching",
            target_id = id.from(_N, "RouteMatchingOptions"),
            target = M.RouteMatchingOptions,
        }),
        SideOfStreet = schema.new({
            id = id.from(_N, "RouteDestinationOptions", "SideOfStreet"),
            type = "structure",
            name = "SideOfStreet",
            target_id = id.from(_N, "RouteSideOfStreetOptions"),
            target = M.RouteSideOfStreetOptions,
        }),
        StopDuration = schema.new({
            id = id.from(_N, "RouteDestinationOptions", "StopDuration"),
            type = "long",
            name = "StopDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RouteDriverScheduleInterval = schema.new({
    id = id.from(_N, "RouteDriverScheduleInterval"),
    type = "structure",
    members = {
        DriveDuration = schema.new({
            id = id.from(_N, "RouteDriverScheduleInterval", "DriveDuration"),
            type = "long",
            name = "DriveDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        RestDuration = schema.new({
            id = id.from(_N, "RouteDriverScheduleInterval", "RestDuration"),
            type = "long",
            name = "RestDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RouteDriverOptions = schema.new({
    id = id.from(_N, "RouteDriverOptions"),
    type = "structure",
    members = {
        Schedule = schema.new({
            id = id.from(_N, "RouteDriverOptions", "Schedule"),
            type = "list",
            name = "Schedule",
            target_id = prelude.Document.id,
            list_member = M.RouteDriverScheduleInterval,
        }),
    },
})

M.RouteExclusionOptions = schema.new({
    id = id.from(_N, "RouteExclusionOptions"),
    type = "structure",
    members = {
        Countries = schema.new({
            id = id.from(_N, "RouteExclusionOptions", "Countries"),
            type = "list",
            name = "Countries",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteOriginOptions = schema.new({
    id = id.from(_N, "RouteOriginOptions"),
    type = "structure",
    members = {
        AvoidActionsForDistance = schema.new({
            id = id.from(_N, "RouteOriginOptions", "AvoidActionsForDistance"),
            type = "long",
            name = "AvoidActionsForDistance",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AvoidUTurns = schema.new({
            id = id.from(_N, "RouteOriginOptions", "AvoidUTurns"),
            type = "boolean",
            name = "AvoidUTurns",
            target_id = prelude.Boolean.id,
        }),
        Heading = schema.new({
            id = id.from(_N, "RouteOriginOptions", "Heading"),
            type = "double",
            name = "Heading",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Matching = schema.new({
            id = id.from(_N, "RouteOriginOptions", "Matching"),
            type = "structure",
            name = "Matching",
            target_id = id.from(_N, "RouteMatchingOptions"),
            target = M.RouteMatchingOptions,
        }),
        SideOfStreet = schema.new({
            id = id.from(_N, "RouteOriginOptions", "SideOfStreet"),
            type = "structure",
            name = "SideOfStreet",
            target_id = id.from(_N, "RouteSideOfStreetOptions"),
            target = M.RouteSideOfStreetOptions,
        }),
    },
})

M.RouteEmissionType = schema.new({
    id = id.from(_N, "RouteEmissionType"),
    type = "structure",
    members = {
        Co2EmissionClass = schema.new({
            id = id.from(_N, "RouteEmissionType", "Co2EmissionClass"),
            type = "string",
            name = "Co2EmissionClass",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "RouteEmissionType", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteTollOptions = schema.new({
    id = id.from(_N, "RouteTollOptions"),
    type = "structure",
    members = {
        AllTransponders = schema.new({
            id = id.from(_N, "RouteTollOptions", "AllTransponders"),
            type = "boolean",
            name = "AllTransponders",
            target_id = prelude.Boolean.id,
        }),
        AllVignettes = schema.new({
            id = id.from(_N, "RouteTollOptions", "AllVignettes"),
            type = "boolean",
            name = "AllVignettes",
            target_id = prelude.Boolean.id,
        }),
        Currency = schema.new({
            id = id.from(_N, "RouteTollOptions", "Currency"),
            type = "string",
            name = "Currency",
            target_id = prelude.String.id,
        }),
        EmissionType = schema.new({
            id = id.from(_N, "RouteTollOptions", "EmissionType"),
            type = "structure",
            name = "EmissionType",
            target_id = id.from(_N, "RouteEmissionType"),
            target = M.RouteEmissionType,
        }),
        VehicleCategory = schema.new({
            id = id.from(_N, "RouteTollOptions", "VehicleCategory"),
            type = "string",
            name = "VehicleCategory",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteTrafficOptions = schema.new({
    id = id.from(_N, "RouteTrafficOptions"),
    type = "structure",
    members = {
        FlowEventThresholdOverride = schema.new({
            id = id.from(_N, "RouteTrafficOptions", "FlowEventThresholdOverride"),
            type = "long",
            name = "FlowEventThresholdOverride",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Usage = schema.new({
            id = id.from(_N, "RouteTrafficOptions", "Usage"),
            type = "string",
            name = "Usage",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteVehicleLicensePlate = schema.new({
    id = id.from(_N, "RouteVehicleLicensePlate"),
    type = "structure",
    members = {
        LastCharacter = schema.new({
            id = id.from(_N, "RouteVehicleLicensePlate", "LastCharacter"),
            type = "string",
            name = "LastCharacter",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteCarOptions = schema.new({
    id = id.from(_N, "RouteCarOptions"),
    type = "structure",
    members = {
        EngineType = schema.new({
            id = id.from(_N, "RouteCarOptions", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
        }),
        LicensePlate = schema.new({
            id = id.from(_N, "RouteCarOptions", "LicensePlate"),
            type = "structure",
            name = "LicensePlate",
            target_id = id.from(_N, "RouteVehicleLicensePlate"),
            target = M.RouteVehicleLicensePlate,
        }),
        MaxSpeed = schema.new({
            id = id.from(_N, "RouteCarOptions", "MaxSpeed"),
            type = "double",
            name = "MaxSpeed",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Occupancy = schema.new({
            id = id.from(_N, "RouteCarOptions", "Occupancy"),
            type = "integer",
            name = "Occupancy",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.RoutePedestrianOptions = schema.new({
    id = id.from(_N, "RoutePedestrianOptions"),
    type = "structure",
    members = {
        Speed = schema.new({
            id = id.from(_N, "RoutePedestrianOptions", "Speed"),
            type = "double",
            name = "Speed",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.RouteScooterOptions = schema.new({
    id = id.from(_N, "RouteScooterOptions"),
    type = "structure",
    members = {
        EngineType = schema.new({
            id = id.from(_N, "RouteScooterOptions", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
        }),
        LicensePlate = schema.new({
            id = id.from(_N, "RouteScooterOptions", "LicensePlate"),
            type = "structure",
            name = "LicensePlate",
            target_id = id.from(_N, "RouteVehicleLicensePlate"),
            target = M.RouteVehicleLicensePlate,
        }),
        MaxSpeed = schema.new({
            id = id.from(_N, "RouteScooterOptions", "MaxSpeed"),
            type = "double",
            name = "MaxSpeed",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Occupancy = schema.new({
            id = id.from(_N, "RouteScooterOptions", "Occupancy"),
            type = "integer",
            name = "Occupancy",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.RouteTrailerOptions = schema.new({
    id = id.from(_N, "RouteTrailerOptions"),
    type = "structure",
    members = {
        AxleCount = schema.new({
            id = id.from(_N, "RouteTrailerOptions", "AxleCount"),
            type = "integer",
            name = "AxleCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        TrailerCount = schema.new({
            id = id.from(_N, "RouteTrailerOptions", "TrailerCount"),
            type = "integer",
            name = "TrailerCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.RouteTruckOptions = schema.new({
    id = id.from(_N, "RouteTruckOptions"),
    type = "structure",
    members = {
        AxleCount = schema.new({
            id = id.from(_N, "RouteTruckOptions", "AxleCount"),
            type = "integer",
            name = "AxleCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        EngineType = schema.new({
            id = id.from(_N, "RouteTruckOptions", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
        }),
        GrossWeight = schema.new({
            id = id.from(_N, "RouteTruckOptions", "GrossWeight"),
            type = "long",
            name = "GrossWeight",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        HazardousCargos = schema.new({
            id = id.from(_N, "RouteTruckOptions", "HazardousCargos"),
            type = "list",
            name = "HazardousCargos",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Height = schema.new({
            id = id.from(_N, "RouteTruckOptions", "Height"),
            type = "long",
            name = "Height",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        HeightAboveFirstAxle = schema.new({
            id = id.from(_N, "RouteTruckOptions", "HeightAboveFirstAxle"),
            type = "long",
            name = "HeightAboveFirstAxle",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        KpraLength = schema.new({
            id = id.from(_N, "RouteTruckOptions", "KpraLength"),
            type = "long",
            name = "KpraLength",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Length = schema.new({
            id = id.from(_N, "RouteTruckOptions", "Length"),
            type = "long",
            name = "Length",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        LicensePlate = schema.new({
            id = id.from(_N, "RouteTruckOptions", "LicensePlate"),
            type = "structure",
            name = "LicensePlate",
            target_id = id.from(_N, "RouteVehicleLicensePlate"),
            target = M.RouteVehicleLicensePlate,
        }),
        MaxSpeed = schema.new({
            id = id.from(_N, "RouteTruckOptions", "MaxSpeed"),
            type = "double",
            name = "MaxSpeed",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Occupancy = schema.new({
            id = id.from(_N, "RouteTruckOptions", "Occupancy"),
            type = "integer",
            name = "Occupancy",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        PayloadCapacity = schema.new({
            id = id.from(_N, "RouteTruckOptions", "PayloadCapacity"),
            type = "long",
            name = "PayloadCapacity",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TireCount = schema.new({
            id = id.from(_N, "RouteTruckOptions", "TireCount"),
            type = "integer",
            name = "TireCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Trailer = schema.new({
            id = id.from(_N, "RouteTruckOptions", "Trailer"),
            type = "structure",
            name = "Trailer",
            target_id = id.from(_N, "RouteTrailerOptions"),
            target = M.RouteTrailerOptions,
        }),
        TruckType = schema.new({
            id = id.from(_N, "RouteTruckOptions", "TruckType"),
            type = "string",
            name = "TruckType",
            target_id = prelude.String.id,
        }),
        TunnelRestrictionCode = schema.new({
            id = id.from(_N, "RouteTruckOptions", "TunnelRestrictionCode"),
            type = "string",
            name = "TunnelRestrictionCode",
            target_id = prelude.String.id,
        }),
        WeightPerAxle = schema.new({
            id = id.from(_N, "RouteTruckOptions", "WeightPerAxle"),
            type = "long",
            name = "WeightPerAxle",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        WeightPerAxleGroup = schema.new({
            id = id.from(_N, "RouteTruckOptions", "WeightPerAxleGroup"),
            type = "structure",
            name = "WeightPerAxleGroup",
            target_id = id.from(_N, "WeightPerAxleGroup"),
            target = M.WeightPerAxleGroup,
        }),
        Width = schema.new({
            id = id.from(_N, "RouteTruckOptions", "Width"),
            type = "long",
            name = "Width",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RouteTravelModeOptions = schema.new({
    id = id.from(_N, "RouteTravelModeOptions"),
    type = "structure",
    members = {
        Car = schema.new({
            id = id.from(_N, "RouteTravelModeOptions", "Car"),
            type = "structure",
            name = "Car",
            target_id = id.from(_N, "RouteCarOptions"),
            target = M.RouteCarOptions,
        }),
        Pedestrian = schema.new({
            id = id.from(_N, "RouteTravelModeOptions", "Pedestrian"),
            type = "structure",
            name = "Pedestrian",
            target_id = id.from(_N, "RoutePedestrianOptions"),
            target = M.RoutePedestrianOptions,
        }),
        Scooter = schema.new({
            id = id.from(_N, "RouteTravelModeOptions", "Scooter"),
            type = "structure",
            name = "Scooter",
            target_id = id.from(_N, "RouteScooterOptions"),
            target = M.RouteScooterOptions,
        }),
        Truck = schema.new({
            id = id.from(_N, "RouteTravelModeOptions", "Truck"),
            type = "structure",
            name = "Truck",
            target_id = id.from(_N, "RouteTruckOptions"),
            target = M.RouteTruckOptions,
        }),
    },
})

M.RouteWaypoint = schema.new({
    id = id.from(_N, "RouteWaypoint"),
    type = "structure",
    members = {
        AvoidActionsForDistance = schema.new({
            id = id.from(_N, "RouteWaypoint", "AvoidActionsForDistance"),
            type = "long",
            name = "AvoidActionsForDistance",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AvoidUTurns = schema.new({
            id = id.from(_N, "RouteWaypoint", "AvoidUTurns"),
            type = "boolean",
            name = "AvoidUTurns",
            target_id = prelude.Boolean.id,
        }),
        Heading = schema.new({
            id = id.from(_N, "RouteWaypoint", "Heading"),
            type = "double",
            name = "Heading",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Matching = schema.new({
            id = id.from(_N, "RouteWaypoint", "Matching"),
            type = "structure",
            name = "Matching",
            target_id = id.from(_N, "RouteMatchingOptions"),
            target = M.RouteMatchingOptions,
        }),
        PassThrough = schema.new({
            id = id.from(_N, "RouteWaypoint", "PassThrough"),
            type = "boolean",
            name = "PassThrough",
            target_id = prelude.Boolean.id,
        }),
        Position = schema.new({
            id = id.from(_N, "RouteWaypoint", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SideOfStreet = schema.new({
            id = id.from(_N, "RouteWaypoint", "SideOfStreet"),
            type = "structure",
            name = "SideOfStreet",
            target_id = id.from(_N, "RouteSideOfStreetOptions"),
            target = M.RouteSideOfStreetOptions,
        }),
        StopDuration = schema.new({
            id = id.from(_N, "RouteWaypoint", "StopDuration"),
            type = "long",
            name = "StopDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CalculateRoutesInput = schema.new({
    id = id.from(_N, "CalculateRoutesRequest"),
    type = "structure",
    members = {
        Allow = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "Allow"),
            type = "structure",
            name = "Allow",
            target_id = id.from(_N, "RouteAllowOptions"),
            target = M.RouteAllowOptions,
        }),
        ArrivalTime = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "ArrivalTime"),
            type = "string",
            name = "ArrivalTime",
            target_id = prelude.String.id,
        }),
        Avoid = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "Avoid"),
            type = "structure",
            name = "Avoid",
            target_id = id.from(_N, "RouteAvoidanceOptions"),
            target = M.RouteAvoidanceOptions,
        }),
        DepartNow = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "DepartNow"),
            type = "boolean",
            name = "DepartNow",
            target_id = prelude.Boolean.id,
        }),
        DepartureTime = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "DepartureTime"),
            type = "string",
            name = "DepartureTime",
            target_id = prelude.String.id,
        }),
        Destination = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "Destination"),
            type = "list",
            name = "Destination",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DestinationOptions = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "DestinationOptions"),
            type = "structure",
            name = "DestinationOptions",
            target_id = id.from(_N, "RouteDestinationOptions"),
            target = M.RouteDestinationOptions,
        }),
        Driver = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "Driver"),
            type = "structure",
            name = "Driver",
            target_id = id.from(_N, "RouteDriverOptions"),
            target = M.RouteDriverOptions,
        }),
        Exclude = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "Exclude"),
            type = "structure",
            name = "Exclude",
            target_id = id.from(_N, "RouteExclusionOptions"),
            target = M.RouteExclusionOptions,
        }),
        InstructionsMeasurementSystem = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "InstructionsMeasurementSystem"),
            type = "string",
            name = "InstructionsMeasurementSystem",
            target_id = prelude.String.id,
        }),
        Key = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "key" },
            },
        }),
        Languages = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "Languages"),
            type = "list",
            name = "Languages",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LegAdditionalFeatures = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "LegAdditionalFeatures"),
            type = "list",
            name = "LegAdditionalFeatures",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LegGeometryFormat = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "LegGeometryFormat"),
            type = "string",
            name = "LegGeometryFormat",
            target_id = prelude.String.id,
        }),
        MaxAlternatives = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "MaxAlternatives"),
            type = "integer",
            name = "MaxAlternatives",
            target_id = prelude.Integer.id,
        }),
        OptimizeRoutingFor = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "OptimizeRoutingFor"),
            type = "string",
            name = "OptimizeRoutingFor",
            target_id = prelude.String.id,
        }),
        Origin = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "Origin"),
            type = "list",
            name = "Origin",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginOptions = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "OriginOptions"),
            type = "structure",
            name = "OriginOptions",
            target_id = id.from(_N, "RouteOriginOptions"),
            target = M.RouteOriginOptions,
        }),
        SpanAdditionalFeatures = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "SpanAdditionalFeatures"),
            type = "list",
            name = "SpanAdditionalFeatures",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tolls = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "Tolls"),
            type = "structure",
            name = "Tolls",
            target_id = id.from(_N, "RouteTollOptions"),
            target = M.RouteTollOptions,
        }),
        Traffic = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "Traffic"),
            type = "structure",
            name = "Traffic",
            target_id = id.from(_N, "RouteTrafficOptions"),
            target = M.RouteTrafficOptions,
        }),
        TravelMode = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "TravelMode"),
            type = "string",
            name = "TravelMode",
            target_id = prelude.String.id,
        }),
        TravelModeOptions = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "TravelModeOptions"),
            type = "structure",
            name = "TravelModeOptions",
            target_id = id.from(_N, "RouteTravelModeOptions"),
            target = M.RouteTravelModeOptions,
        }),
        TravelStepType = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "TravelStepType"),
            type = "string",
            name = "TravelStepType",
            target_id = prelude.String.id,
        }),
        Waypoints = schema.new({
            id = id.from(_N, "CalculateRoutesInput", "Waypoints"),
            type = "list",
            name = "Waypoints",
            target_id = prelude.Document.id,
            list_member = M.RouteWaypoint,
        }),
    },
})

M.RouteResponseNotice = schema.new({
    id = id.from(_N, "RouteResponseNotice"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "RouteResponseNotice", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Impact = schema.new({
            id = id.from(_N, "RouteResponseNotice", "Impact"),
            type = "string",
            name = "Impact",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteFerryAfterTravelStep = schema.new({
    id = id.from(_N, "RouteFerryAfterTravelStep"),
    type = "structure",
    members = {
        Duration = schema.new({
            id = id.from(_N, "RouteFerryAfterTravelStep", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Instruction = schema.new({
            id = id.from(_N, "RouteFerryAfterTravelStep", "Instruction"),
            type = "string",
            name = "Instruction",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "RouteFerryAfterTravelStep", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteFerryPlace = schema.new({
    id = id.from(_N, "RouteFerryPlace"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RouteFerryPlace", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        OriginalPosition = schema.new({
            id = id.from(_N, "RouteFerryPlace", "OriginalPosition"),
            type = "list",
            name = "OriginalPosition",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
        Position = schema.new({
            id = id.from(_N, "RouteFerryPlace", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WaypointIndex = schema.new({
            id = id.from(_N, "RouteFerryPlace", "WaypointIndex"),
            type = "integer",
            name = "WaypointIndex",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RouteFerryArrival = schema.new({
    id = id.from(_N, "RouteFerryArrival"),
    type = "structure",
    members = {
        Place = schema.new({
            id = id.from(_N, "RouteFerryArrival", "Place"),
            type = "structure",
            name = "Place",
            target_id = id.from(_N, "RouteFerryPlace"),
            target = M.RouteFerryPlace,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Time = schema.new({
            id = id.from(_N, "RouteFerryArrival", "Time"),
            type = "string",
            name = "Time",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteFerryBeforeTravelStep = schema.new({
    id = id.from(_N, "RouteFerryBeforeTravelStep"),
    type = "structure",
    members = {
        Duration = schema.new({
            id = id.from(_N, "RouteFerryBeforeTravelStep", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Instruction = schema.new({
            id = id.from(_N, "RouteFerryBeforeTravelStep", "Instruction"),
            type = "string",
            name = "Instruction",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "RouteFerryBeforeTravelStep", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteFerryDeparture = schema.new({
    id = id.from(_N, "RouteFerryDeparture"),
    type = "structure",
    members = {
        Place = schema.new({
            id = id.from(_N, "RouteFerryDeparture", "Place"),
            type = "structure",
            name = "Place",
            target_id = id.from(_N, "RouteFerryPlace"),
            target = M.RouteFerryPlace,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Time = schema.new({
            id = id.from(_N, "RouteFerryDeparture", "Time"),
            type = "string",
            name = "Time",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteFerryNotice = schema.new({
    id = id.from(_N, "RouteFerryNotice"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "RouteFerryNotice", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Impact = schema.new({
            id = id.from(_N, "RouteFerryNotice", "Impact"),
            type = "string",
            name = "Impact",
            target_id = prelude.String.id,
        }),
    },
})

M.RoutePassThroughPlace = schema.new({
    id = id.from(_N, "RoutePassThroughPlace"),
    type = "structure",
    members = {
        OriginalPosition = schema.new({
            id = id.from(_N, "RoutePassThroughPlace", "OriginalPosition"),
            type = "list",
            name = "OriginalPosition",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
        Position = schema.new({
            id = id.from(_N, "RoutePassThroughPlace", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WaypointIndex = schema.new({
            id = id.from(_N, "RoutePassThroughPlace", "WaypointIndex"),
            type = "integer",
            name = "WaypointIndex",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RoutePassThroughWaypoint = schema.new({
    id = id.from(_N, "RoutePassThroughWaypoint"),
    type = "structure",
    members = {
        GeometryOffset = schema.new({
            id = id.from(_N, "RoutePassThroughWaypoint", "GeometryOffset"),
            type = "integer",
            name = "GeometryOffset",
            target_id = prelude.Integer.id,
        }),
        Place = schema.new({
            id = id.from(_N, "RoutePassThroughWaypoint", "Place"),
            type = "structure",
            name = "Place",
            target_id = id.from(_N, "RoutePassThroughPlace"),
            target = M.RoutePassThroughPlace,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LocalizedString = schema.new({
    id = id.from(_N, "LocalizedString"),
    type = "structure",
    members = {
        Language = schema.new({
            id = id.from(_N, "LocalizedString", "Language"),
            type = "string",
            name = "Language",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "LocalizedString", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteFerrySpan = schema.new({
    id = id.from(_N, "RouteFerrySpan"),
    type = "structure",
    members = {
        Country = schema.new({
            id = id.from(_N, "RouteFerrySpan", "Country"),
            type = "string",
            name = "Country",
            target_id = prelude.String.id,
        }),
        Distance = schema.new({
            id = id.from(_N, "RouteFerrySpan", "Distance"),
            type = "long",
            name = "Distance",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "RouteFerrySpan", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        GeometryOffset = schema.new({
            id = id.from(_N, "RouteFerrySpan", "GeometryOffset"),
            type = "integer",
            name = "GeometryOffset",
            target_id = prelude.Integer.id,
        }),
        Names = schema.new({
            id = id.from(_N, "RouteFerrySpan", "Names"),
            type = "list",
            name = "Names",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
        }),
        Region = schema.new({
            id = id.from(_N, "RouteFerrySpan", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteFerryOverviewSummary = schema.new({
    id = id.from(_N, "RouteFerryOverviewSummary"),
    type = "structure",
    members = {
        Distance = schema.new({
            id = id.from(_N, "RouteFerryOverviewSummary", "Distance"),
            type = "long",
            name = "Distance",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "RouteFerryOverviewSummary", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RouteFerryTravelOnlySummary = schema.new({
    id = id.from(_N, "RouteFerryTravelOnlySummary"),
    type = "structure",
    members = {
        Duration = schema.new({
            id = id.from(_N, "RouteFerryTravelOnlySummary", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RouteFerrySummary = schema.new({
    id = id.from(_N, "RouteFerrySummary"),
    type = "structure",
    members = {
        Overview = schema.new({
            id = id.from(_N, "RouteFerrySummary", "Overview"),
            type = "structure",
            name = "Overview",
            target_id = id.from(_N, "RouteFerryOverviewSummary"),
            target = M.RouteFerryOverviewSummary,
        }),
        TravelOnly = schema.new({
            id = id.from(_N, "RouteFerrySummary", "TravelOnly"),
            type = "structure",
            name = "TravelOnly",
            target_id = id.from(_N, "RouteFerryTravelOnlySummary"),
            target = M.RouteFerryTravelOnlySummary,
        }),
    },
})

M.RouteFerryTravelStep = schema.new({
    id = id.from(_N, "RouteFerryTravelStep"),
    type = "structure",
    members = {
        Distance = schema.new({
            id = id.from(_N, "RouteFerryTravelStep", "Distance"),
            type = "long",
            name = "Distance",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "RouteFerryTravelStep", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        GeometryOffset = schema.new({
            id = id.from(_N, "RouteFerryTravelStep", "GeometryOffset"),
            type = "integer",
            name = "GeometryOffset",
            target_id = prelude.Integer.id,
        }),
        Instruction = schema.new({
            id = id.from(_N, "RouteFerryTravelStep", "Instruction"),
            type = "string",
            name = "Instruction",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "RouteFerryTravelStep", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteFerryLegDetails = schema.new({
    id = id.from(_N, "RouteFerryLegDetails"),
    type = "structure",
    members = {
        AfterTravelSteps = schema.new({
            id = id.from(_N, "RouteFerryLegDetails", "AfterTravelSteps"),
            type = "list",
            name = "AfterTravelSteps",
            target_id = prelude.Document.id,
            list_member = M.RouteFerryAfterTravelStep,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arrival = schema.new({
            id = id.from(_N, "RouteFerryLegDetails", "Arrival"),
            type = "structure",
            name = "Arrival",
            target_id = id.from(_N, "RouteFerryArrival"),
            target = M.RouteFerryArrival,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BeforeTravelSteps = schema.new({
            id = id.from(_N, "RouteFerryLegDetails", "BeforeTravelSteps"),
            type = "list",
            name = "BeforeTravelSteps",
            target_id = prelude.Document.id,
            list_member = M.RouteFerryBeforeTravelStep,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Departure = schema.new({
            id = id.from(_N, "RouteFerryLegDetails", "Departure"),
            type = "structure",
            name = "Departure",
            target_id = id.from(_N, "RouteFerryDeparture"),
            target = M.RouteFerryDeparture,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Notices = schema.new({
            id = id.from(_N, "RouteFerryLegDetails", "Notices"),
            type = "list",
            name = "Notices",
            target_id = prelude.Document.id,
            list_member = M.RouteFerryNotice,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PassThroughWaypoints = schema.new({
            id = id.from(_N, "RouteFerryLegDetails", "PassThroughWaypoints"),
            type = "list",
            name = "PassThroughWaypoints",
            target_id = prelude.Document.id,
            list_member = M.RoutePassThroughWaypoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RouteName = schema.new({
            id = id.from(_N, "RouteFerryLegDetails", "RouteName"),
            type = "string",
            name = "RouteName",
            target_id = prelude.String.id,
        }),
        Spans = schema.new({
            id = id.from(_N, "RouteFerryLegDetails", "Spans"),
            type = "list",
            name = "Spans",
            target_id = prelude.Document.id,
            list_member = M.RouteFerrySpan,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Summary = schema.new({
            id = id.from(_N, "RouteFerryLegDetails", "Summary"),
            type = "structure",
            name = "Summary",
            target_id = id.from(_N, "RouteFerrySummary"),
            target = M.RouteFerrySummary,
        }),
        TravelSteps = schema.new({
            id = id.from(_N, "RouteFerryLegDetails", "TravelSteps"),
            type = "list",
            name = "TravelSteps",
            target_id = prelude.Document.id,
            list_member = M.RouteFerryTravelStep,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteLegGeometry = schema.new({
    id = id.from(_N, "RouteLegGeometry"),
    type = "structure",
    members = {
        LineString = schema.new({
            id = id.from(_N, "RouteLegGeometry", "LineString"),
            type = "list",
            name = "LineString",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "list", list_member = prelude.Double }),
        }),
        Polyline = schema.new({
            id = id.from(_N, "RouteLegGeometry", "Polyline"),
            type = "string",
            name = "Polyline",
            target_id = prelude.String.id,
        }),
    },
})

M.RoutePedestrianPlace = schema.new({
    id = id.from(_N, "RoutePedestrianPlace"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RoutePedestrianPlace", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        OriginalPosition = schema.new({
            id = id.from(_N, "RoutePedestrianPlace", "OriginalPosition"),
            type = "list",
            name = "OriginalPosition",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
        Position = schema.new({
            id = id.from(_N, "RoutePedestrianPlace", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SideOfStreet = schema.new({
            id = id.from(_N, "RoutePedestrianPlace", "SideOfStreet"),
            type = "string",
            name = "SideOfStreet",
            target_id = prelude.String.id,
        }),
        WaypointIndex = schema.new({
            id = id.from(_N, "RoutePedestrianPlace", "WaypointIndex"),
            type = "integer",
            name = "WaypointIndex",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RoutePedestrianArrival = schema.new({
    id = id.from(_N, "RoutePedestrianArrival"),
    type = "structure",
    members = {
        Place = schema.new({
            id = id.from(_N, "RoutePedestrianArrival", "Place"),
            type = "structure",
            name = "Place",
            target_id = id.from(_N, "RoutePedestrianPlace"),
            target = M.RoutePedestrianPlace,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Time = schema.new({
            id = id.from(_N, "RoutePedestrianArrival", "Time"),
            type = "string",
            name = "Time",
            target_id = prelude.String.id,
        }),
    },
})

M.RoutePedestrianDeparture = schema.new({
    id = id.from(_N, "RoutePedestrianDeparture"),
    type = "structure",
    members = {
        Place = schema.new({
            id = id.from(_N, "RoutePedestrianDeparture", "Place"),
            type = "structure",
            name = "Place",
            target_id = id.from(_N, "RoutePedestrianPlace"),
            target = M.RoutePedestrianPlace,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Time = schema.new({
            id = id.from(_N, "RoutePedestrianDeparture", "Time"),
            type = "string",
            name = "Time",
            target_id = prelude.String.id,
        }),
    },
})

M.RoutePedestrianNotice = schema.new({
    id = id.from(_N, "RoutePedestrianNotice"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "RoutePedestrianNotice", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Impact = schema.new({
            id = id.from(_N, "RoutePedestrianNotice", "Impact"),
            type = "string",
            name = "Impact",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteSpanDynamicSpeedDetails = schema.new({
    id = id.from(_N, "RouteSpanDynamicSpeedDetails"),
    type = "structure",
    members = {
        BestCaseSpeed = schema.new({
            id = id.from(_N, "RouteSpanDynamicSpeedDetails", "BestCaseSpeed"),
            type = "double",
            name = "BestCaseSpeed",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TurnDuration = schema.new({
            id = id.from(_N, "RouteSpanDynamicSpeedDetails", "TurnDuration"),
            type = "long",
            name = "TurnDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TypicalSpeed = schema.new({
            id = id.from(_N, "RouteSpanDynamicSpeedDetails", "TypicalSpeed"),
            type = "double",
            name = "TypicalSpeed",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RouteNumber = schema.new({
    id = id.from(_N, "RouteNumber"),
    type = "structure",
    members = {
        Direction = schema.new({
            id = id.from(_N, "RouteNumber", "Direction"),
            type = "string",
            name = "Direction",
            target_id = prelude.String.id,
        }),
        Language = schema.new({
            id = id.from(_N, "RouteNumber", "Language"),
            type = "string",
            name = "Language",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "RouteNumber", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteSpanSpeedLimitDetails = schema.new({
    id = id.from(_N, "RouteSpanSpeedLimitDetails"),
    type = "structure",
    members = {
        MaxSpeed = schema.new({
            id = id.from(_N, "RouteSpanSpeedLimitDetails", "MaxSpeed"),
            type = "double",
            name = "MaxSpeed",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Unlimited = schema.new({
            id = id.from(_N, "RouteSpanSpeedLimitDetails", "Unlimited"),
            type = "boolean",
            name = "Unlimited",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.RoutePedestrianSpan = schema.new({
    id = id.from(_N, "RoutePedestrianSpan"),
    type = "structure",
    members = {
        BestCaseDuration = schema.new({
            id = id.from(_N, "RoutePedestrianSpan", "BestCaseDuration"),
            type = "long",
            name = "BestCaseDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Country = schema.new({
            id = id.from(_N, "RoutePedestrianSpan", "Country"),
            type = "string",
            name = "Country",
            target_id = prelude.String.id,
        }),
        Distance = schema.new({
            id = id.from(_N, "RoutePedestrianSpan", "Distance"),
            type = "long",
            name = "Distance",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "RoutePedestrianSpan", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        DynamicSpeed = schema.new({
            id = id.from(_N, "RoutePedestrianSpan", "DynamicSpeed"),
            type = "structure",
            name = "DynamicSpeed",
            target_id = id.from(_N, "RouteSpanDynamicSpeedDetails"),
            target = M.RouteSpanDynamicSpeedDetails,
        }),
        FunctionalClassification = schema.new({
            id = id.from(_N, "RoutePedestrianSpan", "FunctionalClassification"),
            type = "integer",
            name = "FunctionalClassification",
            target_id = prelude.Integer.id,
        }),
        GeometryOffset = schema.new({
            id = id.from(_N, "RoutePedestrianSpan", "GeometryOffset"),
            type = "integer",
            name = "GeometryOffset",
            target_id = prelude.Integer.id,
        }),
        Incidents = schema.new({
            id = id.from(_N, "RoutePedestrianSpan", "Incidents"),
            type = "list",
            name = "Incidents",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
        Names = schema.new({
            id = id.from(_N, "RoutePedestrianSpan", "Names"),
            type = "list",
            name = "Names",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
        }),
        PedestrianAccess = schema.new({
            id = id.from(_N, "RoutePedestrianSpan", "PedestrianAccess"),
            type = "list",
            name = "PedestrianAccess",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Region = schema.new({
            id = id.from(_N, "RoutePedestrianSpan", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        RoadAttributes = schema.new({
            id = id.from(_N, "RoutePedestrianSpan", "RoadAttributes"),
            type = "list",
            name = "RoadAttributes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RouteNumbers = schema.new({
            id = id.from(_N, "RoutePedestrianSpan", "RouteNumbers"),
            type = "list",
            name = "RouteNumbers",
            target_id = prelude.Document.id,
            list_member = M.RouteNumber,
        }),
        SpeedLimit = schema.new({
            id = id.from(_N, "RoutePedestrianSpan", "SpeedLimit"),
            type = "structure",
            name = "SpeedLimit",
            target_id = id.from(_N, "RouteSpanSpeedLimitDetails"),
            target = M.RouteSpanSpeedLimitDetails,
        }),
        TypicalDuration = schema.new({
            id = id.from(_N, "RoutePedestrianSpan", "TypicalDuration"),
            type = "long",
            name = "TypicalDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RoutePedestrianOverviewSummary = schema.new({
    id = id.from(_N, "RoutePedestrianOverviewSummary"),
    type = "structure",
    members = {
        Distance = schema.new({
            id = id.from(_N, "RoutePedestrianOverviewSummary", "Distance"),
            type = "long",
            name = "Distance",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "RoutePedestrianOverviewSummary", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RoutePedestrianTravelOnlySummary = schema.new({
    id = id.from(_N, "RoutePedestrianTravelOnlySummary"),
    type = "structure",
    members = {
        Duration = schema.new({
            id = id.from(_N, "RoutePedestrianTravelOnlySummary", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RoutePedestrianSummary = schema.new({
    id = id.from(_N, "RoutePedestrianSummary"),
    type = "structure",
    members = {
        Overview = schema.new({
            id = id.from(_N, "RoutePedestrianSummary", "Overview"),
            type = "structure",
            name = "Overview",
            target_id = id.from(_N, "RoutePedestrianOverviewSummary"),
            target = M.RoutePedestrianOverviewSummary,
        }),
        TravelOnly = schema.new({
            id = id.from(_N, "RoutePedestrianSummary", "TravelOnly"),
            type = "structure",
            name = "TravelOnly",
            target_id = id.from(_N, "RoutePedestrianTravelOnlySummary"),
            target = M.RoutePedestrianTravelOnlySummary,
        }),
    },
})

M.RouteContinueStepDetails = schema.new({
    id = id.from(_N, "RouteContinueStepDetails"),
    type = "structure",
    members = {
        Intersection = schema.new({
            id = id.from(_N, "RouteContinueStepDetails", "Intersection"),
            type = "list",
            name = "Intersection",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteRoad = schema.new({
    id = id.from(_N, "RouteRoad"),
    type = "structure",
    members = {
        RoadName = schema.new({
            id = id.from(_N, "RouteRoad", "RoadName"),
            type = "list",
            name = "RoadName",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RouteNumber = schema.new({
            id = id.from(_N, "RouteRoad", "RouteNumber"),
            type = "list",
            name = "RouteNumber",
            target_id = prelude.Document.id,
            list_member = M.RouteNumber,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Towards = schema.new({
            id = id.from(_N, "RouteRoad", "Towards"),
            type = "list",
            name = "Towards",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "RouteRoad", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteKeepStepDetails = schema.new({
    id = id.from(_N, "RouteKeepStepDetails"),
    type = "structure",
    members = {
        Intersection = schema.new({
            id = id.from(_N, "RouteKeepStepDetails", "Intersection"),
            type = "list",
            name = "Intersection",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SteeringDirection = schema.new({
            id = id.from(_N, "RouteKeepStepDetails", "SteeringDirection"),
            type = "string",
            name = "SteeringDirection",
            target_id = prelude.String.id,
        }),
        TurnAngle = schema.new({
            id = id.from(_N, "RouteKeepStepDetails", "TurnAngle"),
            type = "double",
            name = "TurnAngle",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TurnIntensity = schema.new({
            id = id.from(_N, "RouteKeepStepDetails", "TurnIntensity"),
            type = "string",
            name = "TurnIntensity",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteRoundaboutEnterStepDetails = schema.new({
    id = id.from(_N, "RouteRoundaboutEnterStepDetails"),
    type = "structure",
    members = {
        Intersection = schema.new({
            id = id.from(_N, "RouteRoundaboutEnterStepDetails", "Intersection"),
            type = "list",
            name = "Intersection",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SteeringDirection = schema.new({
            id = id.from(_N, "RouteRoundaboutEnterStepDetails", "SteeringDirection"),
            type = "string",
            name = "SteeringDirection",
            target_id = prelude.String.id,
        }),
        TurnAngle = schema.new({
            id = id.from(_N, "RouteRoundaboutEnterStepDetails", "TurnAngle"),
            type = "double",
            name = "TurnAngle",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TurnIntensity = schema.new({
            id = id.from(_N, "RouteRoundaboutEnterStepDetails", "TurnIntensity"),
            type = "string",
            name = "TurnIntensity",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteRoundaboutExitStepDetails = schema.new({
    id = id.from(_N, "RouteRoundaboutExitStepDetails"),
    type = "structure",
    members = {
        Intersection = schema.new({
            id = id.from(_N, "RouteRoundaboutExitStepDetails", "Intersection"),
            type = "list",
            name = "Intersection",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RelativeExit = schema.new({
            id = id.from(_N, "RouteRoundaboutExitStepDetails", "RelativeExit"),
            type = "integer",
            name = "RelativeExit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        RoundaboutAngle = schema.new({
            id = id.from(_N, "RouteRoundaboutExitStepDetails", "RoundaboutAngle"),
            type = "double",
            name = "RoundaboutAngle",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        SteeringDirection = schema.new({
            id = id.from(_N, "RouteRoundaboutExitStepDetails", "SteeringDirection"),
            type = "string",
            name = "SteeringDirection",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteRoundaboutPassStepDetails = schema.new({
    id = id.from(_N, "RouteRoundaboutPassStepDetails"),
    type = "structure",
    members = {
        Intersection = schema.new({
            id = id.from(_N, "RouteRoundaboutPassStepDetails", "Intersection"),
            type = "list",
            name = "Intersection",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SteeringDirection = schema.new({
            id = id.from(_N, "RouteRoundaboutPassStepDetails", "SteeringDirection"),
            type = "string",
            name = "SteeringDirection",
            target_id = prelude.String.id,
        }),
        TurnAngle = schema.new({
            id = id.from(_N, "RouteRoundaboutPassStepDetails", "TurnAngle"),
            type = "double",
            name = "TurnAngle",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TurnIntensity = schema.new({
            id = id.from(_N, "RouteRoundaboutPassStepDetails", "TurnIntensity"),
            type = "string",
            name = "TurnIntensity",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteSignpostLabel = schema.new({
    id = id.from(_N, "RouteSignpostLabel"),
    type = "structure",
    members = {
        RouteNumber = schema.new({
            id = id.from(_N, "RouteSignpostLabel", "RouteNumber"),
            type = "structure",
            name = "RouteNumber",
            target_id = id.from(_N, "RouteNumber"),
            target = M.RouteNumber,
        }),
        Text = schema.new({
            id = id.from(_N, "RouteSignpostLabel", "Text"),
            type = "structure",
            name = "Text",
            target_id = id.from(_N, "LocalizedString"),
            target = M.LocalizedString,
        }),
    },
})

M.RouteSignpost = schema.new({
    id = id.from(_N, "RouteSignpost"),
    type = "structure",
    members = {
        Labels = schema.new({
            id = id.from(_N, "RouteSignpost", "Labels"),
            type = "list",
            name = "Labels",
            target_id = prelude.Document.id,
            list_member = M.RouteSignpostLabel,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteTurnStepDetails = schema.new({
    id = id.from(_N, "RouteTurnStepDetails"),
    type = "structure",
    members = {
        Intersection = schema.new({
            id = id.from(_N, "RouteTurnStepDetails", "Intersection"),
            type = "list",
            name = "Intersection",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SteeringDirection = schema.new({
            id = id.from(_N, "RouteTurnStepDetails", "SteeringDirection"),
            type = "string",
            name = "SteeringDirection",
            target_id = prelude.String.id,
        }),
        TurnAngle = schema.new({
            id = id.from(_N, "RouteTurnStepDetails", "TurnAngle"),
            type = "double",
            name = "TurnAngle",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TurnIntensity = schema.new({
            id = id.from(_N, "RouteTurnStepDetails", "TurnIntensity"),
            type = "string",
            name = "TurnIntensity",
            target_id = prelude.String.id,
        }),
    },
})

M.RoutePedestrianTravelStep = schema.new({
    id = id.from(_N, "RoutePedestrianTravelStep"),
    type = "structure",
    members = {
        ContinueStepDetails = schema.new({
            id = id.from(_N, "RoutePedestrianTravelStep", "ContinueStepDetails"),
            type = "structure",
            name = "ContinueStepDetails",
            target_id = id.from(_N, "RouteContinueStepDetails"),
            target = M.RouteContinueStepDetails,
        }),
        CurrentRoad = schema.new({
            id = id.from(_N, "RoutePedestrianTravelStep", "CurrentRoad"),
            type = "structure",
            name = "CurrentRoad",
            target_id = id.from(_N, "RouteRoad"),
            target = M.RouteRoad,
        }),
        Distance = schema.new({
            id = id.from(_N, "RoutePedestrianTravelStep", "Distance"),
            type = "long",
            name = "Distance",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "RoutePedestrianTravelStep", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ExitNumber = schema.new({
            id = id.from(_N, "RoutePedestrianTravelStep", "ExitNumber"),
            type = "list",
            name = "ExitNumber",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
        }),
        GeometryOffset = schema.new({
            id = id.from(_N, "RoutePedestrianTravelStep", "GeometryOffset"),
            type = "integer",
            name = "GeometryOffset",
            target_id = prelude.Integer.id,
        }),
        Instruction = schema.new({
            id = id.from(_N, "RoutePedestrianTravelStep", "Instruction"),
            type = "string",
            name = "Instruction",
            target_id = prelude.String.id,
        }),
        KeepStepDetails = schema.new({
            id = id.from(_N, "RoutePedestrianTravelStep", "KeepStepDetails"),
            type = "structure",
            name = "KeepStepDetails",
            target_id = id.from(_N, "RouteKeepStepDetails"),
            target = M.RouteKeepStepDetails,
        }),
        NextRoad = schema.new({
            id = id.from(_N, "RoutePedestrianTravelStep", "NextRoad"),
            type = "structure",
            name = "NextRoad",
            target_id = id.from(_N, "RouteRoad"),
            target = M.RouteRoad,
        }),
        RoundaboutEnterStepDetails = schema.new({
            id = id.from(_N, "RoutePedestrianTravelStep", "RoundaboutEnterStepDetails"),
            type = "structure",
            name = "RoundaboutEnterStepDetails",
            target_id = id.from(_N, "RouteRoundaboutEnterStepDetails"),
            target = M.RouteRoundaboutEnterStepDetails,
        }),
        RoundaboutExitStepDetails = schema.new({
            id = id.from(_N, "RoutePedestrianTravelStep", "RoundaboutExitStepDetails"),
            type = "structure",
            name = "RoundaboutExitStepDetails",
            target_id = id.from(_N, "RouteRoundaboutExitStepDetails"),
            target = M.RouteRoundaboutExitStepDetails,
        }),
        RoundaboutPassStepDetails = schema.new({
            id = id.from(_N, "RoutePedestrianTravelStep", "RoundaboutPassStepDetails"),
            type = "structure",
            name = "RoundaboutPassStepDetails",
            target_id = id.from(_N, "RouteRoundaboutPassStepDetails"),
            target = M.RouteRoundaboutPassStepDetails,
        }),
        Signpost = schema.new({
            id = id.from(_N, "RoutePedestrianTravelStep", "Signpost"),
            type = "structure",
            name = "Signpost",
            target_id = id.from(_N, "RouteSignpost"),
            target = M.RouteSignpost,
        }),
        TurnStepDetails = schema.new({
            id = id.from(_N, "RoutePedestrianTravelStep", "TurnStepDetails"),
            type = "structure",
            name = "TurnStepDetails",
            target_id = id.from(_N, "RouteTurnStepDetails"),
            target = M.RouteTurnStepDetails,
        }),
        Type = schema.new({
            id = id.from(_N, "RoutePedestrianTravelStep", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RoutePedestrianLegDetails = schema.new({
    id = id.from(_N, "RoutePedestrianLegDetails"),
    type = "structure",
    members = {
        Arrival = schema.new({
            id = id.from(_N, "RoutePedestrianLegDetails", "Arrival"),
            type = "structure",
            name = "Arrival",
            target_id = id.from(_N, "RoutePedestrianArrival"),
            target = M.RoutePedestrianArrival,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Departure = schema.new({
            id = id.from(_N, "RoutePedestrianLegDetails", "Departure"),
            type = "structure",
            name = "Departure",
            target_id = id.from(_N, "RoutePedestrianDeparture"),
            target = M.RoutePedestrianDeparture,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Notices = schema.new({
            id = id.from(_N, "RoutePedestrianLegDetails", "Notices"),
            type = "list",
            name = "Notices",
            target_id = prelude.Document.id,
            list_member = M.RoutePedestrianNotice,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PassThroughWaypoints = schema.new({
            id = id.from(_N, "RoutePedestrianLegDetails", "PassThroughWaypoints"),
            type = "list",
            name = "PassThroughWaypoints",
            target_id = prelude.Document.id,
            list_member = M.RoutePassThroughWaypoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Spans = schema.new({
            id = id.from(_N, "RoutePedestrianLegDetails", "Spans"),
            type = "list",
            name = "Spans",
            target_id = prelude.Document.id,
            list_member = M.RoutePedestrianSpan,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Summary = schema.new({
            id = id.from(_N, "RoutePedestrianLegDetails", "Summary"),
            type = "structure",
            name = "Summary",
            target_id = id.from(_N, "RoutePedestrianSummary"),
            target = M.RoutePedestrianSummary,
        }),
        TravelSteps = schema.new({
            id = id.from(_N, "RoutePedestrianLegDetails", "TravelSteps"),
            type = "list",
            name = "TravelSteps",
            target_id = prelude.Document.id,
            list_member = M.RoutePedestrianTravelStep,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteVehiclePlace = schema.new({
    id = id.from(_N, "RouteVehiclePlace"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RouteVehiclePlace", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        OriginalPosition = schema.new({
            id = id.from(_N, "RouteVehiclePlace", "OriginalPosition"),
            type = "list",
            name = "OriginalPosition",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
        Position = schema.new({
            id = id.from(_N, "RouteVehiclePlace", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SideOfStreet = schema.new({
            id = id.from(_N, "RouteVehiclePlace", "SideOfStreet"),
            type = "string",
            name = "SideOfStreet",
            target_id = prelude.String.id,
        }),
        WaypointIndex = schema.new({
            id = id.from(_N, "RouteVehiclePlace", "WaypointIndex"),
            type = "integer",
            name = "WaypointIndex",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RouteVehicleArrival = schema.new({
    id = id.from(_N, "RouteVehicleArrival"),
    type = "structure",
    members = {
        Place = schema.new({
            id = id.from(_N, "RouteVehicleArrival", "Place"),
            type = "structure",
            name = "Place",
            target_id = id.from(_N, "RouteVehiclePlace"),
            target = M.RouteVehiclePlace,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Time = schema.new({
            id = id.from(_N, "RouteVehicleArrival", "Time"),
            type = "string",
            name = "Time",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteVehicleDeparture = schema.new({
    id = id.from(_N, "RouteVehicleDeparture"),
    type = "structure",
    members = {
        Place = schema.new({
            id = id.from(_N, "RouteVehicleDeparture", "Place"),
            type = "structure",
            name = "Place",
            target_id = id.from(_N, "RouteVehiclePlace"),
            target = M.RouteVehiclePlace,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Time = schema.new({
            id = id.from(_N, "RouteVehicleDeparture", "Time"),
            type = "string",
            name = "Time",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteVehicleIncident = schema.new({
    id = id.from(_N, "RouteVehicleIncident"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "RouteVehicleIncident", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "RouteVehicleIncident", "EndTime"),
            type = "string",
            name = "EndTime",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "RouteVehicleIncident", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "RouteVehicleIncident", "StartTime"),
            type = "string",
            name = "StartTime",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "RouteVehicleIncident", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteNoticeDetailRange = schema.new({
    id = id.from(_N, "RouteNoticeDetailRange"),
    type = "structure",
    members = {
        Min = schema.new({
            id = id.from(_N, "RouteNoticeDetailRange", "Min"),
            type = "integer",
            name = "Min",
            target_id = prelude.Integer.id,
        }),
        Max = schema.new({
            id = id.from(_N, "RouteNoticeDetailRange", "Max"),
            type = "integer",
            name = "Max",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RouteWeightConstraint = schema.new({
    id = id.from(_N, "RouteWeightConstraint"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "RouteWeightConstraint", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "RouteWeightConstraint", "Value"),
            type = "long",
            name = "Value",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RouteViolatedConstraints = schema.new({
    id = id.from(_N, "RouteViolatedConstraints"),
    type = "structure",
    members = {
        AllHazardsRestricted = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "AllHazardsRestricted"),
            type = "boolean",
            name = "AllHazardsRestricted",
            target_id = prelude.Boolean.id,
        }),
        AxleCount = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "AxleCount"),
            type = "structure",
            name = "AxleCount",
            target_id = id.from(_N, "RouteNoticeDetailRange"),
            target = M.RouteNoticeDetailRange,
        }),
        HazardousCargos = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "HazardousCargos"),
            type = "list",
            name = "HazardousCargos",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxHeight = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "MaxHeight"),
            type = "long",
            name = "MaxHeight",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxKpraLength = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "MaxKpraLength"),
            type = "long",
            name = "MaxKpraLength",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxLength = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "MaxLength"),
            type = "long",
            name = "MaxLength",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxPayloadCapacity = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "MaxPayloadCapacity"),
            type = "long",
            name = "MaxPayloadCapacity",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxWeight = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "MaxWeight"),
            type = "structure",
            name = "MaxWeight",
            target_id = id.from(_N, "RouteWeightConstraint"),
            target = M.RouteWeightConstraint,
        }),
        MaxWeightPerAxle = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "MaxWeightPerAxle"),
            type = "long",
            name = "MaxWeightPerAxle",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxWeightPerAxleGroup = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "MaxWeightPerAxleGroup"),
            type = "structure",
            name = "MaxWeightPerAxleGroup",
            target_id = id.from(_N, "WeightPerAxleGroup"),
            target = M.WeightPerAxleGroup,
        }),
        MaxWidth = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "MaxWidth"),
            type = "long",
            name = "MaxWidth",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Occupancy = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "Occupancy"),
            type = "structure",
            name = "Occupancy",
            target_id = id.from(_N, "RouteNoticeDetailRange"),
            target = M.RouteNoticeDetailRange,
        }),
        RestrictedTimes = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "RestrictedTimes"),
            type = "string",
            name = "RestrictedTimes",
            target_id = prelude.String.id,
        }),
        TimeDependent = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "TimeDependent"),
            type = "boolean",
            name = "TimeDependent",
            target_id = prelude.Boolean.id,
        }),
        TrailerCount = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "TrailerCount"),
            type = "structure",
            name = "TrailerCount",
            target_id = id.from(_N, "RouteNoticeDetailRange"),
            target = M.RouteNoticeDetailRange,
        }),
        TravelMode = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "TravelMode"),
            type = "boolean",
            name = "TravelMode",
            target_id = prelude.Boolean.id,
        }),
        TruckRoadType = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "TruckRoadType"),
            type = "string",
            name = "TruckRoadType",
            target_id = prelude.String.id,
        }),
        TruckType = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "TruckType"),
            type = "string",
            name = "TruckType",
            target_id = prelude.String.id,
        }),
        TunnelRestrictionCode = schema.new({
            id = id.from(_N, "RouteViolatedConstraints", "TunnelRestrictionCode"),
            type = "string",
            name = "TunnelRestrictionCode",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteVehicleNoticeDetail = schema.new({
    id = id.from(_N, "RouteVehicleNoticeDetail"),
    type = "structure",
    members = {
        Title = schema.new({
            id = id.from(_N, "RouteVehicleNoticeDetail", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
        }),
        ViolatedConstraints = schema.new({
            id = id.from(_N, "RouteVehicleNoticeDetail", "ViolatedConstraints"),
            type = "structure",
            name = "ViolatedConstraints",
            target_id = id.from(_N, "RouteViolatedConstraints"),
            target = M.RouteViolatedConstraints,
        }),
    },
})

M.RouteVehicleNotice = schema.new({
    id = id.from(_N, "RouteVehicleNotice"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "RouteVehicleNotice", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Details = schema.new({
            id = id.from(_N, "RouteVehicleNotice", "Details"),
            type = "list",
            name = "Details",
            target_id = prelude.Document.id,
            list_member = M.RouteVehicleNoticeDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Impact = schema.new({
            id = id.from(_N, "RouteVehicleNotice", "Impact"),
            type = "string",
            name = "Impact",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteVehicleSpan = schema.new({
    id = id.from(_N, "RouteVehicleSpan"),
    type = "structure",
    members = {
        BestCaseDuration = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "BestCaseDuration"),
            type = "long",
            name = "BestCaseDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        CarAccess = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "CarAccess"),
            type = "list",
            name = "CarAccess",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Country = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "Country"),
            type = "string",
            name = "Country",
            target_id = prelude.String.id,
        }),
        Distance = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "Distance"),
            type = "long",
            name = "Distance",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        DynamicSpeed = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "DynamicSpeed"),
            type = "structure",
            name = "DynamicSpeed",
            target_id = id.from(_N, "RouteSpanDynamicSpeedDetails"),
            target = M.RouteSpanDynamicSpeedDetails,
        }),
        FunctionalClassification = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "FunctionalClassification"),
            type = "integer",
            name = "FunctionalClassification",
            target_id = prelude.Integer.id,
        }),
        Gate = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "Gate"),
            type = "string",
            name = "Gate",
            target_id = prelude.String.id,
        }),
        GeometryOffset = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "GeometryOffset"),
            type = "integer",
            name = "GeometryOffset",
            target_id = prelude.Integer.id,
        }),
        Incidents = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "Incidents"),
            type = "list",
            name = "Incidents",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
        Names = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "Names"),
            type = "list",
            name = "Names",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
        }),
        Notices = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "Notices"),
            type = "list",
            name = "Notices",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
        RailwayCrossing = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "RailwayCrossing"),
            type = "string",
            name = "RailwayCrossing",
            target_id = prelude.String.id,
        }),
        Region = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        RoadAttributes = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "RoadAttributes"),
            type = "list",
            name = "RoadAttributes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RouteNumbers = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "RouteNumbers"),
            type = "list",
            name = "RouteNumbers",
            target_id = prelude.Document.id,
            list_member = M.RouteNumber,
        }),
        ScooterAccess = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "ScooterAccess"),
            type = "list",
            name = "ScooterAccess",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SpeedLimit = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "SpeedLimit"),
            type = "structure",
            name = "SpeedLimit",
            target_id = id.from(_N, "RouteSpanSpeedLimitDetails"),
            target = M.RouteSpanSpeedLimitDetails,
        }),
        TollSystems = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "TollSystems"),
            type = "list",
            name = "TollSystems",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
        TruckAccess = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "TruckAccess"),
            type = "list",
            name = "TruckAccess",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TruckRoadTypes = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "TruckRoadTypes"),
            type = "list",
            name = "TruckRoadTypes",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
        TypicalDuration = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "TypicalDuration"),
            type = "long",
            name = "TypicalDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Zones = schema.new({
            id = id.from(_N, "RouteVehicleSpan", "Zones"),
            type = "list",
            name = "Zones",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
    },
})

M.RouteVehicleOverviewSummary = schema.new({
    id = id.from(_N, "RouteVehicleOverviewSummary"),
    type = "structure",
    members = {
        BestCaseDuration = schema.new({
            id = id.from(_N, "RouteVehicleOverviewSummary", "BestCaseDuration"),
            type = "long",
            name = "BestCaseDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Distance = schema.new({
            id = id.from(_N, "RouteVehicleOverviewSummary", "Distance"),
            type = "long",
            name = "Distance",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "RouteVehicleOverviewSummary", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TypicalDuration = schema.new({
            id = id.from(_N, "RouteVehicleOverviewSummary", "TypicalDuration"),
            type = "long",
            name = "TypicalDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RouteVehicleTravelOnlySummary = schema.new({
    id = id.from(_N, "RouteVehicleTravelOnlySummary"),
    type = "structure",
    members = {
        BestCaseDuration = schema.new({
            id = id.from(_N, "RouteVehicleTravelOnlySummary", "BestCaseDuration"),
            type = "long",
            name = "BestCaseDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "RouteVehicleTravelOnlySummary", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TypicalDuration = schema.new({
            id = id.from(_N, "RouteVehicleTravelOnlySummary", "TypicalDuration"),
            type = "long",
            name = "TypicalDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RouteVehicleSummary = schema.new({
    id = id.from(_N, "RouteVehicleSummary"),
    type = "structure",
    members = {
        Overview = schema.new({
            id = id.from(_N, "RouteVehicleSummary", "Overview"),
            type = "structure",
            name = "Overview",
            target_id = id.from(_N, "RouteVehicleOverviewSummary"),
            target = M.RouteVehicleOverviewSummary,
        }),
        TravelOnly = schema.new({
            id = id.from(_N, "RouteVehicleSummary", "TravelOnly"),
            type = "structure",
            name = "TravelOnly",
            target_id = id.from(_N, "RouteVehicleTravelOnlySummary"),
            target = M.RouteVehicleTravelOnlySummary,
        }),
    },
})

M.RouteTollPaymentSite = schema.new({
    id = id.from(_N, "RouteTollPaymentSite"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RouteTollPaymentSite", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Position = schema.new({
            id = id.from(_N, "RouteTollPaymentSite", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteTollPriceValueRange = schema.new({
    id = id.from(_N, "RouteTollPriceValueRange"),
    type = "structure",
    members = {
        Min = schema.new({
            id = id.from(_N, "RouteTollPriceValueRange", "Min"),
            type = "double",
            name = "Min",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Max = schema.new({
            id = id.from(_N, "RouteTollPriceValueRange", "Max"),
            type = "double",
            name = "Max",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteTollPrice = schema.new({
    id = id.from(_N, "RouteTollPrice"),
    type = "structure",
    members = {
        Currency = schema.new({
            id = id.from(_N, "RouteTollPrice", "Currency"),
            type = "string",
            name = "Currency",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Estimate = schema.new({
            id = id.from(_N, "RouteTollPrice", "Estimate"),
            type = "boolean",
            name = "Estimate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PerDuration = schema.new({
            id = id.from(_N, "RouteTollPrice", "PerDuration"),
            type = "long",
            name = "PerDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Range = schema.new({
            id = id.from(_N, "RouteTollPrice", "Range"),
            type = "boolean",
            name = "Range",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RangeValue = schema.new({
            id = id.from(_N, "RouteTollPrice", "RangeValue"),
            type = "structure",
            name = "RangeValue",
            target_id = id.from(_N, "RouteTollPriceValueRange"),
            target = M.RouteTollPriceValueRange,
        }),
        Value = schema.new({
            id = id.from(_N, "RouteTollPrice", "Value"),
            type = "double",
            name = "Value",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteTollPassValidityPeriod = schema.new({
    id = id.from(_N, "RouteTollPassValidityPeriod"),
    type = "structure",
    members = {
        Period = schema.new({
            id = id.from(_N, "RouteTollPassValidityPeriod", "Period"),
            type = "string",
            name = "Period",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PeriodCount = schema.new({
            id = id.from(_N, "RouteTollPassValidityPeriod", "PeriodCount"),
            type = "integer",
            name = "PeriodCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RouteTollPass = schema.new({
    id = id.from(_N, "RouteTollPass"),
    type = "structure",
    members = {
        IncludesReturnTrip = schema.new({
            id = id.from(_N, "RouteTollPass", "IncludesReturnTrip"),
            type = "boolean",
            name = "IncludesReturnTrip",
            target_id = prelude.Boolean.id,
        }),
        SeniorPass = schema.new({
            id = id.from(_N, "RouteTollPass", "SeniorPass"),
            type = "boolean",
            name = "SeniorPass",
            target_id = prelude.Boolean.id,
        }),
        TransferCount = schema.new({
            id = id.from(_N, "RouteTollPass", "TransferCount"),
            type = "integer",
            name = "TransferCount",
            target_id = prelude.Integer.id,
        }),
        TripCount = schema.new({
            id = id.from(_N, "RouteTollPass", "TripCount"),
            type = "integer",
            name = "TripCount",
            target_id = prelude.Integer.id,
        }),
        ValidityPeriod = schema.new({
            id = id.from(_N, "RouteTollPass", "ValidityPeriod"),
            type = "structure",
            name = "ValidityPeriod",
            target_id = id.from(_N, "RouteTollPassValidityPeriod"),
            target = M.RouteTollPassValidityPeriod,
        }),
    },
})

M.RouteTransponder = schema.new({
    id = id.from(_N, "RouteTransponder"),
    type = "structure",
    members = {
        SystemName = schema.new({
            id = id.from(_N, "RouteTransponder", "SystemName"),
            type = "string",
            name = "SystemName",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteTollRate = schema.new({
    id = id.from(_N, "RouteTollRate"),
    type = "structure",
    members = {
        ApplicableTimes = schema.new({
            id = id.from(_N, "RouteTollRate", "ApplicableTimes"),
            type = "string",
            name = "ApplicableTimes",
            target_id = prelude.String.id,
        }),
        ConvertedPrice = schema.new({
            id = id.from(_N, "RouteTollRate", "ConvertedPrice"),
            type = "structure",
            name = "ConvertedPrice",
            target_id = id.from(_N, "RouteTollPrice"),
            target = M.RouteTollPrice,
        }),
        Id = schema.new({
            id = id.from(_N, "RouteTollRate", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LocalPrice = schema.new({
            id = id.from(_N, "RouteTollRate", "LocalPrice"),
            type = "structure",
            name = "LocalPrice",
            target_id = id.from(_N, "RouteTollPrice"),
            target = M.RouteTollPrice,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "RouteTollRate", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Pass = schema.new({
            id = id.from(_N, "RouteTollRate", "Pass"),
            type = "structure",
            name = "Pass",
            target_id = id.from(_N, "RouteTollPass"),
            target = M.RouteTollPass,
        }),
        PaymentMethods = schema.new({
            id = id.from(_N, "RouteTollRate", "PaymentMethods"),
            type = "list",
            name = "PaymentMethods",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Transponders = schema.new({
            id = id.from(_N, "RouteTollRate", "Transponders"),
            type = "list",
            name = "Transponders",
            target_id = prelude.Document.id,
            list_member = M.RouteTransponder,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteToll = schema.new({
    id = id.from(_N, "RouteToll"),
    type = "structure",
    members = {
        Country = schema.new({
            id = id.from(_N, "RouteToll", "Country"),
            type = "string",
            name = "Country",
            target_id = prelude.String.id,
        }),
        PaymentSites = schema.new({
            id = id.from(_N, "RouteToll", "PaymentSites"),
            type = "list",
            name = "PaymentSites",
            target_id = prelude.Document.id,
            list_member = M.RouteTollPaymentSite,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Rates = schema.new({
            id = id.from(_N, "RouteToll", "Rates"),
            type = "list",
            name = "Rates",
            target_id = prelude.Document.id,
            list_member = M.RouteTollRate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Systems = schema.new({
            id = id.from(_N, "RouteToll", "Systems"),
            type = "list",
            name = "Systems",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteTollSystem = schema.new({
    id = id.from(_N, "RouteTollSystem"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RouteTollSystem", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteContinueHighwayStepDetails = schema.new({
    id = id.from(_N, "RouteContinueHighwayStepDetails"),
    type = "structure",
    members = {
        Intersection = schema.new({
            id = id.from(_N, "RouteContinueHighwayStepDetails", "Intersection"),
            type = "list",
            name = "Intersection",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SteeringDirection = schema.new({
            id = id.from(_N, "RouteContinueHighwayStepDetails", "SteeringDirection"),
            type = "string",
            name = "SteeringDirection",
            target_id = prelude.String.id,
        }),
        TurnAngle = schema.new({
            id = id.from(_N, "RouteContinueHighwayStepDetails", "TurnAngle"),
            type = "double",
            name = "TurnAngle",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TurnIntensity = schema.new({
            id = id.from(_N, "RouteContinueHighwayStepDetails", "TurnIntensity"),
            type = "string",
            name = "TurnIntensity",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteEnterHighwayStepDetails = schema.new({
    id = id.from(_N, "RouteEnterHighwayStepDetails"),
    type = "structure",
    members = {
        Intersection = schema.new({
            id = id.from(_N, "RouteEnterHighwayStepDetails", "Intersection"),
            type = "list",
            name = "Intersection",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SteeringDirection = schema.new({
            id = id.from(_N, "RouteEnterHighwayStepDetails", "SteeringDirection"),
            type = "string",
            name = "SteeringDirection",
            target_id = prelude.String.id,
        }),
        TurnAngle = schema.new({
            id = id.from(_N, "RouteEnterHighwayStepDetails", "TurnAngle"),
            type = "double",
            name = "TurnAngle",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TurnIntensity = schema.new({
            id = id.from(_N, "RouteEnterHighwayStepDetails", "TurnIntensity"),
            type = "string",
            name = "TurnIntensity",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteExitStepDetails = schema.new({
    id = id.from(_N, "RouteExitStepDetails"),
    type = "structure",
    members = {
        Intersection = schema.new({
            id = id.from(_N, "RouteExitStepDetails", "Intersection"),
            type = "list",
            name = "Intersection",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RelativeExit = schema.new({
            id = id.from(_N, "RouteExitStepDetails", "RelativeExit"),
            type = "integer",
            name = "RelativeExit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        SteeringDirection = schema.new({
            id = id.from(_N, "RouteExitStepDetails", "SteeringDirection"),
            type = "string",
            name = "SteeringDirection",
            target_id = prelude.String.id,
        }),
        TurnAngle = schema.new({
            id = id.from(_N, "RouteExitStepDetails", "TurnAngle"),
            type = "double",
            name = "TurnAngle",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TurnIntensity = schema.new({
            id = id.from(_N, "RouteExitStepDetails", "TurnIntensity"),
            type = "string",
            name = "TurnIntensity",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteRampStepDetails = schema.new({
    id = id.from(_N, "RouteRampStepDetails"),
    type = "structure",
    members = {
        Intersection = schema.new({
            id = id.from(_N, "RouteRampStepDetails", "Intersection"),
            type = "list",
            name = "Intersection",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SteeringDirection = schema.new({
            id = id.from(_N, "RouteRampStepDetails", "SteeringDirection"),
            type = "string",
            name = "SteeringDirection",
            target_id = prelude.String.id,
        }),
        TurnAngle = schema.new({
            id = id.from(_N, "RouteRampStepDetails", "TurnAngle"),
            type = "double",
            name = "TurnAngle",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TurnIntensity = schema.new({
            id = id.from(_N, "RouteRampStepDetails", "TurnIntensity"),
            type = "string",
            name = "TurnIntensity",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteUTurnStepDetails = schema.new({
    id = id.from(_N, "RouteUTurnStepDetails"),
    type = "structure",
    members = {
        Intersection = schema.new({
            id = id.from(_N, "RouteUTurnStepDetails", "Intersection"),
            type = "list",
            name = "Intersection",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SteeringDirection = schema.new({
            id = id.from(_N, "RouteUTurnStepDetails", "SteeringDirection"),
            type = "string",
            name = "SteeringDirection",
            target_id = prelude.String.id,
        }),
        TurnAngle = schema.new({
            id = id.from(_N, "RouteUTurnStepDetails", "TurnAngle"),
            type = "double",
            name = "TurnAngle",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TurnIntensity = schema.new({
            id = id.from(_N, "RouteUTurnStepDetails", "TurnIntensity"),
            type = "string",
            name = "TurnIntensity",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteVehicleTravelStep = schema.new({
    id = id.from(_N, "RouteVehicleTravelStep"),
    type = "structure",
    members = {
        ContinueHighwayStepDetails = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "ContinueHighwayStepDetails"),
            type = "structure",
            name = "ContinueHighwayStepDetails",
            target_id = id.from(_N, "RouteContinueHighwayStepDetails"),
            target = M.RouteContinueHighwayStepDetails,
        }),
        ContinueStepDetails = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "ContinueStepDetails"),
            type = "structure",
            name = "ContinueStepDetails",
            target_id = id.from(_N, "RouteContinueStepDetails"),
            target = M.RouteContinueStepDetails,
        }),
        CurrentRoad = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "CurrentRoad"),
            type = "structure",
            name = "CurrentRoad",
            target_id = id.from(_N, "RouteRoad"),
            target = M.RouteRoad,
        }),
        Distance = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "Distance"),
            type = "long",
            name = "Distance",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        EnterHighwayStepDetails = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "EnterHighwayStepDetails"),
            type = "structure",
            name = "EnterHighwayStepDetails",
            target_id = id.from(_N, "RouteEnterHighwayStepDetails"),
            target = M.RouteEnterHighwayStepDetails,
        }),
        ExitNumber = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "ExitNumber"),
            type = "list",
            name = "ExitNumber",
            target_id = prelude.Document.id,
            list_member = M.LocalizedString,
        }),
        ExitStepDetails = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "ExitStepDetails"),
            type = "structure",
            name = "ExitStepDetails",
            target_id = id.from(_N, "RouteExitStepDetails"),
            target = M.RouteExitStepDetails,
        }),
        GeometryOffset = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "GeometryOffset"),
            type = "integer",
            name = "GeometryOffset",
            target_id = prelude.Integer.id,
        }),
        Instruction = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "Instruction"),
            type = "string",
            name = "Instruction",
            target_id = prelude.String.id,
        }),
        KeepStepDetails = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "KeepStepDetails"),
            type = "structure",
            name = "KeepStepDetails",
            target_id = id.from(_N, "RouteKeepStepDetails"),
            target = M.RouteKeepStepDetails,
        }),
        NextRoad = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "NextRoad"),
            type = "structure",
            name = "NextRoad",
            target_id = id.from(_N, "RouteRoad"),
            target = M.RouteRoad,
        }),
        RampStepDetails = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "RampStepDetails"),
            type = "structure",
            name = "RampStepDetails",
            target_id = id.from(_N, "RouteRampStepDetails"),
            target = M.RouteRampStepDetails,
        }),
        RoundaboutEnterStepDetails = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "RoundaboutEnterStepDetails"),
            type = "structure",
            name = "RoundaboutEnterStepDetails",
            target_id = id.from(_N, "RouteRoundaboutEnterStepDetails"),
            target = M.RouteRoundaboutEnterStepDetails,
        }),
        RoundaboutExitStepDetails = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "RoundaboutExitStepDetails"),
            type = "structure",
            name = "RoundaboutExitStepDetails",
            target_id = id.from(_N, "RouteRoundaboutExitStepDetails"),
            target = M.RouteRoundaboutExitStepDetails,
        }),
        RoundaboutPassStepDetails = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "RoundaboutPassStepDetails"),
            type = "structure",
            name = "RoundaboutPassStepDetails",
            target_id = id.from(_N, "RouteRoundaboutPassStepDetails"),
            target = M.RouteRoundaboutPassStepDetails,
        }),
        Signpost = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "Signpost"),
            type = "structure",
            name = "Signpost",
            target_id = id.from(_N, "RouteSignpost"),
            target = M.RouteSignpost,
        }),
        TurnStepDetails = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "TurnStepDetails"),
            type = "structure",
            name = "TurnStepDetails",
            target_id = id.from(_N, "RouteTurnStepDetails"),
            target = M.RouteTurnStepDetails,
        }),
        Type = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UTurnStepDetails = schema.new({
            id = id.from(_N, "RouteVehicleTravelStep", "UTurnStepDetails"),
            type = "structure",
            name = "UTurnStepDetails",
            target_id = id.from(_N, "RouteUTurnStepDetails"),
            target = M.RouteUTurnStepDetails,
        }),
    },
})

M.RouteZone = schema.new({
    id = id.from(_N, "RouteZone"),
    type = "structure",
    members = {
        Category = schema.new({
            id = id.from(_N, "RouteZone", "Category"),
            type = "string",
            name = "Category",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "RouteZone", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteVehicleLegDetails = schema.new({
    id = id.from(_N, "RouteVehicleLegDetails"),
    type = "structure",
    members = {
        Arrival = schema.new({
            id = id.from(_N, "RouteVehicleLegDetails", "Arrival"),
            type = "structure",
            name = "Arrival",
            target_id = id.from(_N, "RouteVehicleArrival"),
            target = M.RouteVehicleArrival,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Departure = schema.new({
            id = id.from(_N, "RouteVehicleLegDetails", "Departure"),
            type = "structure",
            name = "Departure",
            target_id = id.from(_N, "RouteVehicleDeparture"),
            target = M.RouteVehicleDeparture,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Incidents = schema.new({
            id = id.from(_N, "RouteVehicleLegDetails", "Incidents"),
            type = "list",
            name = "Incidents",
            target_id = prelude.Document.id,
            list_member = M.RouteVehicleIncident,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Notices = schema.new({
            id = id.from(_N, "RouteVehicleLegDetails", "Notices"),
            type = "list",
            name = "Notices",
            target_id = prelude.Document.id,
            list_member = M.RouteVehicleNotice,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PassThroughWaypoints = schema.new({
            id = id.from(_N, "RouteVehicleLegDetails", "PassThroughWaypoints"),
            type = "list",
            name = "PassThroughWaypoints",
            target_id = prelude.Document.id,
            list_member = M.RoutePassThroughWaypoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Spans = schema.new({
            id = id.from(_N, "RouteVehicleLegDetails", "Spans"),
            type = "list",
            name = "Spans",
            target_id = prelude.Document.id,
            list_member = M.RouteVehicleSpan,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Summary = schema.new({
            id = id.from(_N, "RouteVehicleLegDetails", "Summary"),
            type = "structure",
            name = "Summary",
            target_id = id.from(_N, "RouteVehicleSummary"),
            target = M.RouteVehicleSummary,
        }),
        Tolls = schema.new({
            id = id.from(_N, "RouteVehicleLegDetails", "Tolls"),
            type = "list",
            name = "Tolls",
            target_id = prelude.Document.id,
            list_member = M.RouteToll,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TollSystems = schema.new({
            id = id.from(_N, "RouteVehicleLegDetails", "TollSystems"),
            type = "list",
            name = "TollSystems",
            target_id = prelude.Document.id,
            list_member = M.RouteTollSystem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TravelSteps = schema.new({
            id = id.from(_N, "RouteVehicleLegDetails", "TravelSteps"),
            type = "list",
            name = "TravelSteps",
            target_id = prelude.Document.id,
            list_member = M.RouteVehicleTravelStep,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TruckRoadTypes = schema.new({
            id = id.from(_N, "RouteVehicleLegDetails", "TruckRoadTypes"),
            type = "list",
            name = "TruckRoadTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Zones = schema.new({
            id = id.from(_N, "RouteVehicleLegDetails", "Zones"),
            type = "list",
            name = "Zones",
            target_id = prelude.Document.id,
            list_member = M.RouteZone,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteLeg = schema.new({
    id = id.from(_N, "RouteLeg"),
    type = "structure",
    members = {
        FerryLegDetails = schema.new({
            id = id.from(_N, "RouteLeg", "FerryLegDetails"),
            type = "structure",
            name = "FerryLegDetails",
            target_id = id.from(_N, "RouteFerryLegDetails"),
            target = M.RouteFerryLegDetails,
        }),
        Geometry = schema.new({
            id = id.from(_N, "RouteLeg", "Geometry"),
            type = "structure",
            name = "Geometry",
            target_id = id.from(_N, "RouteLegGeometry"),
            target = M.RouteLegGeometry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Language = schema.new({
            id = id.from(_N, "RouteLeg", "Language"),
            type = "string",
            name = "Language",
            target_id = prelude.String.id,
        }),
        PedestrianLegDetails = schema.new({
            id = id.from(_N, "RouteLeg", "PedestrianLegDetails"),
            type = "structure",
            name = "PedestrianLegDetails",
            target_id = id.from(_N, "RoutePedestrianLegDetails"),
            target = M.RoutePedestrianLegDetails,
        }),
        TravelMode = schema.new({
            id = id.from(_N, "RouteLeg", "TravelMode"),
            type = "string",
            name = "TravelMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "RouteLeg", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VehicleLegDetails = schema.new({
            id = id.from(_N, "RouteLeg", "VehicleLegDetails"),
            type = "structure",
            name = "VehicleLegDetails",
            target_id = id.from(_N, "RouteVehicleLegDetails"),
            target = M.RouteVehicleLegDetails,
        }),
    },
})

M.RouteMajorRoadLabel = schema.new({
    id = id.from(_N, "RouteMajorRoadLabel"),
    type = "structure",
    members = {
        RoadName = schema.new({
            id = id.from(_N, "RouteMajorRoadLabel", "RoadName"),
            type = "structure",
            name = "RoadName",
            target_id = id.from(_N, "LocalizedString"),
            target = M.LocalizedString,
        }),
        RouteNumber = schema.new({
            id = id.from(_N, "RouteMajorRoadLabel", "RouteNumber"),
            type = "structure",
            name = "RouteNumber",
            target_id = id.from(_N, "RouteNumber"),
            target = M.RouteNumber,
        }),
    },
})

M.RouteTollPriceSummary = schema.new({
    id = id.from(_N, "RouteTollPriceSummary"),
    type = "structure",
    members = {
        Currency = schema.new({
            id = id.from(_N, "RouteTollPriceSummary", "Currency"),
            type = "string",
            name = "Currency",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Estimate = schema.new({
            id = id.from(_N, "RouteTollPriceSummary", "Estimate"),
            type = "boolean",
            name = "Estimate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Range = schema.new({
            id = id.from(_N, "RouteTollPriceSummary", "Range"),
            type = "boolean",
            name = "Range",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RangeValue = schema.new({
            id = id.from(_N, "RouteTollPriceSummary", "RangeValue"),
            type = "structure",
            name = "RangeValue",
            target_id = id.from(_N, "RouteTollPriceValueRange"),
            target = M.RouteTollPriceValueRange,
        }),
        Value = schema.new({
            id = id.from(_N, "RouteTollPriceSummary", "Value"),
            type = "double",
            name = "Value",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteTollSummary = schema.new({
    id = id.from(_N, "RouteTollSummary"),
    type = "structure",
    members = {
        Total = schema.new({
            id = id.from(_N, "RouteTollSummary", "Total"),
            type = "structure",
            name = "Total",
            target_id = id.from(_N, "RouteTollPriceSummary"),
            target = M.RouteTollPriceSummary,
        }),
    },
})

M.RouteSummary = schema.new({
    id = id.from(_N, "RouteSummary"),
    type = "structure",
    members = {
        Distance = schema.new({
            id = id.from(_N, "RouteSummary", "Distance"),
            type = "long",
            name = "Distance",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "RouteSummary", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Tolls = schema.new({
            id = id.from(_N, "RouteSummary", "Tolls"),
            type = "structure",
            name = "Tolls",
            target_id = id.from(_N, "RouteTollSummary"),
            target = M.RouteTollSummary,
        }),
    },
})

M.Route = schema.new({
    id = id.from(_N, "Route"),
    type = "structure",
    members = {
        Legs = schema.new({
            id = id.from(_N, "Route", "Legs"),
            type = "list",
            name = "Legs",
            target_id = prelude.Document.id,
            list_member = M.RouteLeg,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MajorRoadLabels = schema.new({
            id = id.from(_N, "Route", "MajorRoadLabels"),
            type = "list",
            name = "MajorRoadLabels",
            target_id = prelude.Document.id,
            list_member = M.RouteMajorRoadLabel,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Summary = schema.new({
            id = id.from(_N, "Route", "Summary"),
            type = "structure",
            name = "Summary",
            target_id = id.from(_N, "RouteSummary"),
            target = M.RouteSummary,
        }),
    },
})

M.CalculateRoutesOutput = schema.new({
    id = id.from(_N, "CalculateRoutesResponse"),
    type = "structure",
    members = {
        LegGeometryFormat = schema.new({
            id = id.from(_N, "CalculateRoutesOutput", "LegGeometryFormat"),
            type = "string",
            name = "LegGeometryFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Notices = schema.new({
            id = id.from(_N, "CalculateRoutesOutput", "Notices"),
            type = "list",
            name = "Notices",
            target_id = prelude.Document.id,
            list_member = M.RouteResponseNotice,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PricingBucket = schema.new({
            id = id.from(_N, "CalculateRoutesOutput", "PricingBucket"),
            type = "string",
            name = "PricingBucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-geo-pricing-bucket" },
            },
        }),
        Routes = schema.new({
            id = id.from(_N, "CalculateRoutesOutput", "Routes"),
            type = "list",
            name = "Routes",
            target_id = prelude.Document.id,
            list_member = M.Route,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WaypointOptimizationAvoidanceAreaGeometry = schema.new({
    id = id.from(_N, "WaypointOptimizationAvoidanceAreaGeometry"),
    type = "structure",
    members = {
        BoundingBox = schema.new({
            id = id.from(_N, "WaypointOptimizationAvoidanceAreaGeometry", "BoundingBox"),
            type = "list",
            name = "BoundingBox",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
    },
})

M.WaypointOptimizationAvoidanceArea = schema.new({
    id = id.from(_N, "WaypointOptimizationAvoidanceArea"),
    type = "structure",
    members = {
        Geometry = schema.new({
            id = id.from(_N, "WaypointOptimizationAvoidanceArea", "Geometry"),
            type = "structure",
            name = "Geometry",
            target_id = id.from(_N, "WaypointOptimizationAvoidanceAreaGeometry"),
            target = M.WaypointOptimizationAvoidanceAreaGeometry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WaypointOptimizationAvoidanceOptions = schema.new({
    id = id.from(_N, "WaypointOptimizationAvoidanceOptions"),
    type = "structure",
    members = {
        Areas = schema.new({
            id = id.from(_N, "WaypointOptimizationAvoidanceOptions", "Areas"),
            type = "list",
            name = "Areas",
            target_id = prelude.Document.id,
            list_member = M.WaypointOptimizationAvoidanceArea,
        }),
        CarShuttleTrains = schema.new({
            id = id.from(_N, "WaypointOptimizationAvoidanceOptions", "CarShuttleTrains"),
            type = "boolean",
            name = "CarShuttleTrains",
            target_id = prelude.Boolean.id,
        }),
        ControlledAccessHighways = schema.new({
            id = id.from(_N, "WaypointOptimizationAvoidanceOptions", "ControlledAccessHighways"),
            type = "boolean",
            name = "ControlledAccessHighways",
            target_id = prelude.Boolean.id,
        }),
        DirtRoads = schema.new({
            id = id.from(_N, "WaypointOptimizationAvoidanceOptions", "DirtRoads"),
            type = "boolean",
            name = "DirtRoads",
            target_id = prelude.Boolean.id,
        }),
        Ferries = schema.new({
            id = id.from(_N, "WaypointOptimizationAvoidanceOptions", "Ferries"),
            type = "boolean",
            name = "Ferries",
            target_id = prelude.Boolean.id,
        }),
        TollRoads = schema.new({
            id = id.from(_N, "WaypointOptimizationAvoidanceOptions", "TollRoads"),
            type = "boolean",
            name = "TollRoads",
            target_id = prelude.Boolean.id,
        }),
        Tunnels = schema.new({
            id = id.from(_N, "WaypointOptimizationAvoidanceOptions", "Tunnels"),
            type = "boolean",
            name = "Tunnels",
            target_id = prelude.Boolean.id,
        }),
        UTurns = schema.new({
            id = id.from(_N, "WaypointOptimizationAvoidanceOptions", "UTurns"),
            type = "boolean",
            name = "UTurns",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.WaypointOptimizationDrivingDistanceOptions = schema.new({
    id = id.from(_N, "WaypointOptimizationDrivingDistanceOptions"),
    type = "structure",
    members = {
        DrivingDistance = schema.new({
            id = id.from(_N, "WaypointOptimizationDrivingDistanceOptions", "DrivingDistance"),
            type = "long",
            name = "DrivingDistance",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.WaypointOptimizationClusteringOptions = schema.new({
    id = id.from(_N, "WaypointOptimizationClusteringOptions"),
    type = "structure",
    members = {
        Algorithm = schema.new({
            id = id.from(_N, "WaypointOptimizationClusteringOptions", "Algorithm"),
            type = "string",
            name = "Algorithm",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DrivingDistanceOptions = schema.new({
            id = id.from(_N, "WaypointOptimizationClusteringOptions", "DrivingDistanceOptions"),
            type = "structure",
            name = "DrivingDistanceOptions",
            target_id = id.from(_N, "WaypointOptimizationDrivingDistanceOptions"),
            target = M.WaypointOptimizationDrivingDistanceOptions,
        }),
    },
})

M.WaypointOptimizationAccessHoursEntry = schema.new({
    id = id.from(_N, "WaypointOptimizationAccessHoursEntry"),
    type = "structure",
    members = {
        DayOfWeek = schema.new({
            id = id.from(_N, "WaypointOptimizationAccessHoursEntry", "DayOfWeek"),
            type = "string",
            name = "DayOfWeek",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimeOfDay = schema.new({
            id = id.from(_N, "WaypointOptimizationAccessHoursEntry", "TimeOfDay"),
            type = "string",
            name = "TimeOfDay",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WaypointOptimizationAccessHours = schema.new({
    id = id.from(_N, "WaypointOptimizationAccessHours"),
    type = "structure",
    members = {
        From = schema.new({
            id = id.from(_N, "WaypointOptimizationAccessHours", "From"),
            type = "structure",
            name = "From",
            target_id = id.from(_N, "WaypointOptimizationAccessHoursEntry"),
            target = M.WaypointOptimizationAccessHoursEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        To = schema.new({
            id = id.from(_N, "WaypointOptimizationAccessHours", "To"),
            type = "structure",
            name = "To",
            target_id = id.from(_N, "WaypointOptimizationAccessHoursEntry"),
            target = M.WaypointOptimizationAccessHoursEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WaypointOptimizationSideOfStreetOptions = schema.new({
    id = id.from(_N, "WaypointOptimizationSideOfStreetOptions"),
    type = "structure",
    members = {
        Position = schema.new({
            id = id.from(_N, "WaypointOptimizationSideOfStreetOptions", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UseWith = schema.new({
            id = id.from(_N, "WaypointOptimizationSideOfStreetOptions", "UseWith"),
            type = "string",
            name = "UseWith",
            target_id = prelude.String.id,
        }),
    },
})

M.WaypointOptimizationDestinationOptions = schema.new({
    id = id.from(_N, "WaypointOptimizationDestinationOptions"),
    type = "structure",
    members = {
        AccessHours = schema.new({
            id = id.from(_N, "WaypointOptimizationDestinationOptions", "AccessHours"),
            type = "structure",
            name = "AccessHours",
            target_id = id.from(_N, "WaypointOptimizationAccessHours"),
            target = M.WaypointOptimizationAccessHours,
        }),
        AppointmentTime = schema.new({
            id = id.from(_N, "WaypointOptimizationDestinationOptions", "AppointmentTime"),
            type = "string",
            name = "AppointmentTime",
            target_id = prelude.String.id,
        }),
        Heading = schema.new({
            id = id.from(_N, "WaypointOptimizationDestinationOptions", "Heading"),
            type = "double",
            name = "Heading",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "WaypointOptimizationDestinationOptions", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ServiceDuration = schema.new({
            id = id.from(_N, "WaypointOptimizationDestinationOptions", "ServiceDuration"),
            type = "long",
            name = "ServiceDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        SideOfStreet = schema.new({
            id = id.from(_N, "WaypointOptimizationDestinationOptions", "SideOfStreet"),
            type = "structure",
            name = "SideOfStreet",
            target_id = id.from(_N, "WaypointOptimizationSideOfStreetOptions"),
            target = M.WaypointOptimizationSideOfStreetOptions,
        }),
    },
})

M.WaypointOptimizationRestCycleDurations = schema.new({
    id = id.from(_N, "WaypointOptimizationRestCycleDurations"),
    type = "structure",
    members = {
        RestDuration = schema.new({
            id = id.from(_N, "WaypointOptimizationRestCycleDurations", "RestDuration"),
            type = "long",
            name = "RestDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        WorkDuration = schema.new({
            id = id.from(_N, "WaypointOptimizationRestCycleDurations", "WorkDuration"),
            type = "long",
            name = "WorkDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.WaypointOptimizationRestCycles = schema.new({
    id = id.from(_N, "WaypointOptimizationRestCycles"),
    type = "structure",
    members = {
        LongCycle = schema.new({
            id = id.from(_N, "WaypointOptimizationRestCycles", "LongCycle"),
            type = "structure",
            name = "LongCycle",
            target_id = id.from(_N, "WaypointOptimizationRestCycleDurations"),
            target = M.WaypointOptimizationRestCycleDurations,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShortCycle = schema.new({
            id = id.from(_N, "WaypointOptimizationRestCycles", "ShortCycle"),
            type = "structure",
            name = "ShortCycle",
            target_id = id.from(_N, "WaypointOptimizationRestCycleDurations"),
            target = M.WaypointOptimizationRestCycleDurations,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WaypointOptimizationRestProfile = schema.new({
    id = id.from(_N, "WaypointOptimizationRestProfile"),
    type = "structure",
    members = {
        Profile = schema.new({
            id = id.from(_N, "WaypointOptimizationRestProfile", "Profile"),
            type = "string",
            name = "Profile",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WaypointOptimizationDriverOptions = schema.new({
    id = id.from(_N, "WaypointOptimizationDriverOptions"),
    type = "structure",
    members = {
        RestCycles = schema.new({
            id = id.from(_N, "WaypointOptimizationDriverOptions", "RestCycles"),
            type = "structure",
            name = "RestCycles",
            target_id = id.from(_N, "WaypointOptimizationRestCycles"),
            target = M.WaypointOptimizationRestCycles,
        }),
        RestProfile = schema.new({
            id = id.from(_N, "WaypointOptimizationDriverOptions", "RestProfile"),
            type = "structure",
            name = "RestProfile",
            target_id = id.from(_N, "WaypointOptimizationRestProfile"),
            target = M.WaypointOptimizationRestProfile,
        }),
        TreatServiceTimeAs = schema.new({
            id = id.from(_N, "WaypointOptimizationDriverOptions", "TreatServiceTimeAs"),
            type = "string",
            name = "TreatServiceTimeAs",
            target_id = prelude.String.id,
        }),
    },
})

M.WaypointOptimizationExclusionOptions = schema.new({
    id = id.from(_N, "WaypointOptimizationExclusionOptions"),
    type = "structure",
    members = {
        Countries = schema.new({
            id = id.from(_N, "WaypointOptimizationExclusionOptions", "Countries"),
            type = "list",
            name = "Countries",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WaypointOptimizationOriginOptions = schema.new({
    id = id.from(_N, "WaypointOptimizationOriginOptions"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "WaypointOptimizationOriginOptions", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
    },
})

M.WaypointOptimizationTrafficOptions = schema.new({
    id = id.from(_N, "WaypointOptimizationTrafficOptions"),
    type = "structure",
    members = {
        Usage = schema.new({
            id = id.from(_N, "WaypointOptimizationTrafficOptions", "Usage"),
            type = "string",
            name = "Usage",
            target_id = prelude.String.id,
        }),
    },
})

M.WaypointOptimizationPedestrianOptions = schema.new({
    id = id.from(_N, "WaypointOptimizationPedestrianOptions"),
    type = "structure",
    members = {
        Speed = schema.new({
            id = id.from(_N, "WaypointOptimizationPedestrianOptions", "Speed"),
            type = "double",
            name = "Speed",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.WaypointOptimizationTrailerOptions = schema.new({
    id = id.from(_N, "WaypointOptimizationTrailerOptions"),
    type = "structure",
    members = {
        TrailerCount = schema.new({
            id = id.from(_N, "WaypointOptimizationTrailerOptions", "TrailerCount"),
            type = "integer",
            name = "TrailerCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.WaypointOptimizationTruckOptions = schema.new({
    id = id.from(_N, "WaypointOptimizationTruckOptions"),
    type = "structure",
    members = {
        GrossWeight = schema.new({
            id = id.from(_N, "WaypointOptimizationTruckOptions", "GrossWeight"),
            type = "long",
            name = "GrossWeight",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        HazardousCargos = schema.new({
            id = id.from(_N, "WaypointOptimizationTruckOptions", "HazardousCargos"),
            type = "list",
            name = "HazardousCargos",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Height = schema.new({
            id = id.from(_N, "WaypointOptimizationTruckOptions", "Height"),
            type = "long",
            name = "Height",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Length = schema.new({
            id = id.from(_N, "WaypointOptimizationTruckOptions", "Length"),
            type = "long",
            name = "Length",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Trailer = schema.new({
            id = id.from(_N, "WaypointOptimizationTruckOptions", "Trailer"),
            type = "structure",
            name = "Trailer",
            target_id = id.from(_N, "WaypointOptimizationTrailerOptions"),
            target = M.WaypointOptimizationTrailerOptions,
        }),
        TruckType = schema.new({
            id = id.from(_N, "WaypointOptimizationTruckOptions", "TruckType"),
            type = "string",
            name = "TruckType",
            target_id = prelude.String.id,
        }),
        TunnelRestrictionCode = schema.new({
            id = id.from(_N, "WaypointOptimizationTruckOptions", "TunnelRestrictionCode"),
            type = "string",
            name = "TunnelRestrictionCode",
            target_id = prelude.String.id,
        }),
        WeightPerAxle = schema.new({
            id = id.from(_N, "WaypointOptimizationTruckOptions", "WeightPerAxle"),
            type = "long",
            name = "WeightPerAxle",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Width = schema.new({
            id = id.from(_N, "WaypointOptimizationTruckOptions", "Width"),
            type = "long",
            name = "Width",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.WaypointOptimizationTravelModeOptions = schema.new({
    id = id.from(_N, "WaypointOptimizationTravelModeOptions"),
    type = "structure",
    members = {
        Pedestrian = schema.new({
            id = id.from(_N, "WaypointOptimizationTravelModeOptions", "Pedestrian"),
            type = "structure",
            name = "Pedestrian",
            target_id = id.from(_N, "WaypointOptimizationPedestrianOptions"),
            target = M.WaypointOptimizationPedestrianOptions,
        }),
        Truck = schema.new({
            id = id.from(_N, "WaypointOptimizationTravelModeOptions", "Truck"),
            type = "structure",
            name = "Truck",
            target_id = id.from(_N, "WaypointOptimizationTruckOptions"),
            target = M.WaypointOptimizationTruckOptions,
        }),
    },
})

M.WaypointOptimizationWaypoint = schema.new({
    id = id.from(_N, "WaypointOptimizationWaypoint"),
    type = "structure",
    members = {
        AccessHours = schema.new({
            id = id.from(_N, "WaypointOptimizationWaypoint", "AccessHours"),
            type = "structure",
            name = "AccessHours",
            target_id = id.from(_N, "WaypointOptimizationAccessHours"),
            target = M.WaypointOptimizationAccessHours,
        }),
        AppointmentTime = schema.new({
            id = id.from(_N, "WaypointOptimizationWaypoint", "AppointmentTime"),
            type = "string",
            name = "AppointmentTime",
            target_id = prelude.String.id,
        }),
        Before = schema.new({
            id = id.from(_N, "WaypointOptimizationWaypoint", "Before"),
            type = "list",
            name = "Before",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
        Heading = schema.new({
            id = id.from(_N, "WaypointOptimizationWaypoint", "Heading"),
            type = "double",
            name = "Heading",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "WaypointOptimizationWaypoint", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Position = schema.new({
            id = id.from(_N, "WaypointOptimizationWaypoint", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceDuration = schema.new({
            id = id.from(_N, "WaypointOptimizationWaypoint", "ServiceDuration"),
            type = "long",
            name = "ServiceDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        SideOfStreet = schema.new({
            id = id.from(_N, "WaypointOptimizationWaypoint", "SideOfStreet"),
            type = "structure",
            name = "SideOfStreet",
            target_id = id.from(_N, "WaypointOptimizationSideOfStreetOptions"),
            target = M.WaypointOptimizationSideOfStreetOptions,
        }),
    },
})

M.OptimizeWaypointsInput = schema.new({
    id = id.from(_N, "OptimizeWaypointsRequest"),
    type = "structure",
    members = {
        Avoid = schema.new({
            id = id.from(_N, "OptimizeWaypointsInput", "Avoid"),
            type = "structure",
            name = "Avoid",
            target_id = id.from(_N, "WaypointOptimizationAvoidanceOptions"),
            target = M.WaypointOptimizationAvoidanceOptions,
        }),
        Clustering = schema.new({
            id = id.from(_N, "OptimizeWaypointsInput", "Clustering"),
            type = "structure",
            name = "Clustering",
            target_id = id.from(_N, "WaypointOptimizationClusteringOptions"),
            target = M.WaypointOptimizationClusteringOptions,
        }),
        DepartureTime = schema.new({
            id = id.from(_N, "OptimizeWaypointsInput", "DepartureTime"),
            type = "string",
            name = "DepartureTime",
            target_id = prelude.String.id,
        }),
        Destination = schema.new({
            id = id.from(_N, "OptimizeWaypointsInput", "Destination"),
            type = "list",
            name = "Destination",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
        DestinationOptions = schema.new({
            id = id.from(_N, "OptimizeWaypointsInput", "DestinationOptions"),
            type = "structure",
            name = "DestinationOptions",
            target_id = id.from(_N, "WaypointOptimizationDestinationOptions"),
            target = M.WaypointOptimizationDestinationOptions,
        }),
        Driver = schema.new({
            id = id.from(_N, "OptimizeWaypointsInput", "Driver"),
            type = "structure",
            name = "Driver",
            target_id = id.from(_N, "WaypointOptimizationDriverOptions"),
            target = M.WaypointOptimizationDriverOptions,
        }),
        Exclude = schema.new({
            id = id.from(_N, "OptimizeWaypointsInput", "Exclude"),
            type = "structure",
            name = "Exclude",
            target_id = id.from(_N, "WaypointOptimizationExclusionOptions"),
            target = M.WaypointOptimizationExclusionOptions,
        }),
        Key = schema.new({
            id = id.from(_N, "OptimizeWaypointsInput", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "key" },
            },
        }),
        OptimizeSequencingFor = schema.new({
            id = id.from(_N, "OptimizeWaypointsInput", "OptimizeSequencingFor"),
            type = "string",
            name = "OptimizeSequencingFor",
            target_id = prelude.String.id,
        }),
        Origin = schema.new({
            id = id.from(_N, "OptimizeWaypointsInput", "Origin"),
            type = "list",
            name = "Origin",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginOptions = schema.new({
            id = id.from(_N, "OptimizeWaypointsInput", "OriginOptions"),
            type = "structure",
            name = "OriginOptions",
            target_id = id.from(_N, "WaypointOptimizationOriginOptions"),
            target = M.WaypointOptimizationOriginOptions,
        }),
        Traffic = schema.new({
            id = id.from(_N, "OptimizeWaypointsInput", "Traffic"),
            type = "structure",
            name = "Traffic",
            target_id = id.from(_N, "WaypointOptimizationTrafficOptions"),
            target = M.WaypointOptimizationTrafficOptions,
        }),
        TravelMode = schema.new({
            id = id.from(_N, "OptimizeWaypointsInput", "TravelMode"),
            type = "string",
            name = "TravelMode",
            target_id = prelude.String.id,
        }),
        TravelModeOptions = schema.new({
            id = id.from(_N, "OptimizeWaypointsInput", "TravelModeOptions"),
            type = "structure",
            name = "TravelModeOptions",
            target_id = id.from(_N, "WaypointOptimizationTravelModeOptions"),
            target = M.WaypointOptimizationTravelModeOptions,
        }),
        Waypoints = schema.new({
            id = id.from(_N, "OptimizeWaypointsInput", "Waypoints"),
            type = "list",
            name = "Waypoints",
            target_id = prelude.Document.id,
            list_member = M.WaypointOptimizationWaypoint,
        }),
    },
})

M.WaypointOptimizationConnection = schema.new({
    id = id.from(_N, "WaypointOptimizationConnection"),
    type = "structure",
    members = {
        Distance = schema.new({
            id = id.from(_N, "WaypointOptimizationConnection", "Distance"),
            type = "long",
            name = "Distance",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        From = schema.new({
            id = id.from(_N, "WaypointOptimizationConnection", "From"),
            type = "string",
            name = "From",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RestDuration = schema.new({
            id = id.from(_N, "WaypointOptimizationConnection", "RestDuration"),
            type = "long",
            name = "RestDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        To = schema.new({
            id = id.from(_N, "WaypointOptimizationConnection", "To"),
            type = "string",
            name = "To",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TravelDuration = schema.new({
            id = id.from(_N, "WaypointOptimizationConnection", "TravelDuration"),
            type = "long",
            name = "TravelDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        WaitDuration = schema.new({
            id = id.from(_N, "WaypointOptimizationConnection", "WaitDuration"),
            type = "long",
            name = "WaitDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.WaypointOptimizationFailedConstraint = schema.new({
    id = id.from(_N, "WaypointOptimizationFailedConstraint"),
    type = "structure",
    members = {
        Constraint = schema.new({
            id = id.from(_N, "WaypointOptimizationFailedConstraint", "Constraint"),
            type = "string",
            name = "Constraint",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "WaypointOptimizationFailedConstraint", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.WaypointOptimizationImpedingWaypoint = schema.new({
    id = id.from(_N, "WaypointOptimizationImpedingWaypoint"),
    type = "structure",
    members = {
        FailedConstraints = schema.new({
            id = id.from(_N, "WaypointOptimizationImpedingWaypoint", "FailedConstraints"),
            type = "list",
            name = "FailedConstraints",
            target_id = prelude.Document.id,
            list_member = M.WaypointOptimizationFailedConstraint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Id = schema.new({
            id = id.from(_N, "WaypointOptimizationImpedingWaypoint", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Position = schema.new({
            id = id.from(_N, "WaypointOptimizationImpedingWaypoint", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WaypointOptimizationOptimizedWaypoint = schema.new({
    id = id.from(_N, "WaypointOptimizationOptimizedWaypoint"),
    type = "structure",
    members = {
        ArrivalTime = schema.new({
            id = id.from(_N, "WaypointOptimizationOptimizedWaypoint", "ArrivalTime"),
            type = "string",
            name = "ArrivalTime",
            target_id = prelude.String.id,
        }),
        ClusterIndex = schema.new({
            id = id.from(_N, "WaypointOptimizationOptimizedWaypoint", "ClusterIndex"),
            type = "integer",
            name = "ClusterIndex",
            target_id = prelude.Integer.id,
        }),
        DepartureTime = schema.new({
            id = id.from(_N, "WaypointOptimizationOptimizedWaypoint", "DepartureTime"),
            type = "string",
            name = "DepartureTime",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Id = schema.new({
            id = id.from(_N, "WaypointOptimizationOptimizedWaypoint", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Position = schema.new({
            id = id.from(_N, "WaypointOptimizationOptimizedWaypoint", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WaypointOptimizationTimeBreakdown = schema.new({
    id = id.from(_N, "WaypointOptimizationTimeBreakdown"),
    type = "structure",
    members = {
        RestDuration = schema.new({
            id = id.from(_N, "WaypointOptimizationTimeBreakdown", "RestDuration"),
            type = "long",
            name = "RestDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ServiceDuration = schema.new({
            id = id.from(_N, "WaypointOptimizationTimeBreakdown", "ServiceDuration"),
            type = "long",
            name = "ServiceDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TravelDuration = schema.new({
            id = id.from(_N, "WaypointOptimizationTimeBreakdown", "TravelDuration"),
            type = "long",
            name = "TravelDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        WaitDuration = schema.new({
            id = id.from(_N, "WaypointOptimizationTimeBreakdown", "WaitDuration"),
            type = "long",
            name = "WaitDuration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.OptimizeWaypointsOutput = schema.new({
    id = id.from(_N, "OptimizeWaypointsResponse"),
    type = "structure",
    members = {
        Connections = schema.new({
            id = id.from(_N, "OptimizeWaypointsOutput", "Connections"),
            type = "list",
            name = "Connections",
            target_id = prelude.Document.id,
            list_member = M.WaypointOptimizationConnection,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Distance = schema.new({
            id = id.from(_N, "OptimizeWaypointsOutput", "Distance"),
            type = "long",
            name = "Distance",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "OptimizeWaypointsOutput", "Duration"),
            type = "long",
            name = "Duration",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ImpedingWaypoints = schema.new({
            id = id.from(_N, "OptimizeWaypointsOutput", "ImpedingWaypoints"),
            type = "list",
            name = "ImpedingWaypoints",
            target_id = prelude.Document.id,
            list_member = M.WaypointOptimizationImpedingWaypoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OptimizedWaypoints = schema.new({
            id = id.from(_N, "OptimizeWaypointsOutput", "OptimizedWaypoints"),
            type = "list",
            name = "OptimizedWaypoints",
            target_id = prelude.Document.id,
            list_member = M.WaypointOptimizationOptimizedWaypoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PricingBucket = schema.new({
            id = id.from(_N, "OptimizeWaypointsOutput", "PricingBucket"),
            type = "string",
            name = "PricingBucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-geo-pricing-bucket" },
            },
        }),
        TimeBreakdown = schema.new({
            id = id.from(_N, "OptimizeWaypointsOutput", "TimeBreakdown"),
            type = "structure",
            name = "TimeBreakdown",
            target_id = id.from(_N, "WaypointOptimizationTimeBreakdown"),
            target = M.WaypointOptimizationTimeBreakdown,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RoadSnapTracePoint = schema.new({
    id = id.from(_N, "RoadSnapTracePoint"),
    type = "structure",
    members = {
        Heading = schema.new({
            id = id.from(_N, "RoadSnapTracePoint", "Heading"),
            type = "double",
            name = "Heading",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Position = schema.new({
            id = id.from(_N, "RoadSnapTracePoint", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Speed = schema.new({
            id = id.from(_N, "RoadSnapTracePoint", "Speed"),
            type = "double",
            name = "Speed",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Timestamp = schema.new({
            id = id.from(_N, "RoadSnapTracePoint", "Timestamp"),
            type = "string",
            name = "Timestamp",
            target_id = prelude.String.id,
        }),
    },
})

M.RoadSnapTrailerOptions = schema.new({
    id = id.from(_N, "RoadSnapTrailerOptions"),
    type = "structure",
    members = {
        TrailerCount = schema.new({
            id = id.from(_N, "RoadSnapTrailerOptions", "TrailerCount"),
            type = "integer",
            name = "TrailerCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RoadSnapTruckOptions = schema.new({
    id = id.from(_N, "RoadSnapTruckOptions"),
    type = "structure",
    members = {
        GrossWeight = schema.new({
            id = id.from(_N, "RoadSnapTruckOptions", "GrossWeight"),
            type = "long",
            name = "GrossWeight",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        HazardousCargos = schema.new({
            id = id.from(_N, "RoadSnapTruckOptions", "HazardousCargos"),
            type = "list",
            name = "HazardousCargos",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Height = schema.new({
            id = id.from(_N, "RoadSnapTruckOptions", "Height"),
            type = "long",
            name = "Height",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Length = schema.new({
            id = id.from(_N, "RoadSnapTruckOptions", "Length"),
            type = "long",
            name = "Length",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Trailer = schema.new({
            id = id.from(_N, "RoadSnapTruckOptions", "Trailer"),
            type = "structure",
            name = "Trailer",
            target_id = id.from(_N, "RoadSnapTrailerOptions"),
            target = M.RoadSnapTrailerOptions,
        }),
        TunnelRestrictionCode = schema.new({
            id = id.from(_N, "RoadSnapTruckOptions", "TunnelRestrictionCode"),
            type = "string",
            name = "TunnelRestrictionCode",
            target_id = prelude.String.id,
        }),
        Width = schema.new({
            id = id.from(_N, "RoadSnapTruckOptions", "Width"),
            type = "long",
            name = "Width",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RoadSnapTravelModeOptions = schema.new({
    id = id.from(_N, "RoadSnapTravelModeOptions"),
    type = "structure",
    members = {
        Truck = schema.new({
            id = id.from(_N, "RoadSnapTravelModeOptions", "Truck"),
            type = "structure",
            name = "Truck",
            target_id = id.from(_N, "RoadSnapTruckOptions"),
            target = M.RoadSnapTruckOptions,
        }),
    },
})

M.SnapToRoadsInput = schema.new({
    id = id.from(_N, "SnapToRoadsRequest"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "SnapToRoadsInput", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "key" },
            },
        }),
        SnappedGeometryFormat = schema.new({
            id = id.from(_N, "SnapToRoadsInput", "SnappedGeometryFormat"),
            type = "string",
            name = "SnappedGeometryFormat",
            target_id = prelude.String.id,
        }),
        SnapRadius = schema.new({
            id = id.from(_N, "SnapToRoadsInput", "SnapRadius"),
            type = "long",
            name = "SnapRadius",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TracePoints = schema.new({
            id = id.from(_N, "SnapToRoadsInput", "TracePoints"),
            type = "list",
            name = "TracePoints",
            target_id = prelude.Document.id,
            list_member = M.RoadSnapTracePoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TravelMode = schema.new({
            id = id.from(_N, "SnapToRoadsInput", "TravelMode"),
            type = "string",
            name = "TravelMode",
            target_id = prelude.String.id,
        }),
        TravelModeOptions = schema.new({
            id = id.from(_N, "SnapToRoadsInput", "TravelModeOptions"),
            type = "structure",
            name = "TravelModeOptions",
            target_id = id.from(_N, "RoadSnapTravelModeOptions"),
            target = M.RoadSnapTravelModeOptions,
        }),
    },
})

M.RoadSnapNotice = schema.new({
    id = id.from(_N, "RoadSnapNotice"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "RoadSnapNotice", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Title = schema.new({
            id = id.from(_N, "RoadSnapNotice", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TracePointIndexes = schema.new({
            id = id.from(_N, "RoadSnapNotice", "TracePointIndexes"),
            type = "list",
            name = "TracePointIndexes",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RoadSnapSnappedGeometry = schema.new({
    id = id.from(_N, "RoadSnapSnappedGeometry"),
    type = "structure",
    members = {
        LineString = schema.new({
            id = id.from(_N, "RoadSnapSnappedGeometry", "LineString"),
            type = "list",
            name = "LineString",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "list", list_member = prelude.Double }),
        }),
        Polyline = schema.new({
            id = id.from(_N, "RoadSnapSnappedGeometry", "Polyline"),
            type = "string",
            name = "Polyline",
            target_id = prelude.String.id,
        }),
    },
})

M.RoadSnapSnappedTracePoint = schema.new({
    id = id.from(_N, "RoadSnapSnappedTracePoint"),
    type = "structure",
    members = {
        Confidence = schema.new({
            id = id.from(_N, "RoadSnapSnappedTracePoint", "Confidence"),
            type = "double",
            name = "Confidence",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginalPosition = schema.new({
            id = id.from(_N, "RoadSnapSnappedTracePoint", "OriginalPosition"),
            type = "list",
            name = "OriginalPosition",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnappedPosition = schema.new({
            id = id.from(_N, "RoadSnapSnappedTracePoint", "SnappedPosition"),
            type = "list",
            name = "SnappedPosition",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SnapToRoadsOutput = schema.new({
    id = id.from(_N, "SnapToRoadsResponse"),
    type = "structure",
    members = {
        Notices = schema.new({
            id = id.from(_N, "SnapToRoadsOutput", "Notices"),
            type = "list",
            name = "Notices",
            target_id = prelude.Document.id,
            list_member = M.RoadSnapNotice,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PricingBucket = schema.new({
            id = id.from(_N, "SnapToRoadsOutput", "PricingBucket"),
            type = "string",
            name = "PricingBucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-geo-pricing-bucket" },
            },
        }),
        SnappedGeometry = schema.new({
            id = id.from(_N, "SnapToRoadsOutput", "SnappedGeometry"),
            type = "structure",
            name = "SnappedGeometry",
            target_id = id.from(_N, "RoadSnapSnappedGeometry"),
            target = M.RoadSnapSnappedGeometry,
        }),
        SnappedGeometryFormat = schema.new({
            id = id.from(_N, "SnapToRoadsOutput", "SnappedGeometryFormat"),
            type = "string",
            name = "SnappedGeometryFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnappedTracePoints = schema.new({
            id = id.from(_N, "SnapToRoadsOutput", "SnappedTracePoints"),
            type = "list",
            name = "SnappedTracePoints",
            target_id = prelude.Document.id,
            list_member = M.RoadSnapSnappedTracePoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
