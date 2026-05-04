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

M.AndroidApp = {
    type = "structure",
    id = "AndroidApp",
    members = {
        Package = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateFingerprint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Status = {
    Active = "Active",
    Expired = "Expired",
}

M.ApiKeyFilter = {
    type = "structure",
    id = "ApiKeyFilter",
    members = {
        KeyStatus = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
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

M.AppleApp = {
    type = "structure",
    id = "AppleApp",
    members = {
        BundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApiKeyRestrictions = {
    type = "structure",
    id = "ApiKeyRestrictions",
    members = {
        AllowActions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AllowResources = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AllowReferers = {
            type = "list",
            member = { type = "string" },
        },
        AllowAndroidApps = {
            type = "list",
            member = M.AndroidApp,
        },
        AllowAppleApps = {
            type = "list",
            member = M.AppleApp,
        },
    },
}

M.CreateKeyInput = {
    type = "structure",
    id = "CreateKeyInput",
    members = {
        KeyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Restrictions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApiKeyRestrictions }),
        Description = {
            type = "string",
        },
        ExpireTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        NoExpiry = {
            type = "boolean",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateKeyOutput = {
    type = "structure",
    id = "CreateKeyOutput",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
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

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
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
    UnknownOperation = "UnknownOperation",
    Missing = "Missing",
    CannotParse = "CannotParse",
    FieldValidationFailed = "FieldValidationFailed",
    Other = "Other",
    UnknownField = "UnknownField",
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

M.DeleteKeyInput = {
    type = "structure",
    id = "DeleteKeyInput",
    members = {
        KeyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ForceDelete = {
            type = "boolean",
            traits = {
                http_query = "forceDelete",
            },
        },
    },
}

M.DeleteKeyOutput = {
    type = "structure",
    id = "DeleteKeyOutput",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
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

M.DescribeKeyInput = {
    type = "structure",
    id = "DescribeKeyInput",
    members = {
        KeyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeKeyOutput = {
    type = "structure",
    id = "DescribeKeyOutput",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Restrictions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApiKeyRestrictions }),
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ExpireTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListKeysInput = {
    type = "structure",
    id = "ListKeysInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
        Filter = M.ApiKeyFilter,
    },
}

M.ListKeysResponseEntry = {
    type = "structure",
    id = "ListKeysResponseEntry",
    members = {
        KeyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpireTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
        },
        Restrictions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApiKeyRestrictions }),
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListKeysOutput = {
    type = "structure",
    id = "ListKeysOutput",
    members = {
        Entries = {
            type = "list",
            member = M.ListKeysResponseEntry,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateKeyInput = {
    type = "structure",
    id = "UpdateKeyInput",
    members = {
        KeyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ExpireTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        NoExpiry = {
            type = "boolean",
        },
        ForceUpdate = {
            type = "boolean",
        },
        Restrictions = M.ApiKeyRestrictions,
    },
}

M.UpdateKeyOutput = {
    type = "structure",
    id = "UpdateKeyOutput",
    members = {
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.AssociateTrackerConsumerInput = {
    type = "structure",
    id = "AssociateTrackerConsumerInput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConsumerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateTrackerConsumerOutput = {
    type = "structure",
    id = "AssociateTrackerConsumerOutput",
}

M.BatchDeleteDevicePositionHistoryInput = {
    type = "structure",
    id = "BatchDeleteDevicePositionHistoryInput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchItemErrorCode = {
    AccessDeniedError = "AccessDeniedError",
    ConflictError = "ConflictError",
    InternalServerError = "InternalServerError",
    ResourceNotFoundError = "ResourceNotFoundError",
    ThrottlingError = "ThrottlingError",
    ValidationError = "ValidationError",
}

M.BatchItemError = {
    type = "structure",
    id = "BatchItemError",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.BatchDeleteDevicePositionHistoryError = {
    type = "structure",
    id = "BatchDeleteDevicePositionHistoryError",
    members = {
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchItemError }),
    },
}

M.BatchDeleteDevicePositionHistoryOutput = {
    type = "structure",
    id = "BatchDeleteDevicePositionHistoryOutput",
    members = {
        Errors = {
            type = "list",
            member = M.BatchDeleteDevicePositionHistoryError,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteGeofenceInput = {
    type = "structure",
    id = "BatchDeleteGeofenceInput",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GeofenceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteGeofenceError = {
    type = "structure",
    id = "BatchDeleteGeofenceError",
    members = {
        GeofenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchItemError }),
    },
}

M.BatchDeleteGeofenceOutput = {
    type = "structure",
    id = "BatchDeleteGeofenceOutput",
    members = {
        Errors = {
            type = "list",
            member = M.BatchDeleteGeofenceError,
            traits = {
                required = true,
            },
        },
    },
}

M.PositionalAccuracy = {
    type = "structure",
    id = "PositionalAccuracy",
    members = {
        Horizontal = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.DevicePositionUpdate = {
    type = "structure",
    id = "DevicePositionUpdate",
    members = {
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SampleTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        Accuracy = M.PositionalAccuracy,
        PositionProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.BatchEvaluateGeofencesInput = {
    type = "structure",
    id = "BatchEvaluateGeofencesInput",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DevicePositionUpdates = {
            type = "list",
            member = M.DevicePositionUpdate,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchEvaluateGeofencesError = {
    type = "structure",
    id = "BatchEvaluateGeofencesError",
    members = {
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SampleTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchItemError }),
    },
}

M.BatchEvaluateGeofencesOutput = {
    type = "structure",
    id = "BatchEvaluateGeofencesOutput",
    members = {
        Errors = {
            type = "list",
            member = M.BatchEvaluateGeofencesError,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetDevicePositionInput = {
    type = "structure",
    id = "BatchGetDevicePositionInput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DevicePosition = {
    type = "structure",
    id = "DevicePosition",
    members = {
        DeviceId = {
            type = "string",
        },
        SampleTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ReceivedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        Accuracy = M.PositionalAccuracy,
        PositionProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.BatchGetDevicePositionError = {
    type = "structure",
    id = "BatchGetDevicePositionError",
    members = {
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchItemError }),
    },
}

M.BatchGetDevicePositionOutput = {
    type = "structure",
    id = "BatchGetDevicePositionOutput",
    members = {
        Errors = {
            type = "list",
            member = M.BatchGetDevicePositionError,
            traits = {
                required = true,
            },
        },
        DevicePositions = {
            type = "list",
            member = M.DevicePosition,
            traits = {
                required = true,
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

M.GeofenceGeometry = {
    type = "structure",
    id = "GeofenceGeometry",
    members = {
        Polygon = {
            type = "list",
            member = { type = "list" },
        },
        Circle = M.Circle,
        Geobuf = {
            type = "blob",
        },
        MultiPolygon = {
            type = "list",
            member = { type = "list" },
        },
    },
}

M.BatchPutGeofenceRequestEntry = {
    type = "structure",
    id = "BatchPutGeofenceRequestEntry",
    members = {
        GeofenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Geometry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeofenceGeometry }),
        GeofenceProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.BatchPutGeofenceInput = {
    type = "structure",
    id = "BatchPutGeofenceInput",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Entries = {
            type = "list",
            member = M.BatchPutGeofenceRequestEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutGeofenceError = {
    type = "structure",
    id = "BatchPutGeofenceError",
    members = {
        GeofenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchItemError }),
    },
}

M.BatchPutGeofenceSuccess = {
    type = "structure",
    id = "BatchPutGeofenceSuccess",
    members = {
        GeofenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.BatchPutGeofenceOutput = {
    type = "structure",
    id = "BatchPutGeofenceOutput",
    members = {
        Successes = {
            type = "list",
            member = M.BatchPutGeofenceSuccess,
            traits = {
                required = true,
            },
        },
        Errors = {
            type = "list",
            member = M.BatchPutGeofenceError,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateDevicePositionInput = {
    type = "structure",
    id = "BatchUpdateDevicePositionInput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Updates = {
            type = "list",
            member = M.DevicePositionUpdate,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateDevicePositionError = {
    type = "structure",
    id = "BatchUpdateDevicePositionError",
    members = {
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SampleTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchItemError }),
    },
}

M.BatchUpdateDevicePositionOutput = {
    type = "structure",
    id = "BatchUpdateDevicePositionOutput",
    members = {
        Errors = {
            type = "list",
            member = M.BatchUpdateDevicePositionError,
            traits = {
                required = true,
            },
        },
    },
}

M.CalculateRouteCarModeOptions = {
    type = "structure",
    id = "CalculateRouteCarModeOptions",
    members = {
        AvoidFerries = {
            type = "boolean",
        },
        AvoidTolls = {
            type = "boolean",
        },
    },
}

M.DistanceUnit = {
    Kilometers = "Kilometers",
    Miles = "Miles",
}

M.OptimizationMode = {
    FastestRoute = "FastestRoute",
    ShortestRoute = "ShortestRoute",
}

M.TravelMode = {
    Car = "Car",
    Truck = "Truck",
    Walking = "Walking",
    Bicycle = "Bicycle",
    Motorcycle = "Motorcycle",
}

M.DimensionUnit = {
    Meters = "Meters",
    Feet = "Feet",
}

M.TruckDimensions = {
    type = "structure",
    id = "TruckDimensions",
    members = {
        Length = {
            type = "double",
        },
        Height = {
            type = "double",
        },
        Width = {
            type = "double",
        },
        Unit = {
            type = "string",
        },
    },
}

M.VehicleWeightUnit = {
    Kilograms = "Kilograms",
    Pounds = "Pounds",
}

M.TruckWeight = {
    type = "structure",
    id = "TruckWeight",
    members = {
        Total = {
            type = "double",
        },
        Unit = {
            type = "string",
        },
    },
}

M.CalculateRouteTruckModeOptions = {
    type = "structure",
    id = "CalculateRouteTruckModeOptions",
    members = {
        AvoidFerries = {
            type = "boolean",
        },
        AvoidTolls = {
            type = "boolean",
        },
        Dimensions = M.TruckDimensions,
        Weight = M.TruckWeight,
    },
}

M.CalculateRouteInput = {
    type = "structure",
    id = "CalculateRouteInput",
    members = {
        CalculatorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeparturePosition = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        DestinationPosition = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        WaypointPositions = {
            type = "list",
            member = { type = "list" },
        },
        TravelMode = {
            type = "string",
        },
        DepartureTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        DepartNow = {
            type = "boolean",
        },
        DistanceUnit = {
            type = "string",
        },
        IncludeLegGeometry = {
            type = "boolean",
        },
        CarModeOptions = M.CalculateRouteCarModeOptions,
        TruckModeOptions = M.CalculateRouteTruckModeOptions,
        ArrivalTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        OptimizeFor = {
            type = "string",
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.LegGeometry = {
    type = "structure",
    id = "LegGeometry",
    members = {
        LineString = {
            type = "list",
            member = { type = "list" },
        },
    },
}

M.Step = {
    type = "structure",
    id = "Step",
    members = {
        StartPosition = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        EndPosition = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        Distance = {
            type = "double",
            traits = {
                required = true,
            },
        },
        DurationSeconds = {
            type = "double",
            traits = {
                required = true,
            },
        },
        GeometryOffset = {
            type = "integer",
        },
    },
}

M.Leg = {
    type = "structure",
    id = "Leg",
    members = {
        StartPosition = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        EndPosition = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        Distance = {
            type = "double",
            traits = {
                required = true,
            },
        },
        DurationSeconds = {
            type = "double",
            traits = {
                required = true,
            },
        },
        Geometry = M.LegGeometry,
        Steps = {
            type = "list",
            member = M.Step,
            traits = {
                required = true,
            },
        },
    },
}

M.CalculateRouteSummary = {
    type = "structure",
    id = "CalculateRouteSummary",
    members = {
        RouteBBox = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        DataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Distance = {
            type = "double",
            traits = {
                required = true,
            },
        },
        DurationSeconds = {
            type = "double",
            traits = {
                required = true,
            },
        },
        DistanceUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CalculateRouteOutput = {
    type = "structure",
    id = "CalculateRouteOutput",
    members = {
        Legs = {
            type = "list",
            member = M.Leg,
            traits = {
                required = true,
            },
        },
        Summary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CalculateRouteSummary }),
    },
}

M.CalculateRouteMatrixInput = {
    type = "structure",
    id = "CalculateRouteMatrixInput",
    members = {
        CalculatorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeparturePositions = {
            type = "list",
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
        DestinationPositions = {
            type = "list",
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
        TravelMode = {
            type = "string",
        },
        DepartureTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        DepartNow = {
            type = "boolean",
        },
        DistanceUnit = {
            type = "string",
        },
        CarModeOptions = M.CalculateRouteCarModeOptions,
        TruckModeOptions = M.CalculateRouteTruckModeOptions,
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.RouteMatrixErrorCode = {
    RouteNotFound = "RouteNotFound",
    RouteTooLong = "RouteTooLong",
    PositionsNotFound = "PositionsNotFound",
    DestinationPositionNotFound = "DestinationPositionNotFound",
    DeparturePositionNotFound = "DeparturePositionNotFound",
    OtherValidationError = "OtherValidationError",
}

M.RouteMatrixEntryError = {
    type = "structure",
    id = "RouteMatrixEntryError",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.RouteMatrixEntry = {
    type = "structure",
    id = "RouteMatrixEntry",
    members = {
        Distance = {
            type = "double",
        },
        DurationSeconds = {
            type = "double",
        },
        Error = M.RouteMatrixEntryError,
    },
}

M.CalculateRouteMatrixSummary = {
    type = "structure",
    id = "CalculateRouteMatrixSummary",
    members = {
        DataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RouteCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ErrorCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        DistanceUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CalculateRouteMatrixOutput = {
    type = "structure",
    id = "CalculateRouteMatrixOutput",
    members = {
        RouteMatrix = {
            type = "list",
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
        SnappedDeparturePositions = {
            type = "list",
            member = { type = "list" },
        },
        SnappedDestinationPositions = {
            type = "list",
            member = { type = "list" },
        },
        Summary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CalculateRouteMatrixSummary }),
    },
}

M.CancelJobInput = {
    type = "structure",
    id = "CancelJobInput",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobStatus = {
    PENDING = "Pending",
    RUNNING = "Running",
    COMPLETED = "Completed",
    FAILED = "Failed",
    CANCELLING = "Cancelling",
    CANCELLED = "Cancelled",
}

M.CancelJobOutput = {
    type = "structure",
    id = "CancelJobOutput",
    members = {
        JobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LteLocalId = {
    type = "structure",
    id = "LteLocalId",
    members = {
        Earfcn = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        Pci = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.LteNetworkMeasurements = {
    type = "structure",
    id = "LteNetworkMeasurements",
    members = {
        Earfcn = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        CellId = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        Pci = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        Rsrp = {
            type = "integer",
        },
        Rsrq = {
            type = "float",
        },
    },
}

M.LteCellDetails = {
    type = "structure",
    id = "LteCellDetails",
    members = {
        CellId = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        Mcc = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Mnc = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        LocalId = M.LteLocalId,
        NetworkMeasurements = {
            type = "list",
            member = M.LteNetworkMeasurements,
        },
        TimingAdvance = {
            type = "integer",
        },
        NrCapable = {
            type = "boolean",
        },
        Rsrp = {
            type = "integer",
        },
        Rsrq = {
            type = "float",
        },
        Tac = {
            type = "integer",
        },
    },
}

M.CellSignals = {
    type = "structure",
    id = "CellSignals",
    members = {
        LteCellDetails = {
            type = "list",
            member = M.LteCellDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.PricingPlan = {
    RequestBasedUsage = "RequestBasedUsage",
    MobileAssetTracking = "MobileAssetTracking",
    MobileAssetManagement = "MobileAssetManagement",
}

M.CreateGeofenceCollectionInput = {
    type = "structure",
    id = "CreateGeofenceCollectionInput",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        PricingPlanDataSource = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.CreateGeofenceCollectionOutput = {
    type = "structure",
    id = "CreateGeofenceCollectionOutput",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CollectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.MapConfiguration = {
    type = "structure",
    id = "MapConfiguration",
    members = {
        Style = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PoliticalView = {
            type = "string",
        },
        CustomLayers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateMapInput = {
    type = "structure",
    id = "CreateMapInput",
    members = {
        MapName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MapConfiguration }),
        PricingPlan = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateMapOutput = {
    type = "structure",
    id = "CreateMapOutput",
    members = {
        MapName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MapArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.IntendedUse = {
    SingleUse = "SingleUse",
    Storage = "Storage",
}

M.DataSourceConfiguration = {
    type = "structure",
    id = "DataSourceConfiguration",
    members = {
        IntendedUse = {
            type = "string",
        },
    },
}

M.CreatePlaceIndexInput = {
    type = "structure",
    id = "CreatePlaceIndexInput",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DataSourceConfiguration = M.DataSourceConfiguration,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreatePlaceIndexOutput = {
    type = "structure",
    id = "CreatePlaceIndexOutput",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateRouteCalculatorInput = {
    type = "structure",
    id = "CreateRouteCalculatorInput",
    members = {
        CalculatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateRouteCalculatorOutput = {
    type = "structure",
    id = "CreateRouteCalculatorOutput",
    members = {
        CalculatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CalculatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.PositionFiltering = {
    TimeBased = "TimeBased",
    DistanceBased = "DistanceBased",
    AccuracyBased = "AccuracyBased",
}

M.CreateTrackerInput = {
    type = "structure",
    id = "CreateTrackerInput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        PricingPlanDataSource = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PositionFiltering = {
            type = "string",
        },
        EventBridgeEnabled = {
            type = "boolean",
        },
        KmsKeyEnableGeospatialQueries = {
            type = "boolean",
        },
    },
}

M.CreateTrackerOutput = {
    type = "structure",
    id = "CreateTrackerOutput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrackerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteGeofenceCollectionInput = {
    type = "structure",
    id = "DeleteGeofenceCollectionInput",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGeofenceCollectionOutput = {
    type = "structure",
    id = "DeleteGeofenceCollectionOutput",
}

M.DeleteMapInput = {
    type = "structure",
    id = "DeleteMapInput",
    members = {
        MapName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMapOutput = {
    type = "structure",
    id = "DeleteMapOutput",
}

M.DeletePlaceIndexInput = {
    type = "structure",
    id = "DeletePlaceIndexInput",
    members = {
        IndexName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePlaceIndexOutput = {
    type = "structure",
    id = "DeletePlaceIndexOutput",
}

M.DeleteRouteCalculatorInput = {
    type = "structure",
    id = "DeleteRouteCalculatorInput",
    members = {
        CalculatorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRouteCalculatorOutput = {
    type = "structure",
    id = "DeleteRouteCalculatorOutput",
}

M.DeleteTrackerInput = {
    type = "structure",
    id = "DeleteTrackerInput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTrackerOutput = {
    type = "structure",
    id = "DeleteTrackerOutput",
}

M.DescribeGeofenceCollectionInput = {
    type = "structure",
    id = "DescribeGeofenceCollectionInput",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeGeofenceCollectionOutput = {
    type = "structure",
    id = "DescribeGeofenceCollectionOutput",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CollectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        PricingPlanDataSource = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        GeofenceCount = {
            type = "integer",
        },
    },
}

M.DescribeMapInput = {
    type = "structure",
    id = "DescribeMapInput",
    members = {
        MapName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeMapOutput = {
    type = "structure",
    id = "DescribeMapOutput",
    members = {
        MapName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MapArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        DataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MapConfiguration }),
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.DescribePlaceIndexInput = {
    type = "structure",
    id = "DescribePlaceIndexInput",
    members = {
        IndexName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribePlaceIndexOutput = {
    type = "structure",
    id = "DescribePlaceIndexOutput",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        DataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSourceConfiguration }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeRouteCalculatorInput = {
    type = "structure",
    id = "DescribeRouteCalculatorInput",
    members = {
        CalculatorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeRouteCalculatorOutput = {
    type = "structure",
    id = "DescribeRouteCalculatorOutput",
    members = {
        CalculatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CalculatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        DataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeTrackerInput = {
    type = "structure",
    id = "DescribeTrackerInput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeTrackerOutput = {
    type = "structure",
    id = "DescribeTrackerOutput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrackerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        PricingPlanDataSource = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        KmsKeyId = {
            type = "string",
        },
        PositionFiltering = {
            type = "string",
        },
        EventBridgeEnabled = {
            type = "boolean",
        },
        KmsKeyEnableGeospatialQueries = {
            type = "boolean",
        },
    },
}

M.WiFiAccessPoint = {
    type = "structure",
    id = "WiFiAccessPoint",
    members = {
        MacAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rss = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.DeviceState = {
    type = "structure",
    id = "DeviceState",
    members = {
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SampleTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        Accuracy = M.PositionalAccuracy,
        Ipv4Address = {
            type = "string",
        },
        WiFiAccessPoints = {
            type = "list",
            member = M.WiFiAccessPoint,
        },
        CellSignals = M.CellSignals,
    },
}

M.DisassociateTrackerConsumerInput = {
    type = "structure",
    id = "DisassociateTrackerConsumerInput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConsumerArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateTrackerConsumerOutput = {
    type = "structure",
    id = "DisassociateTrackerConsumerOutput",
}

M.ForecastedGeofenceEventType = {
    ENTER = "ENTER",
    EXIT = "EXIT",
    IDLE = "IDLE",
}

M.ForecastedEvent = {
    type = "structure",
    id = "ForecastedEvent",
    members = {
        EventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GeofenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsDeviceInGeofence = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        NearestDistance = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        EventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForecastedBreachTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        GeofenceProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ForecastGeofenceEventsDeviceState = {
    type = "structure",
    id = "ForecastGeofenceEventsDeviceState",
    members = {
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        Speed = {
            type = "double",
        },
    },
}

M.SpeedUnit = {
    KilometersPerHour = "KilometersPerHour",
    MilesPerHour = "MilesPerHour",
}

M.ForecastGeofenceEventsInput = {
    type = "structure",
    id = "ForecastGeofenceEventsInput",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceState = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ForecastGeofenceEventsDeviceState }),
        TimeHorizonMinutes = {
            type = "double",
        },
        DistanceUnit = {
            type = "string",
        },
        SpeedUnit = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.ForecastGeofenceEventsOutput = {
    type = "structure",
    id = "ForecastGeofenceEventsOutput",
    members = {
        ForecastedEvents = {
            type = "list",
            member = M.ForecastedEvent,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        DistanceUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SpeedUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.GetGeofenceInput = {
    type = "structure",
    id = "GetGeofenceInput",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GeofenceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGeofenceOutput = {
    type = "structure",
    id = "GetGeofenceOutput",
    members = {
        GeofenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Geometry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeofenceGeometry }),
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        GeofenceProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListGeofenceCollectionsInput = {
    type = "structure",
    id = "ListGeofenceCollectionsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGeofenceCollectionsResponseEntry = {
    type = "structure",
    id = "ListGeofenceCollectionsResponseEntry",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        PricingPlanDataSource = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListGeofenceCollectionsOutput = {
    type = "structure",
    id = "ListGeofenceCollectionsOutput",
    members = {
        Entries = {
            type = "list",
            member = M.ListGeofenceCollectionsResponseEntry,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGeofencesInput = {
    type = "structure",
    id = "ListGeofencesInput",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.ListGeofenceResponseEntry = {
    type = "structure",
    id = "ListGeofenceResponseEntry",
    members = {
        GeofenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Geometry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeofenceGeometry }),
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        GeofenceProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListGeofencesOutput = {
    type = "structure",
    id = "ListGeofencesOutput",
    members = {
        Entries = {
            type = "list",
            member = M.ListGeofenceResponseEntry,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutGeofenceInput = {
    type = "structure",
    id = "PutGeofenceInput",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GeofenceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Geometry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeofenceGeometry }),
        GeofenceProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PutGeofenceOutput = {
    type = "structure",
    id = "PutGeofenceOutput",
    members = {
        GeofenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdateGeofenceCollectionInput = {
    type = "structure",
    id = "UpdateGeofenceCollectionInput",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        PricingPlanDataSource = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateGeofenceCollectionOutput = {
    type = "structure",
    id = "UpdateGeofenceCollectionOutput",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CollectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetDevicePositionInput = {
    type = "structure",
    id = "GetDevicePositionInput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDevicePositionOutput = {
    type = "structure",
    id = "GetDevicePositionOutput",
    members = {
        DeviceId = {
            type = "string",
        },
        SampleTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ReceivedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        Accuracy = M.PositionalAccuracy,
        PositionProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetDevicePositionHistoryInput = {
    type = "structure",
    id = "GetDevicePositionHistoryInput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        StartTimeInclusive = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        EndTimeExclusive = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.GetDevicePositionHistoryOutput = {
    type = "structure",
    id = "GetDevicePositionHistoryOutput",
    members = {
        DevicePositions = {
            type = "list",
            member = M.DevicePosition,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetJobInput = {
    type = "structure",
    id = "GetJobInput",
    members = {
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.JobAction = {
    VALIDATE_ADDRESS = "ValidateAddress",
}

M.ValidateAddressAdditionalFeature = {
    POSITION = "Position",
    COUNTRY_SPECIFIC_ATTRIBUTES = "CountrySpecificAttributes",
}

M.ValidateAddressActionOptions = {
    type = "structure",
    id = "ValidateAddressActionOptions",
    members = {
        AdditionalFeatures = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.JobActionOptions = {
    type = "structure",
    id = "JobActionOptions",
    members = {
        ValidateAddress = M.ValidateAddressActionOptions,
    },
}

M.JobErrorCode = {
    VALIDATION_ERROR = "ValidationError",
    INTERNAL_SERVER_ERROR = "InternalServerError",
}

M.JobError = {
    type = "structure",
    id = "JobError",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Messages = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.JobInputFormat = {
    PARQUET = "Parquet",
}

M.JobInputOptions = {
    type = "structure",
    id = "JobInputOptions",
    members = {
        Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobOutputFormat = {
    PARQUET = "Parquet",
}

M.JobOutputOptions = {
    type = "structure",
    id = "JobOutputOptions",
    members = {
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetJobOutput = {
    type = "structure",
    id = "GetJobOutput",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionOptions = M.JobActionOptions,
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        EndedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Error = M.JobError,
        ExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobInputOptions }),
        JobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        OutputOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobOutputOptions }),
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetMapGlyphsInput = {
    type = "structure",
    id = "GetMapGlyphsInput",
    members = {
        MapName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FontStack = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FontUnicodeRange = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.GetMapGlyphsOutput = {
    type = "structure",
    id = "GetMapGlyphsOutput",
    members = {
        Blob = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
    },
}

M.GetMapSpritesInput = {
    type = "structure",
    id = "GetMapSpritesInput",
    members = {
        MapName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.GetMapSpritesOutput = {
    type = "structure",
    id = "GetMapSpritesOutput",
    members = {
        Blob = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
    },
}

M.GetMapStyleDescriptorInput = {
    type = "structure",
    id = "GetMapStyleDescriptorInput",
    members = {
        MapName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.GetMapStyleDescriptorOutput = {
    type = "structure",
    id = "GetMapStyleDescriptorOutput",
    members = {
        Blob = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
    },
}

M.GetMapTileInput = {
    type = "structure",
    id = "GetMapTileInput",
    members = {
        MapName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Z = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        X = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Y = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.GetMapTileOutput = {
    type = "structure",
    id = "GetMapTileOutput",
    members = {
        Blob = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
    },
}

M.GetPlaceInput = {
    type = "structure",
    id = "GetPlaceInput",
    members = {
        IndexName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PlaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Language = {
            type = "string",
            traits = {
                http_query = "language",
            },
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.PlaceGeometry = {
    type = "structure",
    id = "PlaceGeometry",
    members = {
        Point = {
            type = "list",
            member = { type = "double" },
        },
    },
}

M.TimeZone = {
    type = "structure",
    id = "TimeZone",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Offset = {
            type = "integer",
        },
    },
}

M.Place = {
    type = "structure",
    id = "Place",
    members = {
        Label = {
            type = "string",
        },
        Geometry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PlaceGeometry }),
        AddressNumber = {
            type = "string",
        },
        Street = {
            type = "string",
        },
        Neighborhood = {
            type = "string",
        },
        Municipality = {
            type = "string",
        },
        SubRegion = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        PostalCode = {
            type = "string",
        },
        Interpolated = {
            type = "boolean",
        },
        TimeZone = M.TimeZone,
        UnitType = {
            type = "string",
        },
        UnitNumber = {
            type = "string",
        },
        Categories = {
            type = "list",
            member = { type = "string" },
        },
        SupplementalCategories = {
            type = "list",
            member = { type = "string" },
        },
        SubMunicipality = {
            type = "string",
        },
    },
}

M.GetPlaceOutput = {
    type = "structure",
    id = "GetPlaceOutput",
    members = {
        Place = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Place }),
    },
}

M.InferredState = {
    type = "structure",
    id = "InferredState",
    members = {
        Position = {
            type = "list",
            member = { type = "double" },
        },
        Accuracy = M.PositionalAccuracy,
        DeviationDistance = {
            type = "double",
        },
        ProxyDetected = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.JobsFilter = {
    type = "structure",
    id = "JobsFilter",
    members = {
        JobStatus = {
            type = "string",
        },
    },
}

M.ListJobsInput = {
    type = "structure",
    id = "ListJobsInput",
    members = {
        Filter = M.JobsFilter,
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListJobsResponseEntry = {
    type = "structure",
    id = "ListJobsResponseEntry",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionOptions = M.JobActionOptions,
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Error = M.JobError,
        InputOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobInputOptions }),
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        OutputOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobOutputOptions }),
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
    id = "ListJobsOutput",
    members = {
        Entries = {
            type = "list",
            member = M.ListJobsResponseEntry,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartJobInput = {
    type = "structure",
    id = "StartJobInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionOptions = M.JobActionOptions,
        ExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobInputOptions }),
        Name = {
            type = "string",
        },
        OutputOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobOutputOptions }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartJobOutput = {
    type = "structure",
    id = "StartJobOutput",
    members = {
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        JobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrackingFilterGeometry = {
    type = "structure",
    id = "TrackingFilterGeometry",
    members = {
        Polygon = {
            type = "list",
            member = { type = "list" },
        },
    },
}

M.ListDevicePositionsInput = {
    type = "structure",
    id = "ListDevicePositionsInput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
        FilterGeometry = M.TrackingFilterGeometry,
    },
}

M.ListDevicePositionsResponseEntry = {
    type = "structure",
    id = "ListDevicePositionsResponseEntry",
    members = {
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SampleTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        Accuracy = M.PositionalAccuracy,
        PositionProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListDevicePositionsOutput = {
    type = "structure",
    id = "ListDevicePositionsOutput",
    members = {
        Entries = {
            type = "list",
            member = M.ListDevicePositionsResponseEntry,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMapsInput = {
    type = "structure",
    id = "ListMapsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMapsResponseEntry = {
    type = "structure",
    id = "ListMapsResponseEntry",
    members = {
        MapName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListMapsOutput = {
    type = "structure",
    id = "ListMapsOutput",
    members = {
        Entries = {
            type = "list",
            member = M.ListMapsResponseEntry,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPlaceIndexesInput = {
    type = "structure",
    id = "ListPlaceIndexesInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPlaceIndexesResponseEntry = {
    type = "structure",
    id = "ListPlaceIndexesResponseEntry",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListPlaceIndexesOutput = {
    type = "structure",
    id = "ListPlaceIndexesOutput",
    members = {
        Entries = {
            type = "list",
            member = M.ListPlaceIndexesResponseEntry,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRouteCalculatorsInput = {
    type = "structure",
    id = "ListRouteCalculatorsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRouteCalculatorsResponseEntry = {
    type = "structure",
    id = "ListRouteCalculatorsResponseEntry",
    members = {
        CalculatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListRouteCalculatorsOutput = {
    type = "structure",
    id = "ListRouteCalculatorsOutput",
    members = {
        Entries = {
            type = "list",
            member = M.ListRouteCalculatorsResponseEntry,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTrackerConsumersInput = {
    type = "structure",
    id = "ListTrackerConsumersInput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTrackerConsumersOutput = {
    type = "structure",
    id = "ListTrackerConsumersOutput",
    members = {
        ConsumerArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTrackersInput = {
    type = "structure",
    id = "ListTrackersInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTrackersResponseEntry = {
    type = "structure",
    id = "ListTrackersResponseEntry",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        PricingPlanDataSource = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListTrackersOutput = {
    type = "structure",
    id = "ListTrackersOutput",
    members = {
        Entries = {
            type = "list",
            member = M.ListTrackersResponseEntry,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MapConfigurationUpdate = {
    type = "structure",
    id = "MapConfigurationUpdate",
    members = {
        PoliticalView = {
            type = "string",
        },
        CustomLayers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateMapInput = {
    type = "structure",
    id = "UpdateMapInput",
    members = {
        MapName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ConfigurationUpdate = M.MapConfigurationUpdate,
    },
}

M.UpdateMapOutput = {
    type = "structure",
    id = "UpdateMapOutput",
    members = {
        MapName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MapArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.SearchPlaceIndexForPositionInput = {
    type = "structure",
    id = "SearchPlaceIndexForPositionInput",
    members = {
        IndexName = {
            type = "string",
            traits = {
                http_label = true,
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
        MaxResults = {
            type = "integer",
        },
        Language = {
            type = "string",
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.SearchForPositionResult = {
    type = "structure",
    id = "SearchForPositionResult",
    members = {
        Place = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Place }),
        Distance = {
            type = "double",
            traits = {
                required = true,
            },
        },
        PlaceId = {
            type = "string",
        },
    },
}

M.SearchPlaceIndexForPositionSummary = {
    type = "structure",
    id = "SearchPlaceIndexForPositionSummary",
    members = {
        Position = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        DataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Language = {
            type = "string",
        },
    },
}

M.SearchPlaceIndexForPositionOutput = {
    type = "structure",
    id = "SearchPlaceIndexForPositionOutput",
    members = {
        Summary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SearchPlaceIndexForPositionSummary }),
        Results = {
            type = "list",
            member = M.SearchForPositionResult,
            traits = {
                required = true,
            },
        },
    },
}

M.SearchPlaceIndexForSuggestionsInput = {
    type = "structure",
    id = "SearchPlaceIndexForSuggestionsInput",
    members = {
        IndexName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BiasPosition = {
            type = "list",
            member = { type = "double" },
        },
        FilterBBox = {
            type = "list",
            member = { type = "double" },
        },
        FilterCountries = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        Language = {
            type = "string",
        },
        FilterCategories = {
            type = "list",
            member = { type = "string" },
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.SearchForSuggestionsResult = {
    type = "structure",
    id = "SearchForSuggestionsResult",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlaceId = {
            type = "string",
        },
        Categories = {
            type = "list",
            member = { type = "string" },
        },
        SupplementalCategories = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SearchPlaceIndexForSuggestionsSummary = {
    type = "structure",
    id = "SearchPlaceIndexForSuggestionsSummary",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BiasPosition = {
            type = "list",
            member = { type = "double" },
        },
        FilterBBox = {
            type = "list",
            member = { type = "double" },
        },
        FilterCountries = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        DataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Language = {
            type = "string",
        },
        FilterCategories = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SearchPlaceIndexForSuggestionsOutput = {
    type = "structure",
    id = "SearchPlaceIndexForSuggestionsOutput",
    members = {
        Summary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SearchPlaceIndexForSuggestionsSummary }),
        Results = {
            type = "list",
            member = M.SearchForSuggestionsResult,
            traits = {
                required = true,
            },
        },
    },
}

M.SearchPlaceIndexForTextInput = {
    type = "structure",
    id = "SearchPlaceIndexForTextInput",
    members = {
        IndexName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BiasPosition = {
            type = "list",
            member = { type = "double" },
        },
        FilterBBox = {
            type = "list",
            member = { type = "double" },
        },
        FilterCountries = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        Language = {
            type = "string",
        },
        FilterCategories = {
            type = "list",
            member = { type = "string" },
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.SearchForTextResult = {
    type = "structure",
    id = "SearchForTextResult",
    members = {
        Place = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Place }),
        Distance = {
            type = "double",
        },
        Relevance = {
            type = "double",
        },
        PlaceId = {
            type = "string",
        },
    },
}

M.SearchPlaceIndexForTextSummary = {
    type = "structure",
    id = "SearchPlaceIndexForTextSummary",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BiasPosition = {
            type = "list",
            member = { type = "double" },
        },
        FilterBBox = {
            type = "list",
            member = { type = "double" },
        },
        FilterCountries = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        ResultBBox = {
            type = "list",
            member = { type = "double" },
        },
        DataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Language = {
            type = "string",
        },
        FilterCategories = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SearchPlaceIndexForTextOutput = {
    type = "structure",
    id = "SearchPlaceIndexForTextOutput",
    members = {
        Summary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SearchPlaceIndexForTextSummary }),
        Results = {
            type = "list",
            member = M.SearchForTextResult,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePlaceIndexInput = {
    type = "structure",
    id = "UpdatePlaceIndexInput",
    members = {
        IndexName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DataSourceConfiguration = M.DataSourceConfiguration,
    },
}

M.UpdatePlaceIndexOutput = {
    type = "structure",
    id = "UpdatePlaceIndexOutput",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdateRouteCalculatorInput = {
    type = "structure",
    id = "UpdateRouteCalculatorInput",
    members = {
        CalculatorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateRouteCalculatorOutput = {
    type = "structure",
    id = "UpdateRouteCalculatorOutput",
    members = {
        CalculatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CalculatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdateTrackerInput = {
    type = "structure",
    id = "UpdateTrackerInput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
        },
        PricingPlanDataSource = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        PositionFiltering = {
            type = "string",
        },
        EventBridgeEnabled = {
            type = "boolean",
        },
        KmsKeyEnableGeospatialQueries = {
            type = "boolean",
        },
    },
}

M.UpdateTrackerOutput = {
    type = "structure",
    id = "UpdateTrackerOutput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrackerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.VerifyDevicePositionInput = {
    type = "structure",
    id = "VerifyDevicePositionInput",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceState = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DeviceState }),
        DistanceUnit = {
            type = "string",
        },
    },
}

M.VerifyDevicePositionOutput = {
    type = "structure",
    id = "VerifyDevicePositionOutput",
    members = {
        InferredState = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferredState }),
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SampleTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ReceivedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        DistanceUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

return M
