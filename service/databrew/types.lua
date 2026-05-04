local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AllowedStatistics = {
    type = "structure",
    members = {
        Statistics = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalyticsMode = {
    ENABLE = "ENABLE",
    DISABLE = "DISABLE",
}

M.BatchDeleteRecipeVersionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecipeVersions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecipeVersionErrorDetail = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        RecipeVersion = {
            type = "string",
        },
    },
}

M.BatchDeleteRecipeVersionOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
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
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InputFormat = {
    CSV = "CSV",
    JSON = "JSON",
    PARQUET = "PARQUET",
    EXCEL = "EXCEL",
    ORC = "ORC",
}

M.CsvOptions = {
    type = "structure",
    members = {
        Delimiter = {
            type = "string",
        },
        HeaderRow = {
            type = "boolean",
        },
    },
}

M.ExcelOptions = {
    type = "structure",
    members = {
        SheetNames = {
            type = "list",
            member_type = "string",
        },
        SheetIndexes = {
            type = "list",
            member_type = "number",
        },
        HeaderRow = {
            type = "boolean",
        },
    },
}

M.JsonOptions = {
    type = "structure",
    members = {
        MultiLine = {
            type = "boolean",
        },
    },
}

M.FormatOptions = {
    type = "structure",
    members = {
        Json = {
            type = "structure",
        },
        Excel = {
            type = "structure",
        },
        Csv = {
            type = "structure",
        },
    },
}

M.S3Location = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Key = {
            type = "string",
        },
        BucketOwner = {
            type = "string",
        },
    },
}

M.DatabaseInputDefinition = {
    type = "structure",
    members = {
        GlueConnectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseTableName = {
            type = "string",
        },
        TempDirectory = {
            type = "structure",
        },
        QueryString = {
            type = "string",
        },
    },
}

M.DataCatalogInputDefinition = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TempDirectory = {
            type = "structure",
        },
    },
}

M.Metadata = {
    type = "structure",
    members = {
        SourceArn = {
            type = "string",
        },
    },
}

M.Input = {
    type = "structure",
    members = {
        S3InputDefinition = {
            type = "structure",
        },
        DataCatalogInputDefinition = {
            type = "structure",
        },
        DatabaseInputDefinition = {
            type = "structure",
        },
        Metadata = {
            type = "structure",
        },
    },
}

M.Order = {
    DESCENDING = "DESCENDING",
    ASCENDING = "ASCENDING",
}

M.OrderedBy = {
    LAST_MODIFIED_DATE = "LAST_MODIFIED_DATE",
}

M.FilesLimit = {
    type = "structure",
    members = {
        MaxFiles = {
            type = "number",
            traits = {
                required = true,
            },
        },
        OrderedBy = {
            type = "string",
        },
        Order = {
            type = "string",
        },
    },
}

