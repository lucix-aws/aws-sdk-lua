local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AlgorithmNameCloudRemoval = {
    INTERPOLATION = "INTERPOLATION",
}

M.AlgorithmNameGeoMosaic = {
    NEAR = "NEAR",
    BILINEAR = "BILINEAR",
    CUBIC = "CUBIC",
    CUBICSPLINE = "CUBICSPLINE",
    LANCZOS = "LANCZOS",
    AVERAGE = "AVERAGE",
    RMS = "RMS",
    MODE = "MODE",
    MAX = "MAX",
    MIN = "MIN",
    MED = "MED",
    Q1 = "Q1",
    Q3 = "Q3",
    SUM = "SUM",
}

M.AlgorithmNameResampling = {
    NEAR = "NEAR",
    BILINEAR = "BILINEAR",
    CUBIC = "CUBIC",
    CUBICSPLINE = "CUBICSPLINE",
    LANCZOS = "LANCZOS",
    AVERAGE = "AVERAGE",
    RMS = "RMS",
    MODE = "MODE",
    MAX = "MAX",
    MIN = "MIN",
    MED = "MED",
    Q1 = "Q1",
    Q3 = "Q3",
    SUM = "SUM",
}

M.MultiPolygonGeometryInput = {
    type = "structure",
    id = "MultiPolygonGeometryInput",
    members = {
        Coordinates = {
            type = "list",
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
    },
}

M.PolygonGeometryInput = {
    type = "structure",
    id = "PolygonGeometryInput",
    members = {
        Coordinates = {
            type = "list",
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
    },
}

M.AreaOfInterestGeometry = {
    type = "union",
    id = "AreaOfInterestGeometry",
    members = {
        PolygonGeometry = M.PolygonGeometryInput,
        MultiPolygonGeometry = M.MultiPolygonGeometryInput,
    },
}

M.AreaOfInterest = {
    type = "union",
    id = "AreaOfInterest",
    members = {
        AreaOfInterestGeometry = M.AreaOfInterestGeometry,
    },
}

M.AssetValue = {
    type = "structure",
    id = "AssetValue",
    members = {
        Href = {
            type = "string",
        },
    },
}

M.OutputType = {
    INT32 = "INT32",
    FLOAT32 = "FLOAT32",
    INT16 = "INT16",
    FLOAT64 = "FLOAT64",
    UINT16 = "UINT16",
}

M.Operation = {
    type = "structure",
    id = "Operation",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Equation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputType = {
            type = "string",
        },
    },
}

M.CustomIndicesInput = {
    type = "structure",
    id = "CustomIndicesInput",
    members = {
        Operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.BandMathConfigInput = {
    type = "structure",
    id = "BandMathConfigInput",
    members = {
        PredefinedIndices = {
            type = "list",
            member = { type = "string" },
        },
        CustomIndices = M.CustomIndicesInput,
    },
}

M.CloudMaskingConfigInput = {
    type = "structure",
    id = "CloudMaskingConfigInput",
}

M.CloudRemovalConfigInput = {
    type = "structure",
    id = "CloudRemovalConfigInput",
    members = {
        AlgorithmName = {
            type = "string",
        },
        InterpolationValue = {
            type = "string",
        },
        TargetBands = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ComparisonOperator = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    STARTS_WITH = "STARTS_WITH",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        Name = {
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
        Minimum = {
            type = "float",
        },
        Maximum = {
            type = "float",
        },
    },
}

M.DataCollectionType = {
    PUBLIC = "PUBLIC",
    PREMIUM = "PREMIUM",
    USER = "USER",
}

M.RasterDataCollectionMetadata = {
    type = "structure",
    id = "RasterDataCollectionMetadata",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
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
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DescriptionPageUrl = {
            type = "string",
        },
        SupportedFilters = {
            type = "list",
            member = M.Filter,
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

M.DeleteEarthObservationJobInput = {
    type = "structure",
    id = "DeleteEarthObservationJobInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEarthObservationJobOutput = {
    type = "structure",
    id = "DeleteEarthObservationJobOutput",
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
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
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
    },
}

M.DeleteVectorEnrichmentJobInput = {
    type = "structure",
    id = "DeleteVectorEnrichmentJobInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVectorEnrichmentJobOutput = {
    type = "structure",
    id = "DeleteVectorEnrichmentJobOutput",
}

M.ExportS3DataInput = {
    type = "structure",
    id = "ExportS3DataInput",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.OutputConfigInput = {
    type = "structure",
    id = "OutputConfigInput",
    members = {
        S3Data = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExportS3DataInput }),
    },
}

M.ExportEarthObservationJobInput = {
    type = "structure",
    id = "ExportEarthObservationJobInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputConfigInput }),
        ExportSourceImages = {
            type = "boolean",
        },
    },
}

M.EarthObservationJobExportStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.ExportEarthObservationJobOutput = {
    type = "structure",
    id = "ExportEarthObservationJobOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ExportStatus = {
            type = "string",
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
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputConfigInput }),
        ExportSourceImages = {
            type = "boolean",
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
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
    },
}

M.GetEarthObservationJobInput = {
    type = "structure",
    id = "GetEarthObservationJobInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EarthObservationJobErrorType = {
    CLIENT_ERROR = "CLIENT_ERROR",
    SERVER_ERROR = "SERVER_ERROR",
}

M.EarthObservationJobErrorDetails = {
    type = "structure",
    id = "EarthObservationJobErrorDetails",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ExportErrorType = {
    CLIENT_ERROR = "CLIENT_ERROR",
    SERVER_ERROR = "SERVER_ERROR",
}

M.ExportErrorDetailsOutput = {
    type = "structure",
    id = "ExportErrorDetailsOutput",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ExportErrorDetails = {
    type = "structure",
    id = "ExportErrorDetails",
    members = {
        ExportResults = M.ExportErrorDetailsOutput,
        ExportSourceImages = M.ExportErrorDetailsOutput,
    },
}

M.LogicalOperator = {
    AND = "AND",
}

M.EoCloudCoverInput = {
    type = "structure",
    id = "EoCloudCoverInput",
    members = {
        LowerBound = {
            type = "float",
            traits = {
                required = true,
            },
        },
        UpperBound = {
            type = "float",
            traits = {
                required = true,
            },
        },
    },
}

M.LandsatCloudCoverLandInput = {
    type = "structure",
    id = "LandsatCloudCoverLandInput",
    members = {
        LowerBound = {
            type = "float",
            traits = {
                required = true,
            },
        },
        UpperBound = {
            type = "float",
            traits = {
                required = true,
            },
        },
    },
}

M.PlatformInput = {
    type = "structure",
    id = "PlatformInput",
    members = {
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComparisonOperator = {
            type = "string",
        },
    },
}

M.ViewOffNadirInput = {
    type = "structure",
    id = "ViewOffNadirInput",
    members = {
        LowerBound = {
            type = "float",
            traits = {
                required = true,
            },
        },
        UpperBound = {
            type = "float",
            traits = {
                required = true,
            },
        },
    },
}

M.ViewSunAzimuthInput = {
    type = "structure",
    id = "ViewSunAzimuthInput",
    members = {
        LowerBound = {
            type = "float",
            traits = {
                required = true,
            },
        },
        UpperBound = {
            type = "float",
            traits = {
                required = true,
            },
        },
    },
}

M.ViewSunElevationInput = {
    type = "structure",
    id = "ViewSunElevationInput",
    members = {
        LowerBound = {
            type = "float",
            traits = {
                required = true,
            },
        },
        UpperBound = {
            type = "float",
            traits = {
                required = true,
            },
        },
    },
}

M.Property = {
    type = "union",
    id = "Property",
    members = {
        EoCloudCover = M.EoCloudCoverInput,
        ViewOffNadir = M.ViewOffNadirInput,
        ViewSunAzimuth = M.ViewSunAzimuthInput,
        ViewSunElevation = M.ViewSunElevationInput,
        Platform = M.PlatformInput,
        LandsatCloudCoverLand = M.LandsatCloudCoverLandInput,
    },
}

M.PropertyFilter = {
    type = "structure",
    id = "PropertyFilter",
    members = {
        Property = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Property }),
    },
}

M.PropertyFilters = {
    type = "structure",
    id = "PropertyFilters",
    members = {
        Properties = {
            type = "list",
            member = M.PropertyFilter,
        },
        LogicalOperator = {
            type = "string",
        },
    },
}

M.TimeRangeFilterOutput = {
    type = "structure",
    id = "TimeRangeFilterOutput",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.RasterDataCollectionQueryOutput = {
    type = "structure",
    id = "RasterDataCollectionQueryOutput",
    members = {
        RasterDataCollectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RasterDataCollectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeRangeFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimeRangeFilterOutput }),
        AreaOfInterest = M.AreaOfInterest,
        PropertyFilters = M.PropertyFilters,
    },
}

