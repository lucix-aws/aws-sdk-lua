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
            member = { type = "string" },
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
            member = { type = "string" },
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
            member = M.RecipeVersionErrorDetail,
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
            member = { type = "string" },
        },
        SheetIndexes = {
            type = "list",
            member = { type = "integer" },
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
            traits = {
                default = false,
            },
        },
    },
}

M.FormatOptions = {
    type = "structure",
    members = {
        Json = M.JsonOptions,
        Excel = M.ExcelOptions,
        Csv = M.CsvOptions,
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
        TempDirectory = M.S3Location,
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
        TempDirectory = M.S3Location,
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
        S3InputDefinition = M.S3Location,
        DataCatalogInputDefinition = M.DataCatalogInputDefinition,
        DatabaseInputDefinition = M.DatabaseInputDefinition,
        Metadata = M.Metadata,
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
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
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
        DatetimeOptions = M.DatetimeOptions,
        CreateColumn = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Filter = M.FilterExpression,
    },
}

M.PathOptions = {
    type = "structure",
    members = {
        LastModifiedDateCondition = M.FilterExpression,
        FilesLimit = M.FilesLimit,
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = M.DatasetParameter,
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
        FormatOptions = M.FormatOptions,
        Input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Input }),
        PathOptions = M.PathOptions,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
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
            member = { type = "string" },
        },
        Overrides = {
            type = "list",
            member = M.StatisticOverride,
        },
    },
}

M.ColumnStatisticsConfiguration = {
    type = "structure",
    members = {
        Selectors = {
            type = "list",
            member = M.ColumnSelector,
        },
        Statistics = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StatisticsConfiguration }),
    },
}

M.EntityDetectorConfiguration = {
    type = "structure",
    members = {
        EntityTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AllowedStatistics = {
            type = "list",
            member = M.AllowedStatistics,
        },
    },
}

M.ProfileConfiguration = {
    type = "structure",
    members = {
        DatasetStatisticsConfiguration = M.StatisticsConfiguration,
        ProfileColumns = {
            type = "list",
            member = M.ColumnSelector,
        },
        ColumnStatisticsConfigurations = {
            type = "list",
            member = M.ColumnStatisticsConfiguration,
        },
        EntityDetectorConfiguration = M.EntityDetectorConfiguration,
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
            type = "long",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MaxRetries = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        OutputLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
        Configuration = M.ProfileConfiguration,
        ValidationConfigurations = {
            type = "list",
            member = M.ValidationConfiguration,
        },
        RoleArn = {
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
        Timeout = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        JobSample = M.JobSample,
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
            type = "integer",
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
        Sample = M.Sample,
        RoleArn = {
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
            key = { type = "string" },
            value = { type = "string" },
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
        Action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecipeAction }),
        ConditionExpressions = {
            type = "list",
            member = M.ConditionExpression,
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
            member = M.RecipeStep,
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
        TempDirectory = M.S3Location,
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
        DatabaseOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatabaseTableOutputOptions }),
        DatabaseOutputMode = {
            type = "string",
        },
    },
}