M.FilterExpression = {
    type = "structure",
    members = {
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValuesMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatetimeOptions = {
    type = "structure",
    members = {
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimezoneOffset = {
            type = "string",
        },
        LocaleCode = {
            type = "string",
        },
    },
}

M.ParameterType = {
    Datetime = "Datetime",
    Number = "Number",
    String = "String",
}

M.DatasetParameter = {
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
        DatetimeOptions = {
            type = "structure",
        },
        CreateColumn = {
            type = "boolean",
        },
        Filter = {
            type = "structure",
        },
    },
}

M.PathOptions = {
    type = "structure",
    members = {
        LastModifiedDateCondition = {
            type = "structure",
        },
        FilesLimit = {
            type = "structure",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.CreateDatasetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Format = {
            type = "string",
        },
        FormatOptions = {
            type = "structure",
        },
        Input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PathOptions = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateDatasetOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
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
        },
    },
}

M.ColumnSelector = {
    type = "structure",
    members = {
        Regex = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.StatisticOverride = {
    type = "structure",
    members = {
        Statistic = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StatisticsConfiguration = {
    type = "structure",
    members = {
        IncludedStatistics = {
            type = "list",
            member_type = "string",
        },
        Overrides = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ColumnStatisticsConfiguration = {
    type = "structure",
    members = {
        Selectors = {
            type = "list",
            member_type = "structure",
        },
        Statistics = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EntityDetectorConfiguration = {
    type = "structure",
    members = {
        EntityTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AllowedStatistics = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ProfileConfiguration = {
    type = "structure",
    members = {
        DatasetStatisticsConfiguration = {
            type = "structure",
        },
        ProfileColumns = {
            type = "list",
            member_type = "structure",
        },
        ColumnStatisticsConfigurations = {
            type = "list",
            member_type = "structure",
        },
        EntityDetectorConfiguration = {
            type = "structure",
        },
    },
}

M.EncryptionMode = {
    SSEKMS = "SSE-KMS",
    SSES3 = "SSE-S3",
}

M.SampleMode = {
    FULL_DATASET = "FULL_DATASET",
    CUSTOM_ROWS = "CUSTOM_ROWS",
}

M.JobSample = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
        },
        Size = {
            type = "number",
        },
    },
}

M.LogSubscription = {
    ENABLE = "ENABLE",
    DISABLE = "DISABLE",
}

M.ValidationMode = {
    CHECK_ALL = "CHECK_ALL",
}

M.ValidationConfiguration = {
    type = "structure",
    members = {
        RulesetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidationMode = {
            type = "string",
        },
    },
}

M.CreateProfileJobInput = {
    type = "structure",
    members = {
        DatasetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionKeyArn = {
            type = "string",
        },
        EncryptionMode = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogSubscription = {
            type = "string",
        },
        MaxCapacity = {
            type = "number",
        },
        MaxRetries = {
            type = "number",
        },
        OutputLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Configuration = {
            type = "structure",
        },
        ValidationConfigurations = {
            type = "list",
            member_type = "structure",
        },
        RoleArn = {
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
        Timeout = {
            type = "number",
        },
        JobSample = {
            type = "structure",
        },
    },
}

M.CreateProfileJobOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SampleType = {
    FIRST_N = "FIRST_N",
    LAST_N = "LAST_N",
    RANDOM = "RANDOM",
}

M.Sample = {
    type = "structure",
    members = {
        Size = {
            type = "number",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateProjectInput = {
    type = "structure",
    members = {
        DatasetName = {
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
        RecipeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Sample = {
            type = "structure",
        },
        RoleArn = {
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

M.CreateProjectOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
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
        },
    },
}

M.RecipeAction = {
    type = "structure",
    members = {
        Operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ConditionExpression = {
    type = "structure",
    members = {
        Condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
        TargetColumn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecipeStep = {
    type = "structure",
    members = {
        Action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ConditionExpressions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateRecipeInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Steps = {
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

M.CreateRecipeOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatabaseTableOutputOptions = {
    type = "structure",
    members = {
        TempDirectory = {
            type = "structure",
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatabaseOutputMode = {
    NEW_TABLE = "NEW_TABLE",
}

M.DatabaseOutput = {
    type = "structure",
    members = {
        GlueConnectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DatabaseOutputMode = {
            type = "string",
        },
    },
}

M.S3TableOutputOptions = {
    type = "structure",
    members = {
        Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DataCatalogOutput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Options = {
            type = "structure",
        },
        DatabaseOptions = {
            type = "structure",
        },
        Overwrite = {
            type = "boolean",
        },
    },
}

M.CompressionFormat = {
    GZIP = "GZIP",
    LZ4 = "LZ4",
    SNAPPY = "SNAPPY",
    BZIP2 = "BZIP2",
    DEFLATE = "DEFLATE",
    LZO = "LZO",
    BROTLI = "BROTLI",
    ZSTD = "ZSTD",
    ZLIB = "ZLIB",
}

M.OutputFormat = {
    CSV = "CSV",
    JSON = "JSON",
    PARQUET = "PARQUET",
    GLUEPARQUET = "GLUEPARQUET",
    AVRO = "AVRO",
    ORC = "ORC",
    XML = "XML",
    TABLEAUHYPER = "TABLEAUHYPER",
}

M.CsvOutputOptions = {
    type = "structure",
    members = {
        Delimiter = {
            type = "string",
        },
    },
}

M.OutputFormatOptions = {
    type = "structure",
    members = {
        Csv = {
            type = "structure",
        },
    },
}

M.Output = {
    type = "structure",
    members = {
        CompressionFormat = {
            type = "string",
        },
        Format = {
            type = "string",
        },
        PartitionColumns = {
            type = "list",
            member_type = "string",
        },
        Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Overwrite = {
            type = "boolean",
        },
        FormatOptions = {
            type = "structure",
        },
        MaxOutputFiles = {
            type = "number",
        },
    },
}

M.RecipeReference = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecipeVersion = {
            type = "string",
        },
    },
}

M.CreateRecipeJobInput = {
    type = "structure",
    members = {
        DatasetName = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        EncryptionMode = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogSubscription = {
            type = "string",
        },
        MaxCapacity = {
            type = "number",
        },
        MaxRetries = {
            type = "number",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
        },
        DataCatalogOutputs = {
            type = "list",
            member_type = "structure",
        },
        DatabaseOutputs = {
            type = "list",
            member_type = "structure",
        },
        ProjectName = {
            type = "string",
        },
        RecipeReference = {
            type = "structure",
        },
        RoleArn = {
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
        Timeout = {
            type = "number",
        },
    },
}

M.CreateRecipeJobOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThresholdType = {
    GREATER_THAN_OR_EQUAL = "GREATER_THAN_OR_EQUAL",
    LESS_THAN_OR_EQUAL = "LESS_THAN_OR_EQUAL",
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN = "LESS_THAN",
}

M.ThresholdUnit = {
    COUNT = "COUNT",
    PERCENTAGE = "PERCENTAGE",
}

M.Threshold = {
    type = "structure",
    members = {
        Value = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
    },
}

M.Rule = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Disabled = {
            type = "boolean",
        },
        CheckExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubstitutionMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Threshold = {
            type = "structure",
        },
        ColumnSelectors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateRulesetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        TargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rules = {
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

M.CreateRulesetOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateScheduleInput = {
    type = "structure",
    members = {
        JobNames = {
            type = "list",
            member_type = "string",
        },
        CronExpression = {
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
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateScheduleOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDatasetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDatasetOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteJobInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteJobOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProjectInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProjectOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRecipeVersionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecipeVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRecipeVersionOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecipeVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRulesetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRulesetOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteScheduleInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteScheduleOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDatasetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Source = {
    S3 = "S3",
    DATACATALOG = "DATA-CATALOG",
    DATABASE = "DATABASE",
}

M.DescribeDatasetOutput = {
    type = "structure",
    members = {
        CreatedBy = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Format = {
            type = "string",
        },
        FormatOptions = {
            type = "structure",
        },
        Input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        PathOptions = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ResourceArn = {
            type = "string",
        },
    },
}

M.DescribeJobInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.JobType = {
    PROFILE = "PROFILE",
    RECIPE = "RECIPE",
}

M.DescribeJobOutput = {
    type = "structure",
    members = {
        CreateDate = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
        DatasetName = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        EncryptionMode = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        LogSubscription = {
            type = "string",
        },
        MaxCapacity = {
            type = "number",
        },
        MaxRetries = {
            type = "number",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
        },
        DataCatalogOutputs = {
            type = "list",
            member_type = "structure",
        },
        DatabaseOutputs = {
            type = "list",
            member_type = "structure",
        },
        ProjectName = {
            type = "string",
        },
        ProfileConfiguration = {
            type = "structure",
        },
        ValidationConfigurations = {
            type = "list",
            member_type = "structure",
        },
        RecipeReference = {
            type = "structure",
        },
        ResourceArn = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Timeout = {
            type = "number",
        },
        JobSample = {
            type = "structure",
        },
    },
}

M.DescribeJobRunInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.JobRunState = {
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMEOUT = "TIMEOUT",
}

M.DescribeJobRunOutput = {
    type = "structure",
    members = {
        Attempt = {
            type = "number",
        },
        CompletedOn = {
            type = "timestamp",
        },
        DatasetName = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        ExecutionTime = {
            type = "number",
        },
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileConfiguration = {
            type = "structure",
        },
        ValidationConfigurations = {
            type = "list",
            member_type = "structure",
        },
        RunId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        LogSubscription = {
            type = "string",
        },
        LogGroupName = {
            type = "string",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
        },
        DataCatalogOutputs = {
            type = "list",
            member_type = "structure",
        },
        DatabaseOutputs = {
            type = "list",
            member_type = "structure",
        },
        RecipeReference = {
            type = "structure",
        },
        StartedBy = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        JobSample = {
            type = "structure",
        },
    },
}

M.DescribeProjectInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SessionStatus = {
    ASSIGNED = "ASSIGNED",
    FAILED = "FAILED",
    INITIALIZING = "INITIALIZING",
    PROVISIONING = "PROVISIONING",
    READY = "READY",
    RECYCLING = "RECYCLING",
    ROTATING = "ROTATING",
    TERMINATED = "TERMINATED",
    TERMINATING = "TERMINATING",
    UPDATING = "UPDATING",
}

M.DescribeProjectOutput = {
    type = "structure",
    members = {
        CreateDate = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
        DatasetName = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecipeName = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        Sample = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SessionStatus = {
            type = "string",
        },
        OpenedBy = {
            type = "string",
        },
        OpenDate = {
            type = "timestamp",
        },
    },
}

M.DescribeRecipeInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecipeVersion = {
            type = "string",
            traits = {
                http_query = "recipeVersion",
            },
        },
    },
}

M.DescribeRecipeOutput = {
    type = "structure",
    members = {
        CreatedBy = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        ProjectName = {
            type = "string",
        },
        PublishedBy = {
            type = "string",
        },
        PublishedDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Steps = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        RecipeVersion = {
            type = "string",
        },
    },
}

M.DescribeRulesetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeRulesetOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        TargetArn = {
            type = "string",
        },
        Rules = {
            type = "list",
            member_type = "structure",
        },
        CreateDate = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        ResourceArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeScheduleInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeScheduleOutput = {
    type = "structure",
    members = {
        CreateDate = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
        JobNames = {
            type = "list",
            member_type = "string",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        ResourceArn = {
            type = "string",
        },
        CronExpression = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDatasetsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.Dataset = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        CreatedBy = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Format = {
            type = "string",
        },
        FormatOptions = {
            type = "structure",
        },
        Input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        PathOptions = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ResourceArn = {
            type = "string",
        },
    },
}

M.ListDatasetsOutput = {
    type = "structure",
    members = {
        Datasets = {
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

M.ListJobRunsInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.JobRun = {
    type = "structure",
    members = {
        Attempt = {
            type = "number",
        },
        CompletedOn = {
            type = "timestamp",
        },
        DatasetName = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        ExecutionTime = {
            type = "number",
        },
        JobName = {
            type = "string",
        },
        RunId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        LogSubscription = {
            type = "string",
        },
        LogGroupName = {
            type = "string",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
        },
        DataCatalogOutputs = {
            type = "list",
            member_type = "structure",
        },
        DatabaseOutputs = {
            type = "list",
            member_type = "structure",
        },
        RecipeReference = {
            type = "structure",
        },
        StartedBy = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        JobSample = {
            type = "structure",
        },
        ValidationConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListJobRunsOutput = {
    type = "structure",
    members = {
        JobRuns = {
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

M.ListJobsInput = {
    type = "structure",
    members = {
        DatasetName = {
            type = "string",
            traits = {
                http_query = "datasetName",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        ProjectName = {
            type = "string",
            traits = {
                http_query = "projectName",
            },
        },
    },
}

M.Job = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        CreatedBy = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        DatasetName = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        EncryptionMode = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        LogSubscription = {
            type = "string",
        },
        MaxCapacity = {
            type = "number",
        },
        MaxRetries = {
            type = "number",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
        },
        DataCatalogOutputs = {
            type = "list",
            member_type = "structure",
        },
        DatabaseOutputs = {
            type = "list",
            member_type = "structure",
        },
        ProjectName = {
            type = "string",
        },
        RecipeReference = {
            type = "structure",
        },
        ResourceArn = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        Timeout = {
            type = "number",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        JobSample = {
            type = "structure",
        },
        ValidationConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
    members = {
        Jobs = {
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

M.ListProjectsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.Project = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
        DatasetName = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecipeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
        },
        Sample = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        RoleArn = {
            type = "string",
        },
        OpenedBy = {
            type = "string",
        },
        OpenDate = {
            type = "timestamp",
        },
    },
}

M.ListProjectsOutput = {
    type = "structure",
    members = {
        Projects = {
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

M.ListRecipesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        RecipeVersion = {
            type = "string",
            traits = {
                http_query = "recipeVersion",
            },
        },
    },
}

M.Recipe = {
    type = "structure",
    members = {
        CreatedBy = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        ProjectName = {
            type = "string",
        },
        PublishedBy = {
            type = "string",
        },
        PublishedDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
        },
        Steps = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        RecipeVersion = {
            type = "string",
        },
    },
}

M.ListRecipesOutput = {
    type = "structure",
    members = {
        Recipes = {
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

M.ListRecipeVersionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        Name = {
            type = "string",
            traits = {
                http_query = "name",
                required = true,
            },
        },
    },
}

M.ListRecipeVersionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Recipes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRulesetsInput = {
    type = "structure",
    members = {
        TargetArn = {
            type = "string",
            traits = {
                http_query = "targetArn",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.RulesetItem = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        CreatedBy = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
        },
        RuleCount = {
            type = "number",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        TargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRulesetsOutput = {
    type = "structure",
    members = {
        Rulesets = {
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

M.ListSchedulesInput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
            traits = {
                http_query = "jobName",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.Schedule = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        CreatedBy = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        JobNames = {
            type = "list",
            member_type = "string",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        ResourceArn = {
            type = "string",
        },
        CronExpression = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSchedulesOutput = {
    type = "structure",
    members = {
        Schedules = {
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

M.PublishRecipeInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PublishRecipeOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ViewFrame = {
    type = "structure",
    members = {
        StartColumnIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ColumnRange = {
            type = "number",
        },
        HiddenColumns = {
            type = "list",
            member_type = "string",
        },
        StartRowIndex = {
            type = "number",
        },
        RowRange = {
            type = "number",
        },
        Analytics = {
            type = "string",
        },
    },
}

M.SendProjectSessionActionInput = {
    type = "structure",
    members = {
        Preview = {
            type = "boolean",
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecipeStep = {
            type = "structure",
        },
        StepIndex = {
            type = "number",
        },
        ClientSessionId = {
            type = "string",
        },
        ViewFrame = {
            type = "structure",
        },
    },
}

M.SendProjectSessionActionOutput = {
    type = "structure",
    members = {
        Result = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionId = {
            type = "number",
        },
    },
}

M.StartJobRunInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartJobRunOutput = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartProjectSessionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssumeControl = {
            type = "boolean",
        },
    },
}

M.StartProjectSessionOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientSessionId = {
            type = "string",
        },
    },
}

M.StopJobRunInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopJobRunOutput = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
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

M.UpdateDatasetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Format = {
            type = "string",
        },
        FormatOptions = {
            type = "structure",
        },
        Input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PathOptions = {
            type = "structure",
        },
    },
}

M.UpdateDatasetOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProfileJobInput = {
    type = "structure",
    members = {
        Configuration = {
            type = "structure",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        EncryptionMode = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LogSubscription = {
            type = "string",
        },
        MaxCapacity = {
            type = "number",
        },
        MaxRetries = {
            type = "number",
        },
        OutputLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ValidationConfigurations = {
            type = "list",
            member_type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Timeout = {
            type = "number",
        },
        JobSample = {
            type = "structure",
        },
    },
}

M.UpdateProfileJobOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProjectInput = {
    type = "structure",
    members = {
        Sample = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateProjectOutput = {
    type = "structure",
    members = {
        LastModifiedDate = {
            type = "timestamp",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRecipeInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Steps = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateRecipeOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRecipeJobInput = {
    type = "structure",
    members = {
        EncryptionKeyArn = {
            type = "string",
        },
        EncryptionMode = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LogSubscription = {
            type = "string",
        },
        MaxCapacity = {
            type = "number",
        },
        MaxRetries = {
            type = "number",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
        },
        DataCatalogOutputs = {
            type = "list",
            member_type = "structure",
        },
        DatabaseOutputs = {
            type = "list",
            member_type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Timeout = {
            type = "number",
        },
    },
}

M.UpdateRecipeJobOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRulesetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRulesetOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateScheduleInput = {
    type = "structure",
    members = {
        JobNames = {
            type = "list",
            member_type = "string",
        },
        CronExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateScheduleOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

return M
