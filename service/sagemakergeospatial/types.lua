local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        PolygonGeometry = M.PolygonGeometryInput,
        MultiPolygonGeometry = M.MultiPolygonGeometryInput,
    },
}

M.AreaOfInterest = {
    type = "union",
    members = {
        AreaOfInterestGeometry = M.AreaOfInterestGeometry,
    },
}

M.AssetValue = {
    type = "structure",
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
    members = {
        Operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.BandMathConfigInput = {
    type = "structure",
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
}

M.CloudRemovalConfigInput = {
    type = "structure",
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
}

M.InternalServerException = {
    type = "structure",
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
}

M.ExportS3DataInput = {
    type = "structure",
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
    members = {
        S3Data = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExportS3DataInput }),
    },
}

M.ExportEarthObservationJobInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
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
    members = {
        Property = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Property }),
    },
}

M.PropertyFilters = {
    type = "structure",
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
    members = {
        PreviousEarthObservationJobArn = {
            type = "string",
        },
        RasterDataCollectionQuery = M.RasterDataCollectionQueryOutput,
    },
}

M.GeoMosaicConfigInput = {
    type = "structure",
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
}

M.Unit = {
    METERS = "METERS",
}

M.UserDefined = {
    type = "structure",
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
    members = {
        UserDefined = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserDefined }),
    },
}

M.ResamplingConfigInput = {
    type = "structure",
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
    members = {
        Predefined = {
            type = "string",
        },
        UserDefined = M.UserDefined,
    },
}

M.StackConfigInput = {
    type = "structure",
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
    members = {
        BinaryFile = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
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
    members = {
        PreviousEarthObservationJobArn = {
            type = "string",
        },
        RasterDataCollectionQuery = M.RasterDataCollectionQueryInput,
    },
}

M.StartEarthObservationJobInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
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
}

M.VectorEnrichmentJobS3Data = {
    type = "structure",
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
    members = {
        S3Data = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VectorEnrichmentJobS3Data }),
    },
}

M.ExportVectorEnrichmentJobInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
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
    members = {
        S3Data = M.VectorEnrichmentJobS3Data,
    },
}

M.VectorEnrichmentJobDocumentType = {
    CSV = "CSV",
}

M.VectorEnrichmentJobInputConfig = {
    type = "structure",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListVectorEnrichmentJobOutputConfig = {
    type = "structure",
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
}

M.StartVectorEnrichmentJobInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
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
}

return M