M.InputConfigOutput = {
    type = "structure",
    id = "InputConfigOutput",
    members = {
        PreviousEarthObservationJobArn = {
            type = "string",
        },
        RasterDataCollectionQuery = M.RasterDataCollectionQueryOutput,
    },
}

M.GeoMosaicConfigInput = {
    type = "structure",
    id = "GeoMosaicConfigInput",
    members = {
        AlgorithmName = {
            type = "string",
        },
        TargetBands = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.LandCoverSegmentationConfigInput = {
    type = "structure",
    id = "LandCoverSegmentationConfigInput",
}

M.Unit = {
    METERS = "METERS",
}

M.UserDefined = {
    type = "structure",
    id = "UserDefined",
    members = {
        Value = {
            type = "float",
            traits = {
                required = true,
            },
        },
        Unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OutputResolutionResamplingInput = {
    type = "structure",
    id = "OutputResolutionResamplingInput",
    members = {
        UserDefined = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserDefined }),
    },
}

M.ResamplingConfigInput = {
    type = "structure",
    id = "ResamplingConfigInput",
    members = {
        OutputResolution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputResolutionResamplingInput }),
        AlgorithmName = {
            type = "string",
        },
        TargetBands = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PredefinedResolution = {
    HIGHEST = "HIGHEST",
    LOWEST = "LOWEST",
    AVERAGE = "AVERAGE",
}

M.OutputResolutionStackInput = {
    type = "structure",
    id = "OutputResolutionStackInput",
    members = {
        Predefined = {
            type = "string",
        },
        UserDefined = M.UserDefined,
    },
}

M.StackConfigInput = {
    type = "structure",
    id = "StackConfigInput",
    members = {
        OutputResolution = M.OutputResolutionStackInput,
        TargetBands = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GroupBy = {
    ALL = "ALL",
    YEARLY = "YEARLY",
}

M.TemporalStatistics = {
    MEAN = "MEAN",
    MEDIAN = "MEDIAN",
    STANDARD_DEVIATION = "STANDARD_DEVIATION",
}

M.TemporalStatisticsConfigInput = {
    type = "structure",
    id = "TemporalStatisticsConfigInput",
    members = {
        GroupBy = {
            type = "string",
        },
        Statistics = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        TargetBands = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ZonalStatistics = {
    MEAN = "MEAN",
    MEDIAN = "MEDIAN",
    STANDARD_DEVIATION = "STANDARD_DEVIATION",
    MAX = "MAX",
    MIN = "MIN",
    SUM = "SUM",
}

M.ZonalStatisticsConfigInput = {
    type = "structure",
    id = "ZonalStatisticsConfigInput",
    members = {
        ZoneS3Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Statistics = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        TargetBands = {
            type = "list",
            member = { type = "string" },
        },
        ZoneS3PathKmsKeyId = {
            type = "string",
        },
    },
}

M.JobConfigInput = {
    type = "union",
    id = "JobConfigInput",
    members = {
        BandMathConfig = M.BandMathConfigInput,
        ResamplingConfig = M.ResamplingConfigInput,
        TemporalStatisticsConfig = M.TemporalStatisticsConfigInput,
        CloudRemovalConfig = M.CloudRemovalConfigInput,
        ZonalStatisticsConfig = M.ZonalStatisticsConfigInput,
        GeoMosaicConfig = M.GeoMosaicConfigInput,
        StackConfig = M.StackConfigInput,
        CloudMaskingConfig = M.CloudMaskingConfigInput,
        LandCoverSegmentationConfig = M.LandCoverSegmentationConfigInput,
    },
}

M.OutputBand = {
    type = "structure",
    id = "OutputBand",
    members = {
        BandName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputDataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EarthObservationJobStatus = {
    INITIALIZING = "INITIALIZING",
    IN_PROGRESS = "IN_PROGRESS",
    STOPPING = "STOPPING",
    COMPLETED = "COMPLETED",
    STOPPED = "STOPPED",
    FAILED = "FAILED",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.GetEarthObservationJobOutput = {
    type = "structure",
    id = "GetEarthObservationJobOutput",
    members = {
        Arn = {
            type = "string",
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
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        DurationInSeconds = {
            type = "integer",
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
        KmsKeyId = {
            type = "string",
        },
        InputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputConfigOutput }),
        JobConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobConfigInput }),
        OutputBands = {
            type = "list",
            member = M.OutputBand,
        },
        ExecutionRoleArn = {
            type = "string",
        },
        ErrorDetails = M.EarthObservationJobErrorDetails,
        ExportStatus = {
            type = "string",
        },
        ExportErrorDetails = M.ExportErrorDetails,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TargetOptions = {
    INPUT = "INPUT",
    OUTPUT = "OUTPUT",
}

M.GetTileInput = {
    type = "structure",
    id = "GetTileInput",
    members = {
        x = {
            type = "integer",
            traits = {
                http_label = true,
                required = true,
            },
        },
        y = {
            type = "integer",
            traits = {
                http_label = true,
                required = true,
            },
        },
        z = {
            type = "integer",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ImageAssets = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "ImageAssets",
                required = true,
            },
        },
        Target = {
            type = "string",
            traits = {
                http_query = "Target",
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                http_query = "Arn",
                required = true,
            },
        },
        ImageMask = {
            type = "boolean",
            traits = {
                http_query = "ImageMask",
            },
        },
        OutputFormat = {
            type = "string",
            traits = {
                http_query = "OutputFormat",
            },
        },
        TimeRangeFilter = {
            type = "string",
            traits = {
                http_query = "TimeRangeFilter",
            },
        },
        PropertyFilters = {
            type = "string",
            traits = {
                http_query = "PropertyFilters",
            },
        },
        OutputDataType = {
            type = "string",
            traits = {
                http_query = "OutputDataType",
            },
        },
        ExecutionRoleArn = {
            type = "string",
            traits = {
                http_query = "ExecutionRoleArn",
            },
        },
    },
}

M.GetTileOutput = {
    type = "structure",
    id = "GetTileOutput",
    members = {
        BinaryFile = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
                media_type = "application/x-binary",
            },
        },
    },
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.ListEarthObservationJobsInput = {
    type = "structure",
    id = "ListEarthObservationJobsInput",
    members = {
        StatusEquals = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListEarthObservationJobOutputConfig = {
    type = "structure",
    id = "ListEarthObservationJobOutputConfig",
    members = {
        Arn = {
            type = "string",
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
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        DurationInSeconds = {
            type = "integer",
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
        OperationType = {
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

M.ListEarthObservationJobsOutput = {
    type = "structure",
    id = "ListEarthObservationJobsOutput",
    members = {
        EarthObservationJobSummaries = {
            type = "list",
            member = M.ListEarthObservationJobOutputConfig,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TimeRangeFilterInput = {
    type = "structure",
    id = "TimeRangeFilterInput",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.RasterDataCollectionQueryInput = {
    type = "structure",
    id = "RasterDataCollectionQueryInput",
    members = {
        RasterDataCollectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeRangeFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimeRangeFilterInput }),
        AreaOfInterest = M.AreaOfInterest,
        PropertyFilters = M.PropertyFilters,
    },
}

M.InputConfigInput = {
    type = "structure",
    id = "InputConfigInput",
    members = {
        PreviousEarthObservationJobArn = {
            type = "string",
        },
        RasterDataCollectionQuery = M.RasterDataCollectionQueryInput,
    },
}

M.StartEarthObservationJobInput = {
    type = "structure",
    id = "StartEarthObservationJobInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        InputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputConfigInput }),
        JobConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobConfigInput }),
        ExecutionRoleArn = {
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

M.StartEarthObservationJobOutput = {
    type = "structure",
    id = "StartEarthObservationJobOutput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        DurationInSeconds = {
            type = "integer",
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
        KmsKeyId = {
            type = "string",
        },
        InputConfig = M.InputConfigOutput,
        JobConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobConfigInput }),
        ExecutionRoleArn = {
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

M.StopEarthObservationJobInput = {
    type = "structure",
    id = "StopEarthObservationJobInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopEarthObservationJobOutput = {
    type = "structure",
    id = "StopEarthObservationJobOutput",
}

M.VectorEnrichmentJobS3Data = {
    type = "structure",
    id = "VectorEnrichmentJobS3Data",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.ExportVectorEnrichmentJobOutputConfig = {
    type = "structure",
    id = "ExportVectorEnrichmentJobOutputConfig",
    members = {
        S3Data = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VectorEnrichmentJobS3Data }),
    },
}

M.ExportVectorEnrichmentJobInput = {
    type = "structure",
    id = "ExportVectorEnrichmentJobInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExportVectorEnrichmentJobOutputConfig }),
    },
}

M.VectorEnrichmentJobExportStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.ExportVectorEnrichmentJobOutput = {
    type = "structure",
    id = "ExportVectorEnrichmentJobOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
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
        ExportStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExportVectorEnrichmentJobOutputConfig }),
    },
}

M.Geometry = {
    type = "structure",
    id = "Geometry",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Coordinates = {
            type = "list",
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetRasterDataCollectionInput = {
    type = "structure",
    id = "GetRasterDataCollectionInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRasterDataCollectionOutput = {
    type = "structure",
    id = "GetRasterDataCollectionOutput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
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
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DescriptionPageUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupportedFilters = {
            type = "list",
            member = M.Filter,
            traits = {
                required = true,
            },
        },
        ImageSourceBands = {
            type = "list",
            member = { type = "string" },
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

M.GetVectorEnrichmentJobInput = {
    type = "structure",
    id = "GetVectorEnrichmentJobInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.VectorEnrichmentJobErrorType = {
    CLIENT_ERROR = "CLIENT_ERROR",
    SERVER_ERROR = "SERVER_ERROR",
}

M.VectorEnrichmentJobErrorDetails = {
    type = "structure",
    id = "VectorEnrichmentJobErrorDetails",
    members = {
        ErrorType = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.VectorEnrichmentJobExportErrorType = {
    CLIENT_ERROR = "CLIENT_ERROR",
    SERVER_ERROR = "SERVER_ERROR",
}

M.VectorEnrichmentJobExportErrorDetails = {
    type = "structure",
    id = "VectorEnrichmentJobExportErrorDetails",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.VectorEnrichmentJobDataSourceConfigInput = {
    type = "union",
    id = "VectorEnrichmentJobDataSourceConfigInput",
    members = {
        S3Data = M.VectorEnrichmentJobS3Data,
    },
}

M.VectorEnrichmentJobDocumentType = {
    CSV = "CSV",
}

M.VectorEnrichmentJobInputConfig = {
    type = "structure",
    id = "VectorEnrichmentJobInputConfig",
    members = {
        DocumentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VectorEnrichmentJobDataSourceConfigInput }),
    },
}

M.MapMatchingConfig = {
    type = "structure",
    id = "MapMatchingConfig",
    members = {
        IdAttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        YAttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        XAttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimestampAttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReverseGeocodingConfig = {
    type = "structure",
    id = "ReverseGeocodingConfig",
    members = {
        YAttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        XAttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VectorEnrichmentJobConfig = {
    type = "union",
    id = "VectorEnrichmentJobConfig",
    members = {
        ReverseGeocodingConfig = M.ReverseGeocodingConfig,
        MapMatchingConfig = M.MapMatchingConfig,
    },
}

M.VectorEnrichmentJobStatus = {
    INITIALIZING = "INITIALIZING",
    IN_PROGRESS = "IN_PROGRESS",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.VectorEnrichmentJobType = {
    REVERSE_GEOCODING = "REVERSE_GEOCODING",
    MAP_MATCHING = "MAP_MATCHING",
}

M.GetVectorEnrichmentJobOutput = {
    type = "structure",
    id = "GetVectorEnrichmentJobOutput",
    members = {
        Arn = {
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
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        DurationInSeconds = {
            type = "integer",
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
        KmsKeyId = {
            type = "string",
        },
        InputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VectorEnrichmentJobInputConfig }),
        JobConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VectorEnrichmentJobConfig }),
        ExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorDetails = M.VectorEnrichmentJobErrorDetails,
        ExportStatus = {
            type = "string",
        },
        ExportErrorDetails = M.VectorEnrichmentJobExportErrorDetails,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Properties = {
    type = "structure",
    id = "Properties",
    members = {
        EoCloudCover = {
            type = "float",
        },
        ViewOffNadir = {
            type = "float",
        },
        ViewSunAzimuth = {
            type = "float",
        },
        ViewSunElevation = {
            type = "float",
        },
        Platform = {
            type = "string",
        },
        LandsatCloudCoverLand = {
            type = "float",
        },
    },
}

M.ItemSource = {
    type = "structure",
    id = "ItemSource",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Geometry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Geometry }),
        Assets = {
            type = "map",
            key = { type = "string" },
            value = M.AssetValue,
        },
        DateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Properties = M.Properties,
    },
}

M.ListRasterDataCollectionsInput = {
    type = "structure",
    id = "ListRasterDataCollectionsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListRasterDataCollectionsOutput = {
    type = "structure",
    id = "ListRasterDataCollectionsOutput",
    members = {
        RasterDataCollectionSummaries = {
            type = "list",
            member = M.RasterDataCollectionMetadata,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
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

M.ListVectorEnrichmentJobOutputConfig = {
    type = "structure",
    id = "ListVectorEnrichmentJobOutputConfig",
    members = {
        Arn = {
            type = "string",
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
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        DurationInSeconds = {
            type = "integer",
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
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListVectorEnrichmentJobsInput = {
    type = "structure",
    id = "ListVectorEnrichmentJobsInput",
    members = {
        StatusEquals = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListVectorEnrichmentJobsOutput = {
    type = "structure",
    id = "ListVectorEnrichmentJobsOutput",
    members = {
        VectorEnrichmentJobSummaries = {
            type = "list",
            member = M.ListVectorEnrichmentJobOutputConfig,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RasterDataCollectionQueryWithBandFilterInput = {
    type = "structure",
    id = "RasterDataCollectionQueryWithBandFilterInput",
    members = {
        TimeRangeFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimeRangeFilterInput }),
        AreaOfInterest = M.AreaOfInterest,
        PropertyFilters = M.PropertyFilters,
        BandFilter = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SearchRasterDataCollectionInput = {
    type = "structure",
    id = "SearchRasterDataCollectionInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RasterDataCollectionQuery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RasterDataCollectionQueryWithBandFilterInput }),
        NextToken = {
            type = "string",
        },
    },
}

M.SearchRasterDataCollectionOutput = {
    type = "structure",
    id = "SearchRasterDataCollectionOutput",
    members = {
        ApproximateResultCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        Items = {
            type = "list",
            member = M.ItemSource,
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

M.StartVectorEnrichmentJobInput = {
    type = "structure",
    id = "StartVectorEnrichmentJobInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        InputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VectorEnrichmentJobInputConfig }),
        JobConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VectorEnrichmentJobConfig }),
        ExecutionRoleArn = {
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

M.StartVectorEnrichmentJobOutput = {
    type = "structure",
    id = "StartVectorEnrichmentJobOutput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
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
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        DurationInSeconds = {
            type = "integer",
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
        KmsKeyId = {
            type = "string",
        },
        InputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VectorEnrichmentJobInputConfig }),
        JobConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VectorEnrichmentJobConfig }),
        ExecutionRoleArn = {
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

M.StopVectorEnrichmentJobInput = {
    type = "structure",
    id = "StopVectorEnrichmentJobInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopVectorEnrichmentJobOutput = {
    type = "structure",
    id = "StopVectorEnrichmentJobOutput",
}

return M
