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
            member_type = "list",
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
            member_type = "list",
            traits = {
                required = true,
            },
        },
    },
}

M.AreaOfInterestGeometry = {
    type = "union",
    members = {
        PolygonGeometry = {
            type = "structure",
        },
        MultiPolygonGeometry = {
            type = "structure",
        },
    },
}

M.AreaOfInterest = {
    type = "union",
    members = {
        AreaOfInterestGeometry = {
            type = "union",
        },
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
            member_type = "structure",
        },
    },
}

M.BandMathConfigInput = {
    type = "structure",
    members = {
        PredefinedIndices = {
            type = "list",
            member_type = "string",
        },
        CustomIndices = {
            type = "structure",
        },
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
            member_type = "string",
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
            type = "number",
        },
        Maximum = {
            type = "number",
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
            member_type = "structure",
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
        S3Data = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ExportResults = {
            type = "structure",
        },
        ExportSourceImages = {
            type = "structure",
        },
    },
}

M.LogicalOperator = {
    AND = "AND",
}

M.EoCloudCoverInput = {
    type = "structure",
    members = {
        LowerBound = {
            type = "number",
            traits = {
                required = true,
            },
        },
        UpperBound = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        UpperBound = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        UpperBound = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        UpperBound = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        UpperBound = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.Property = {
    type = "union",
    members = {
        EoCloudCover = {
            type = "structure",
        },
        ViewOffNadir = {
            type = "structure",
        },
        ViewSunAzimuth = {
            type = "structure",
        },
        ViewSunElevation = {
            type = "structure",
        },
        Platform = {
            type = "structure",
        },
        LandsatCloudCoverLand = {
            type = "structure",
        },
    },
}

M.PropertyFilter = {
    type = "structure",
    members = {
        Property = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.PropertyFilters = {
    type = "structure",
    members = {
        Properties = {
            type = "list",
            member_type = "structure",
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
        TimeRangeFilter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AreaOfInterest = {
            type = "union",
        },
        PropertyFilters = {
            type = "structure",
        },
    },
}

M.InputConfigOutput = {
    type = "structure",
    members = {
        PreviousEarthObservationJobArn = {
            type = "string",
        },
        RasterDataCollectionQuery = {
            type = "structure",
        },
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
            member_type = "string",
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
            type = "number",
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
        UserDefined = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ResamplingConfigInput = {
    type = "structure",
    members = {
        OutputResolution = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AlgorithmName = {
            type = "string",
        },
        TargetBands = {
            type = "list",
            member_type = "string",
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
        UserDefined = {
            type = "structure",
        },
    },
}

M.StackConfigInput = {
    type = "structure",
    members = {
        OutputResolution = {
            type = "structure",
        },
        TargetBands = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        TargetBands = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        TargetBands = {
            type = "list",
            member_type = "string",
        },
        ZoneS3PathKmsKeyId = {
            type = "string",
        },
    },
}

M.JobConfigInput = {
    type = "union",
    members = {
        BandMathConfig = {
            type = "structure",
        },
        ResamplingConfig = {
            type = "structure",
        },
        TemporalStatisticsConfig = {
            type = "structure",
        },
        CloudRemovalConfig = {
            type = "structure",
        },
        ZonalStatisticsConfig = {
            type = "structure",
        },
        GeoMosaicConfig = {
            type = "structure",
        },
        StackConfig = {
            type = "structure",
        },
        CloudMaskingConfig = {
            type = "structure",
        },
        LandCoverSegmentationConfig = {
            type = "structure",
        },
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
            type = "number",
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
        InputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        JobConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        OutputBands = {
            type = "list",
            member_type = "structure",
        },
        ExecutionRoleArn = {
            type = "string",
        },
        ErrorDetails = {
            type = "structure",
        },
        ExportStatus = {
            type = "string",
        },
        ExportErrorDetails = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
            traits = {
                http_label = true,
                required = true,
            },
        },
        y = {
            type = "number",
            traits = {
                http_label = true,
                required = true,
            },
        },
        z = {
            type = "number",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ImageAssets = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListEarthObservationJobsOutput = {
    type = "structure",
    members = {
        EarthObservationJobSummaries = {
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
        TimeRangeFilter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AreaOfInterest = {
            type = "union",
        },
        PropertyFilters = {
            type = "structure",
        },
    },
}

M.InputConfigInput = {
    type = "structure",
    members = {
        PreviousEarthObservationJobArn = {
            type = "string",
        },
        RasterDataCollectionQuery = {
            type = "structure",
        },
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
        InputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        JobConfig = {
            type = "union",
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
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
        InputConfig = {
            type = "structure",
        },
        JobConfig = {
            type = "union",
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
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        S3Data = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "list",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ImageSourceBands = {
            type = "list",
            member_type = "string",
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
        S3Data = {
            type = "structure",
        },
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
        DataSourceConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        ReverseGeocodingConfig = {
            type = "structure",
        },
        MapMatchingConfig = {
            type = "structure",
        },
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
            type = "number",
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
        InputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        JobConfig = {
            type = "union",
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
        ErrorDetails = {
            type = "structure",
        },
        ExportStatus = {
            type = "string",
        },
        ExportErrorDetails = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.Properties = {
    type = "structure",
    members = {
        EoCloudCover = {
            type = "number",
        },
        ViewOffNadir = {
            type = "number",
        },
        ViewSunAzimuth = {
            type = "number",
        },
        ViewSunElevation = {
            type = "number",
        },
        Platform = {
            type = "string",
        },
        LandsatCloudCoverLand = {
            type = "number",
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
        Geometry = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Assets = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        DateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
    },
}

M.ListVectorEnrichmentJobsOutput = {
    type = "structure",
    members = {
        VectorEnrichmentJobSummaries = {
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

M.RasterDataCollectionQueryWithBandFilterInput = {
    type = "structure",
    members = {
        TimeRangeFilter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AreaOfInterest = {
            type = "union",
        },
        PropertyFilters = {
            type = "structure",
        },
        BandFilter = {
            type = "list",
            member_type = "string",
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
        RasterDataCollectionQuery = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SearchRasterDataCollectionOutput = {
    type = "structure",
    members = {
        ApproximateResultCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        Items = {
            type = "list",
            member_type = "structure",
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
        InputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        JobConfig = {
            type = "union",
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
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
        InputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        JobConfig = {
            type = "union",
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
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
