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

M.AndroidApp = {
    type = "structure",
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
    members = {
        KeyStatus = {
            type = "string",
        },
    },
}

M.ConflictException = {
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

M.AppleApp = {
    type = "structure",
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
    members = {
        AllowActions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AllowResources = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AllowReferers = {
            type = "list",
            member_type = "string",
        },
        AllowAndroidApps = {
            type = "list",
            member_type = "structure",
        },
        AllowAppleApps = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateKeyInput = {
    type = "structure",
    members = {
        KeyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Restrictions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ExpireTime = {
            type = "timestamp",
        },
        NoExpiry = {
            type = "boolean",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateKeyOutput = {
    type = "structure",
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
            },
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

M.ServiceQuotaExceededException = {
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
    UnknownOperation = "UnknownOperation",
    Missing = "Missing",
    CannotParse = "CannotParse",
    FieldValidationFailed = "FieldValidationFailed",
    Other = "Other",
    UnknownField = "UnknownField",
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

M.DeleteKeyInput = {
    type = "structure",
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
}

M.ResourceNotFoundException = {
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

M.DescribeKeyInput = {
    type = "structure",
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
        Restrictions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ExpireTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListKeysInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
    },
}

M.ListKeysResponseEntry = {
    type = "structure",
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
            },
        },
        Description = {
            type = "string",
        },
        Restrictions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListKeysOutput = {
    type = "structure",
    members = {
        Entries = {
            type = "list",
            member_type = "structure",
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
        },
        NoExpiry = {
            type = "boolean",
        },
        ForceUpdate = {
            type = "boolean",
        },
        Restrictions = {
            type = "structure",
        },
    },
}

M.UpdateKeyOutput = {
    type = "structure",
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
            },
        },
    },
}

M.AssociateTrackerConsumerInput = {
    type = "structure",
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
}

M.BatchDeleteDevicePositionHistoryInput = {
    type = "structure",
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
            member_type = "string",
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
    members = {
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Error = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteDevicePositionHistoryOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteGeofenceInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteGeofenceError = {
    type = "structure",
    members = {
        GeofenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Error = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteGeofenceOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PositionalAccuracy = {
    type = "structure",
    members = {
        Horizontal = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DevicePositionUpdate = {
    type = "structure",
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
            },
        },
        Position = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        Accuracy = {
            type = "structure",
        },
        PositionProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.BatchEvaluateGeofencesInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchEvaluateGeofencesError = {
    type = "structure",
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
            },
        },
        Error = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchEvaluateGeofencesOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetDevicePositionInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DevicePosition = {
    type = "structure",
    members = {
        DeviceId = {
            type = "string",
        },
        SampleTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ReceivedTime = {
            type = "timestamp",
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
        Accuracy = {
            type = "structure",
        },
        PositionProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.BatchGetDevicePositionError = {
    type = "structure",
    members = {
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Error = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetDevicePositionOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DevicePositions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
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

M.GeofenceGeometry = {
    type = "structure",
    members = {
        Polygon = {
            type = "list",
            member_type = "list",
        },
        Circle = {
            type = "structure",
        },
        Geobuf = {
            type = "blob",
        },
        MultiPolygon = {
            type = "list",
            member_type = "list",
        },
    },
}

M.BatchPutGeofenceRequestEntry = {
    type = "structure",
    members = {
        GeofenceId = {
            type = "string",
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
        GeofenceProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.BatchPutGeofenceInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutGeofenceError = {
    type = "structure",
    members = {
        GeofenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Error = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutGeofenceSuccess = {
    type = "structure",
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
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutGeofenceOutput = {
    type = "structure",
    members = {
        Successes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateDevicePositionInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateDevicePositionError = {
    type = "structure",
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
            },
        },
        Error = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateDevicePositionOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CalculateRouteCarModeOptions = {
    type = "structure",
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
    members = {
        Length = {
            type = "number",
        },
        Height = {
            type = "number",
        },
        Width = {
            type = "number",
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
    members = {
        Total = {
            type = "number",
        },
        Unit = {
            type = "string",
        },
    },
}

M.CalculateRouteTruckModeOptions = {
    type = "structure",
    members = {
        AvoidFerries = {
            type = "boolean",
        },
        AvoidTolls = {
            type = "boolean",
        },
        Dimensions = {
            type = "structure",
        },
        Weight = {
            type = "structure",
        },
    },
}

M.CalculateRouteInput = {
    type = "structure",
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
            member_type = "number",
            traits = {
                required = true,
            },
        },
        DestinationPosition = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        WaypointPositions = {
            type = "list",
            member_type = "list",
        },
        TravelMode = {
            type = "string",
        },
        DepartureTime = {
            type = "timestamp",
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
        CarModeOptions = {
            type = "structure",
        },
        TruckModeOptions = {
            type = "structure",
        },
        ArrivalTime = {
            type = "timestamp",
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
    members = {
        LineString = {
            type = "list",
            member_type = "list",
        },
    },
}

M.Step = {
    type = "structure",
    members = {
        StartPosition = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        EndPosition = {
            type = "list",
            member_type = "number",
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
        DurationSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        GeometryOffset = {
            type = "number",
        },
    },
}

M.Leg = {
    type = "structure",
    members = {
        StartPosition = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        EndPosition = {
            type = "list",
            member_type = "number",
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
        DurationSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Geometry = {
            type = "structure",
        },
        Steps = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CalculateRouteSummary = {
    type = "structure",
    members = {
        RouteBBox = {
            type = "list",
            member_type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        DurationSeconds = {
            type = "number",
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
    members = {
        Legs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Summary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CalculateRouteMatrixInput = {
    type = "structure",
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
            member_type = "list",
            traits = {
                required = true,
            },
        },
        DestinationPositions = {
            type = "list",
            member_type = "list",
            traits = {
                required = true,
            },
        },
        TravelMode = {
            type = "string",
        },
        DepartureTime = {
            type = "timestamp",
        },
        DepartNow = {
            type = "boolean",
        },
        DistanceUnit = {
            type = "string",
        },
        CarModeOptions = {
            type = "structure",
        },
        TruckModeOptions = {
            type = "structure",
        },
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
    members = {
        Distance = {
            type = "number",
        },
        DurationSeconds = {
            type = "number",
        },
        Error = {
            type = "structure",
        },
    },
}

M.CalculateRouteMatrixSummary = {
    type = "structure",
    members = {
        DataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RouteCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ErrorCount = {
            type = "number",
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
    members = {
        RouteMatrix = {
            type = "list",
            member_type = "list",
            traits = {
                required = true,
            },
        },
        SnappedDeparturePositions = {
            type = "list",
            member_type = "list",
        },
        SnappedDestinationPositions = {
            type = "list",
            member_type = "list",
        },
        Summary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelJobInput = {
    type = "structure",
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
    members = {
        Earfcn = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Pci = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.LteNetworkMeasurements = {
    type = "structure",
    members = {
        Earfcn = {
            type = "number",
            traits = {
                required = true,
            },
        },
        CellId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Pci = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Rsrp = {
            type = "number",
        },
        Rsrq = {
            type = "number",
        },
    },
}

M.LteCellDetails = {
    type = "structure",
    members = {
        CellId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Mcc = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Mnc = {
            type = "number",
            traits = {
                required = true,
            },
        },
        LocalId = {
            type = "structure",
        },
        NetworkMeasurements = {
            type = "list",
            member_type = "structure",
        },
        TimingAdvance = {
            type = "number",
        },
        NrCapable = {
            type = "boolean",
        },
        Rsrp = {
            type = "number",
        },
        Rsrq = {
            type = "number",
        },
        Tac = {
            type = "number",
        },
    },
}

M.CellSignals = {
    type = "structure",
    members = {
        LteCellDetails = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.CreateGeofenceCollectionOutput = {
    type = "structure",
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
            },
        },
    },
}

M.MapConfiguration = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.CreateMapInput = {
    type = "structure",
    members = {
        MapName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Configuration = {
            type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateMapOutput = {
    type = "structure",
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
    members = {
        IntendedUse = {
            type = "string",
        },
    },
}

M.CreatePlaceIndexInput = {
    type = "structure",
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
        DataSourceConfiguration = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreatePlaceIndexOutput = {
    type = "structure",
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
            },
        },
    },
}

M.CreateRouteCalculatorInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateRouteCalculatorOutput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            },
        },
    },
}

M.DeleteGeofenceCollectionInput = {
    type = "structure",
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
}

M.DeleteMapInput = {
    type = "structure",
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
}

M.DeletePlaceIndexInput = {
    type = "structure",
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
}

M.DeleteRouteCalculatorInput = {
    type = "structure",
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
}

M.DeleteTrackerInput = {
    type = "structure",
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
}

M.DescribeGeofenceCollectionInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        GeofenceCount = {
            type = "number",
        },
    },
}

M.DescribeMapInput = {
    type = "structure",
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
        Configuration = {
            type = "structure",
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
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePlaceIndexInput = {
    type = "structure",
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
            },
        },
        UpdateTime = {
            type = "timestamp",
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
        DataSourceConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeRouteCalculatorInput = {
    type = "structure",
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
            },
        },
        UpdateTime = {
            type = "timestamp",
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
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeTrackerInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
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
    members = {
        MacAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rss = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DeviceState = {
    type = "structure",
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
            },
        },
        Position = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        Accuracy = {
            type = "structure",
        },
        Ipv4Address = {
            type = "string",
        },
        WiFiAccessPoints = {
            type = "list",
            member_type = "structure",
        },
        CellSignals = {
            type = "structure",
        },
    },
}

M.DisassociateTrackerConsumerInput = {
    type = "structure",
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
}

M.ForecastedGeofenceEventType = {
    ENTER = "ENTER",
    EXIT = "EXIT",
    IDLE = "IDLE",
}

M.ForecastedEvent = {
    type = "structure",
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
            type = "number",
            traits = {
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
        },
        GeofenceProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ForecastGeofenceEventsDeviceState = {
    type = "structure",
    members = {
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
    },
}

M.SpeedUnit = {
    KilometersPerHour = "KilometersPerHour",
    MilesPerHour = "MilesPerHour",
}

M.ForecastGeofenceEventsInput = {
    type = "structure",
    members = {
        CollectionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceState = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TimeHorizonMinutes = {
            type = "number",
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
            type = "number",
        },
    },
}

M.ForecastGeofenceEventsOutput = {
    type = "structure",
    members = {
        ForecastedEvents = {
            type = "list",
            member_type = "structure",
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
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.GetGeofenceInput = {
    type = "structure",
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
    members = {
        GeofenceId = {
            type = "string",
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
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        GeofenceProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListGeofenceCollectionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGeofenceCollectionsResponseEntry = {
    type = "structure",
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
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListGeofenceCollectionsOutput = {
    type = "structure",
    members = {
        Entries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListGeofenceResponseEntry = {
    type = "structure",
    members = {
        GeofenceId = {
            type = "string",
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
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        GeofenceProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListGeofencesOutput = {
    type = "structure",
    members = {
        Entries = {
            type = "list",
            member_type = "structure",
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
        Geometry = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        GeofenceProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PutGeofenceOutput = {
    type = "structure",
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
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGeofenceCollectionInput = {
    type = "structure",
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
            },
        },
    },
}

M.GetDevicePositionInput = {
    type = "structure",
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
    members = {
        DeviceId = {
            type = "string",
        },
        SampleTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ReceivedTime = {
            type = "timestamp",
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
        Accuracy = {
            type = "structure",
        },
        PositionProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetDevicePositionHistoryInput = {
    type = "structure",
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
        },
        EndTimeExclusive = {
            type = "timestamp",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.GetDevicePositionHistoryOutput = {
    type = "structure",
    members = {
        DevicePositions = {
            type = "list",
            member_type = "structure",
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
    members = {
        AdditionalFeatures = {
            type = "list",
            member_type = "string",
        },
    },
}

M.JobActionOptions = {
    type = "structure",
    members = {
        ValidateAddress = {
            type = "structure",
        },
    },
}

M.JobErrorCode = {
    VALIDATION_ERROR = "ValidationError",
    INTERNAL_SERVER_ERROR = "InternalServerError",
}

M.JobError = {
    type = "structure",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Messages = {
            type = "list",
            member_type = "string",
        },
    },
}

M.JobInputFormat = {
    PARQUET = "Parquet",
}

M.JobInputOptions = {
    type = "structure",
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
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionOptions = {
            type = "structure",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndedAt = {
            type = "timestamp",
        },
        Error = {
            type = "structure",
        },
        ExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputOptions = {
            type = "structure",
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
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        OutputOptions = {
            type = "structure",
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
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetMapGlyphsInput = {
    type = "structure",
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
    members = {
        Point = {
            type = "list",
            member_type = "number",
        },
    },
}

M.TimeZone = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Offset = {
            type = "number",
        },
    },
}

M.Place = {
    type = "structure",
    members = {
        Label = {
            type = "string",
        },
        Geometry = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        TimeZone = {
            type = "structure",
        },
        UnitType = {
            type = "string",
        },
        UnitNumber = {
            type = "string",
        },
        Categories = {
            type = "list",
            member_type = "string",
        },
        SupplementalCategories = {
            type = "list",
            member_type = "string",
        },
        SubMunicipality = {
            type = "string",
        },
    },
}

M.GetPlaceOutput = {
    type = "structure",
    members = {
        Place = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InferredState = {
    type = "structure",
    members = {
        Position = {
            type = "list",
            member_type = "number",
        },
        Accuracy = {
            type = "structure",
        },
        DeviationDistance = {
            type = "number",
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
    members = {
        JobStatus = {
            type = "string",
        },
    },
}

M.ListJobsInput = {
    type = "structure",
    members = {
        Filter = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListJobsResponseEntry = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionOptions = {
            type = "structure",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
        },
        Error = {
            type = "structure",
        },
        InputOptions = {
            type = "structure",
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
        JobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        OutputOptions = {
            type = "structure",
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
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
    members = {
        Entries = {
            type = "list",
            member_type = "structure",
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
    members = {
        ClientToken = {
            type = "string",
        },
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionOptions = {
            type = "structure",
        },
        ExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        OutputOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartJobOutput = {
    type = "structure",
    members = {
        CreatedAt = {
            type = "timestamp",
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
    members = {
        Polygon = {
            type = "list",
            member_type = "list",
        },
    },
}

M.ListDevicePositionsInput = {
    type = "structure",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        FilterGeometry = {
            type = "structure",
        },
    },
}

M.ListDevicePositionsResponseEntry = {
    type = "structure",
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
            },
        },
        Position = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        Accuracy = {
            type = "structure",
        },
        PositionProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListDevicePositionsOutput = {
    type = "structure",
    members = {
        Entries = {
            type = "list",
            member_type = "structure",
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
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMapsResponseEntry = {
    type = "structure",
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
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMapsOutput = {
    type = "structure",
    members = {
        Entries = {
            type = "list",
            member_type = "structure",
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
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPlaceIndexesResponseEntry = {
    type = "structure",
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
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPlaceIndexesOutput = {
    type = "structure",
    members = {
        Entries = {
            type = "list",
            member_type = "structure",
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
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRouteCalculatorsResponseEntry = {
    type = "structure",
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
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRouteCalculatorsOutput = {
    type = "structure",
    members = {
        Entries = {
            type = "list",
            member_type = "structure",
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
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTrackerConsumersOutput = {
    type = "structure",
    members = {
        ConsumerArns = {
            type = "list",
            member_type = "string",
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
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTrackersResponseEntry = {
    type = "structure",
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
            },
        },
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrackersOutput = {
    type = "structure",
    members = {
        Entries = {
            type = "list",
            member_type = "structure",
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
    members = {
        PoliticalView = {
            type = "string",
        },
        CustomLayers = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateMapInput = {
    type = "structure",
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
        ConfigurationUpdate = {
            type = "structure",
        },
    },
}

M.UpdateMapOutput = {
    type = "structure",
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
            },
        },
    },
}

M.SearchPlaceIndexForPositionInput = {
    type = "structure",
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
            member_type = "number",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
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
    members = {
        Place = {
            type = "structure",
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
        PlaceId = {
            type = "string",
        },
    },
}

M.SearchPlaceIndexForPositionSummary = {
    type = "structure",
    members = {
        Position = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
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
    members = {
        Summary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Results = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchPlaceIndexForSuggestionsInput = {
    type = "structure",
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
            member_type = "number",
        },
        FilterBBox = {
            type = "list",
            member_type = "number",
        },
        FilterCountries = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Language = {
            type = "string",
        },
        FilterCategories = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        SupplementalCategories = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SearchPlaceIndexForSuggestionsSummary = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BiasPosition = {
            type = "list",
            member_type = "number",
        },
        FilterBBox = {
            type = "list",
            member_type = "number",
        },
        FilterCountries = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
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
            member_type = "string",
        },
    },
}

M.SearchPlaceIndexForSuggestionsOutput = {
    type = "structure",
    members = {
        Summary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Results = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchPlaceIndexForTextInput = {
    type = "structure",
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
            member_type = "number",
        },
        FilterBBox = {
            type = "list",
            member_type = "number",
        },
        FilterCountries = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Language = {
            type = "string",
        },
        FilterCategories = {
            type = "list",
            member_type = "string",
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
    members = {
        Place = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Distance = {
            type = "number",
        },
        Relevance = {
            type = "number",
        },
        PlaceId = {
            type = "string",
        },
    },
}

M.SearchPlaceIndexForTextSummary = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BiasPosition = {
            type = "list",
            member_type = "number",
        },
        FilterBBox = {
            type = "list",
            member_type = "number",
        },
        FilterCountries = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        ResultBBox = {
            type = "list",
            member_type = "number",
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
            member_type = "string",
        },
    },
}

M.SearchPlaceIndexForTextOutput = {
    type = "structure",
    members = {
        Summary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Results = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePlaceIndexInput = {
    type = "structure",
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
        DataSourceConfiguration = {
            type = "structure",
        },
    },
}

M.UpdatePlaceIndexOutput = {
    type = "structure",
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
            },
        },
    },
}

M.UpdateRouteCalculatorInput = {
    type = "structure",
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
            },
        },
    },
}

M.UpdateTrackerInput = {
    type = "structure",
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
            },
        },
    },
}

M.VerifyDevicePositionInput = {
    type = "structure",
    members = {
        TrackerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceState = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DistanceUnit = {
            type = "string",
        },
    },
}

M.VerifyDevicePositionOutput = {
    type = "structure",
    members = {
        InferredState = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            },
        },
        ReceivedTime = {
            type = "timestamp",
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

return M
