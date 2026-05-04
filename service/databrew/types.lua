local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AllowedStatistics = {
    type = "structure",
    id = "AllowedStatistics",
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
    id = "BatchDeleteRecipeVersionInput",
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
    id = "RecipeVersionErrorDetail",
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
    id = "BatchDeleteRecipeVersionOutput",
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
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
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
    id = "CsvOptions",
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
    id = "ExcelOptions",
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
    id = "JsonOptions",
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
    id = "FormatOptions",
    members = {
        Json = M.JsonOptions,
        Excel = M.ExcelOptions,
        Csv = M.CsvOptions,
    },
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
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
    id = "DatabaseInputDefinition",
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
    id = "DataCatalogInputDefinition",
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
    id = "Metadata",
    members = {
        SourceArn = {
            type = "string",
        },
    },
}

M.Input = {
    type = "structure",
    id = "Input",
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
    id = "FilesLimit",
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
    id = "FilterExpression",
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
    id = "DatetimeOptions",
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
    id = "DatasetParameter",
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
    id = "PathOptions",
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
    id = "CreateDatasetInput",
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
    id = "CreateDatasetOutput",
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
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ColumnSelector = {
    type = "structure",
    id = "ColumnSelector",
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
    id = "StatisticOverride",
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
    id = "StatisticsConfiguration",
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
    id = "ColumnStatisticsConfiguration",
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
    id = "EntityDetectorConfiguration",
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
    id = "ProfileConfiguration",
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
    id = "JobSample",
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
    id = "ValidationConfiguration",
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
    id = "CreateProfileJobInput",
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
    id = "CreateProfileJobOutput",
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
    id = "Sample",
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
    id = "CreateProjectInput",
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
    id = "CreateProjectOutput",
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
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RecipeAction = {
    type = "structure",
    id = "RecipeAction",
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
    id = "ConditionExpression",
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
    id = "RecipeStep",
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
    id = "CreateRecipeInput",
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
    id = "CreateRecipeOutput",
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
    id = "DatabaseTableOutputOptions",
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
    id = "DatabaseOutput",
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
    id = "S3TableOutputOptions",
    members = {
        Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
    },
}

M.DataCatalogOutput = {
    type = "structure",
    id = "DataCatalogOutput",
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
    id = "CsvOutputOptions",
    members = {
        Delimiter = {
            type = "string",
        },
    },
}

M.OutputFormatOptions = {
    type = "structure",
    id = "OutputFormatOptions",
    members = {
        Csv = M.CsvOutputOptions,
    },
}

M.Output = {
    type = "structure",
    id = "Output",
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
    id = "RecipeReference",
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
    id = "CreateRecipeJobInput",
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
    id = "CreateRecipeJobOutput",
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
    id = "Threshold",
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
    id = "Rule",
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
    id = "CreateRulesetInput",
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
    id = "CreateRulesetOutput",
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
    id = "CreateScheduleInput",
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
    id = "CreateScheduleOutput",
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
    id = "DeleteDatasetInput",
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
    id = "DeleteDatasetOutput",
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
    id = "DeleteJobInput",
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
    id = "DeleteJobOutput",
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
    id = "DeleteProjectInput",
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
    id = "DeleteProjectOutput",
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
    id = "DeleteRecipeVersionInput",
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
    id = "DeleteRecipeVersionOutput",
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
    id = "DeleteRulesetInput",
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
    id = "DeleteRulesetOutput",
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
    id = "DeleteScheduleInput",
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
    id = "DeleteScheduleOutput",
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
    id = "DescribeDatasetInput",
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
    id = "DescribeDatasetOutput",
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
    id = "DescribeJobInput",
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
    id = "DescribeJobOutput",
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
    id = "DescribeJobRunInput",
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
    id = "DescribeJobRunOutput",
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
    id = "DescribeProjectInput",
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
    id = "DescribeProjectOutput",
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
    id = "DescribeRecipeInput",
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
    id = "DescribeRecipeOutput",
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
    id = "DescribeRulesetInput",
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
    id = "DescribeRulesetOutput",
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
    id = "DescribeScheduleInput",
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
    id = "DescribeScheduleOutput",
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
    id = "ListDatasetsInput",
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
    id = "Dataset",
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
    id = "ListDatasetsOutput",
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
    id = "ListJobRunsInput",
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
    id = "JobRun",
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
    id = "ListJobRunsOutput",
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
    id = "ListJobsInput",
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
    id = "Job",
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
    id = "ListJobsOutput",
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
    id = "ListProjectsInput",
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
    id = "Project",
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
    id = "ListProjectsOutput",
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
    id = "ListRecipesInput",
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
    id = "Recipe",
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
    id = "ListRecipesOutput",
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
    id = "ListRecipeVersionsInput",
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
    id = "ListRecipeVersionsOutput",
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
    id = "ListRulesetsInput",
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
    id = "RulesetItem",
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
    id = "ListRulesetsOutput",
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
    id = "ListSchedulesInput",
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
    id = "Schedule",
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
    id = "ListSchedulesOutput",
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

M.PublishRecipeInput = {
    type = "structure",
    id = "PublishRecipeInput",
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
    id = "PublishRecipeOutput",
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
    id = "ViewFrame",
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
    id = "SendProjectSessionActionInput",
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
    id = "SendProjectSessionActionOutput",
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
    id = "StartJobRunInput",
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
    id = "StartJobRunOutput",
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
    id = "StartProjectSessionInput",
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
    id = "StartProjectSessionOutput",
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
    id = "StopJobRunInput",
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
    id = "StopJobRunOutput",
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

M.UpdateDatasetInput = {
    type = "structure",
    id = "UpdateDatasetInput",
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
    id = "UpdateDatasetOutput",
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
    id = "UpdateProfileJobInput",
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
    id = "UpdateProfileJobOutput",
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
    id = "UpdateProjectInput",
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
    id = "UpdateProjectOutput",
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
    id = "UpdateRecipeInput",
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
    id = "UpdateRecipeOutput",
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
    id = "UpdateRecipeJobInput",
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
    id = "UpdateRecipeJobOutput",
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
    id = "UpdateRulesetInput",
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
    id = "UpdateRulesetOutput",
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
    id = "UpdateScheduleInput",
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
    id = "UpdateScheduleOutput",
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