M.S3TableOutputOptions = {
    type = "structure",
    members = {
        Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
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
        S3Options = M.S3TableOutputOptions,
        DatabaseOptions = M.DatabaseTableOutputOptions,
        Overwrite = {
            type = "boolean",
            traits = {
                default = false,
            },
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
        Csv = M.CsvOutputOptions,
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
            member = { type = "string" },
        },
        Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
        Overwrite = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        FormatOptions = M.OutputFormatOptions,
        MaxOutputFiles = {
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MaxRetries = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Outputs = {
            type = "list",
            member = M.Output,
        },
        DataCatalogOutputs = {
            type = "list",
            member = M.DataCatalogOutput,
        },
        DatabaseOutputs = {
            type = "list",
            member = M.DatabaseOutput,
        },
        ProjectName = {
            type = "string",
        },
        RecipeReference = M.RecipeReference,
        RoleArn = {
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
        Timeout = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "double",
            traits = {
                default = 0,
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
            traits = {
                default = false,
            },
        },
        CheckExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubstitutionMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Threshold = M.Threshold,
        ColumnSelectors = {
            type = "list",
            member = M.ColumnSelector,
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
            member = M.Rule,
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
            member = { type = "string" },
        },
        CronExpression = {
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
        FormatOptions = M.FormatOptions,
        Input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Input }),
        LastModifiedDate = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        PathOptions = M.PathOptions,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MaxRetries = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Outputs = {
            type = "list",
            member = M.Output,
        },
        DataCatalogOutputs = {
            type = "list",
            member = M.DataCatalogOutput,
        },
        DatabaseOutputs = {
            type = "list",
            member = M.DatabaseOutput,
        },
        ProjectName = {
            type = "string",
        },
        ProfileConfiguration = M.ProfileConfiguration,
        ValidationConfigurations = {
            type = "list",
            member = M.ValidationConfiguration,
        },
        RecipeReference = M.RecipeReference,
        ResourceArn = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Timeout = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        JobSample = M.JobSample,
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileConfiguration = M.ProfileConfiguration,
        ValidationConfigurations = {
            type = "list",
            member = M.ValidationConfiguration,
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
            member = M.Output,
        },
        DataCatalogOutputs = {
            type = "list",
            member = M.DataCatalogOutput,
        },
        DatabaseOutputs = {
            type = "list",
            member = M.DatabaseOutput,
        },
        RecipeReference = M.RecipeReference,
        StartedBy = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        JobSample = M.JobSample,
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
        Sample = M.Sample,
        RoleArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.RecipeStep,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.Rule,
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
            key = { type = "string" },
            value = { type = "string" },
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
            member = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
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
        FormatOptions = M.FormatOptions,
        Input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Input }),
        LastModifiedDate = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        PathOptions = M.PathOptions,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.Dataset,
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
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Output,
        },
        DataCatalogOutputs = {
            type = "list",
            member = M.DataCatalogOutput,
        },
        DatabaseOutputs = {
            type = "list",
            member = M.DatabaseOutput,
        },
        RecipeReference = M.RecipeReference,
        StartedBy = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        JobSample = M.JobSample,
        ValidationConfigurations = {
            type = "list",
            member = M.ValidationConfiguration,
        },
    },
}

M.ListJobRunsOutput = {
    type = "structure",
    members = {
        JobRuns = {
            type = "list",
            member = M.JobRun,
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
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MaxRetries = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Outputs = {
            type = "list",
            member = M.Output,
        },
        DataCatalogOutputs = {
            type = "list",
            member = M.DataCatalogOutput,
        },
        DatabaseOutputs = {
            type = "list",
            member = M.DatabaseOutput,
        },
        ProjectName = {
            type = "string",
        },
        RecipeReference = M.RecipeReference,
        ResourceArn = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        Timeout = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        JobSample = M.JobSample,
        ValidationConfigurations = {
            type = "list",
            member = M.ValidationConfiguration,
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
    members = {
        Jobs = {
            type = "list",
            member = M.Job,
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
            type = "integer",
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
        Sample = M.Sample,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.Project,
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
            type = "integer",
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
            member = M.RecipeStep,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.Recipe,
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
            type = "integer",
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
            member = M.Recipe,
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
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.RulesetItem,
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
            type = "integer",
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
            member = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.Schedule,
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        ColumnRange = {
            type = "integer",
        },
        HiddenColumns = {
            type = "list",
            member = { type = "string" },
        },
        StartRowIndex = {
            type = "integer",
        },
        RowRange = {
            type = "integer",
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
            traits = {
                default = false,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecipeStep = M.RecipeStep,
        StepIndex = {
            type = "integer",
        },
        ClientSessionId = {
            type = "string",
        },
        ViewFrame = M.ViewFrame,
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
            type = "integer",
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
            traits = {
                default = false,
            },
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
        FormatOptions = M.FormatOptions,
        Input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Input }),
        PathOptions = M.PathOptions,
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
        Configuration = M.ProfileConfiguration,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MaxRetries = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        OutputLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
        ValidationConfigurations = {
            type = "list",
            member = M.ValidationConfiguration,
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Timeout = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        JobSample = M.JobSample,
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
        Sample = M.Sample,
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
            member = M.RecipeStep,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MaxRetries = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Outputs = {
            type = "list",
            member = M.Output,
        },
        DataCatalogOutputs = {
            type = "list",
            member = M.DataCatalogOutput,
        },
        DatabaseOutputs = {
            type = "list",
            member = M.DatabaseOutput,
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Timeout = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Rule,
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
            member = { type = "string" },
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
