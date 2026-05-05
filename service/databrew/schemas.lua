local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.databrew"

local M = {}

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
        }),
    },
})

M.AllowedStatistics = schema.new({
    id = id.from(_N, "AllowedStatistics"),
    type = "structure",
    members = {
        Statistics = schema.new({
            id = id.from(_N, "AllowedStatistics", "Statistics"),
            type = "list",
            name = "Statistics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDeleteRecipeVersionInput = schema.new({
    id = id.from(_N, "BatchDeleteRecipeVersionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "BatchDeleteRecipeVersionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RecipeVersions = schema.new({
            id = id.from(_N, "BatchDeleteRecipeVersionInput", "RecipeVersions"),
            type = "list",
            name = "RecipeVersions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RecipeVersionErrorDetail = schema.new({
    id = id.from(_N, "RecipeVersionErrorDetail"),
    type = "structure",
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "RecipeVersionErrorDetail", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "RecipeVersionErrorDetail", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        RecipeVersion = schema.new({
            id = id.from(_N, "RecipeVersionErrorDetail", "RecipeVersion"),
            type = "string",
            name = "RecipeVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDeleteRecipeVersionOutput = schema.new({
    id = id.from(_N, "BatchDeleteRecipeVersionResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "BatchDeleteRecipeVersionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Errors = schema.new({
            id = id.from(_N, "BatchDeleteRecipeVersionOutput", "Errors"),
            type = "list",
            name = "Errors",
            target_id = prelude.Document.id,
            list_member = M.RecipeVersionErrorDetail,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
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
        }),
    },
})

M.CsvOptions = schema.new({
    id = id.from(_N, "CsvOptions"),
    type = "structure",
    members = {
        Delimiter = schema.new({
            id = id.from(_N, "CsvOptions", "Delimiter"),
            type = "string",
            name = "Delimiter",
            target_id = prelude.String.id,
        }),
        HeaderRow = schema.new({
            id = id.from(_N, "CsvOptions", "HeaderRow"),
            type = "boolean",
            name = "HeaderRow",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ExcelOptions = schema.new({
    id = id.from(_N, "ExcelOptions"),
    type = "structure",
    members = {
        SheetNames = schema.new({
            id = id.from(_N, "ExcelOptions", "SheetNames"),
            type = "list",
            name = "SheetNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SheetIndexes = schema.new({
            id = id.from(_N, "ExcelOptions", "SheetIndexes"),
            type = "list",
            name = "SheetIndexes",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
        HeaderRow = schema.new({
            id = id.from(_N, "ExcelOptions", "HeaderRow"),
            type = "boolean",
            name = "HeaderRow",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.JsonOptions = schema.new({
    id = id.from(_N, "JsonOptions"),
    type = "structure",
    members = {
        MultiLine = schema.new({
            id = id.from(_N, "JsonOptions", "MultiLine"),
            type = "boolean",
            name = "MultiLine",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.FormatOptions = schema.new({
    id = id.from(_N, "FormatOptions"),
    type = "structure",
    members = {
        Json = schema.new({
            id = id.from(_N, "FormatOptions", "Json"),
            type = "structure",
            name = "Json",
            target_id = id.from(_N, "JsonOptions"),
            target = M.JsonOptions,
        }),
        Excel = schema.new({
            id = id.from(_N, "FormatOptions", "Excel"),
            type = "structure",
            name = "Excel",
            target_id = id.from(_N, "ExcelOptions"),
            target = M.ExcelOptions,
        }),
        Csv = schema.new({
            id = id.from(_N, "FormatOptions", "Csv"),
            type = "structure",
            name = "Csv",
            target_id = id.from(_N, "CsvOptions"),
            target = M.CsvOptions,
        }),
    },
})

M.S3Location = schema.new({
    id = id.from(_N, "S3Location"),
    type = "structure",
    members = {
        Bucket = schema.new({
            id = id.from(_N, "S3Location", "Bucket"),
            type = "string",
            name = "Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Key = schema.new({
            id = id.from(_N, "S3Location", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        BucketOwner = schema.new({
            id = id.from(_N, "S3Location", "BucketOwner"),
            type = "string",
            name = "BucketOwner",
            target_id = prelude.String.id,
        }),
    },
})

M.DatabaseInputDefinition = schema.new({
    id = id.from(_N, "DatabaseInputDefinition"),
    type = "structure",
    members = {
        GlueConnectionName = schema.new({
            id = id.from(_N, "DatabaseInputDefinition", "GlueConnectionName"),
            type = "string",
            name = "GlueConnectionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DatabaseTableName = schema.new({
            id = id.from(_N, "DatabaseInputDefinition", "DatabaseTableName"),
            type = "string",
            name = "DatabaseTableName",
            target_id = prelude.String.id,
        }),
        TempDirectory = schema.new({
            id = id.from(_N, "DatabaseInputDefinition", "TempDirectory"),
            type = "structure",
            name = "TempDirectory",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
        }),
        QueryString = schema.new({
            id = id.from(_N, "DatabaseInputDefinition", "QueryString"),
            type = "string",
            name = "QueryString",
            target_id = prelude.String.id,
        }),
    },
})

M.DataCatalogInputDefinition = schema.new({
    id = id.from(_N, "DataCatalogInputDefinition"),
    type = "structure",
    members = {
        CatalogId = schema.new({
            id = id.from(_N, "DataCatalogInputDefinition", "CatalogId"),
            type = "string",
            name = "CatalogId",
            target_id = prelude.String.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "DataCatalogInputDefinition", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableName = schema.new({
            id = id.from(_N, "DataCatalogInputDefinition", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TempDirectory = schema.new({
            id = id.from(_N, "DataCatalogInputDefinition", "TempDirectory"),
            type = "structure",
            name = "TempDirectory",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
        }),
    },
})

M.Metadata = schema.new({
    id = id.from(_N, "Metadata"),
    type = "structure",
    members = {
        SourceArn = schema.new({
            id = id.from(_N, "Metadata", "SourceArn"),
            type = "string",
            name = "SourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.Input = schema.new({
    id = id.from(_N, "Input"),
    type = "structure",
    members = {
        S3InputDefinition = schema.new({
            id = id.from(_N, "Input", "S3InputDefinition"),
            type = "structure",
            name = "S3InputDefinition",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
        }),
        DataCatalogInputDefinition = schema.new({
            id = id.from(_N, "Input", "DataCatalogInputDefinition"),
            type = "structure",
            name = "DataCatalogInputDefinition",
            target_id = id.from(_N, "DataCatalogInputDefinition"),
            target = M.DataCatalogInputDefinition,
        }),
        DatabaseInputDefinition = schema.new({
            id = id.from(_N, "Input", "DatabaseInputDefinition"),
            type = "structure",
            name = "DatabaseInputDefinition",
            target_id = id.from(_N, "DatabaseInputDefinition"),
            target = M.DatabaseInputDefinition,
        }),
        Metadata = schema.new({
            id = id.from(_N, "Input", "Metadata"),
            type = "structure",
            name = "Metadata",
            target_id = id.from(_N, "Metadata"),
            target = M.Metadata,
        }),
    },
})

M.FilesLimit = schema.new({
    id = id.from(_N, "FilesLimit"),
    type = "structure",
    members = {
        MaxFiles = schema.new({
            id = id.from(_N, "FilesLimit", "MaxFiles"),
            type = "integer",
            name = "MaxFiles",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OrderedBy = schema.new({
            id = id.from(_N, "FilesLimit", "OrderedBy"),
            type = "string",
            name = "OrderedBy",
            target_id = prelude.String.id,
        }),
        Order = schema.new({
            id = id.from(_N, "FilesLimit", "Order"),
            type = "string",
            name = "Order",
            target_id = prelude.String.id,
        }),
    },
})

M.FilterExpression = schema.new({
    id = id.from(_N, "FilterExpression"),
    type = "structure",
    members = {
        Expression = schema.new({
            id = id.from(_N, "FilterExpression", "Expression"),
            type = "string",
            name = "Expression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ValuesMap = schema.new({
            id = id.from(_N, "FilterExpression", "ValuesMap"),
            type = "map",
            name = "ValuesMap",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DatetimeOptions = schema.new({
    id = id.from(_N, "DatetimeOptions"),
    type = "structure",
    members = {
        Format = schema.new({
            id = id.from(_N, "DatetimeOptions", "Format"),
            type = "string",
            name = "Format",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimezoneOffset = schema.new({
            id = id.from(_N, "DatetimeOptions", "TimezoneOffset"),
            type = "string",
            name = "TimezoneOffset",
            target_id = prelude.String.id,
        }),
        LocaleCode = schema.new({
            id = id.from(_N, "DatetimeOptions", "LocaleCode"),
            type = "string",
            name = "LocaleCode",
            target_id = prelude.String.id,
        }),
    },
})

M.DatasetParameter = schema.new({
    id = id.from(_N, "DatasetParameter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DatasetParameter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "DatasetParameter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DatetimeOptions = schema.new({
            id = id.from(_N, "DatasetParameter", "DatetimeOptions"),
            type = "structure",
            name = "DatetimeOptions",
            target_id = id.from(_N, "DatetimeOptions"),
            target = M.DatetimeOptions,
        }),
        CreateColumn = schema.new({
            id = id.from(_N, "DatasetParameter", "CreateColumn"),
            type = "boolean",
            name = "CreateColumn",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Filter = schema.new({
            id = id.from(_N, "DatasetParameter", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "FilterExpression"),
            target = M.FilterExpression,
        }),
    },
})

M.PathOptions = schema.new({
    id = id.from(_N, "PathOptions"),
    type = "structure",
    members = {
        LastModifiedDateCondition = schema.new({
            id = id.from(_N, "PathOptions", "LastModifiedDateCondition"),
            type = "structure",
            name = "LastModifiedDateCondition",
            target_id = id.from(_N, "FilterExpression"),
            target = M.FilterExpression,
        }),
        FilesLimit = schema.new({
            id = id.from(_N, "PathOptions", "FilesLimit"),
            type = "structure",
            name = "FilesLimit",
            target_id = id.from(_N, "FilesLimit"),
            target = M.FilesLimit,
        }),
        Parameters = schema.new({
            id = id.from(_N, "PathOptions", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.DatasetParameter,
        }),
    },
})

M.CreateDatasetInput = schema.new({
    id = id.from(_N, "CreateDatasetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateDatasetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Format = schema.new({
            id = id.from(_N, "CreateDatasetInput", "Format"),
            type = "string",
            name = "Format",
            target_id = prelude.String.id,
        }),
        FormatOptions = schema.new({
            id = id.from(_N, "CreateDatasetInput", "FormatOptions"),
            type = "structure",
            name = "FormatOptions",
            target_id = id.from(_N, "FormatOptions"),
            target = M.FormatOptions,
        }),
        Input = schema.new({
            id = id.from(_N, "CreateDatasetInput", "Input"),
            type = "structure",
            name = "Input",
            target_id = id.from(_N, "Input"),
            target = M.Input,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PathOptions = schema.new({
            id = id.from(_N, "CreateDatasetInput", "PathOptions"),
            type = "structure",
            name = "PathOptions",
            target_id = id.from(_N, "PathOptions"),
            target = M.PathOptions,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDatasetInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateDatasetOutput = schema.new({
    id = id.from(_N, "CreateDatasetResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateDatasetOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ColumnSelector = schema.new({
    id = id.from(_N, "ColumnSelector"),
    type = "structure",
    members = {
        Regex = schema.new({
            id = id.from(_N, "ColumnSelector", "Regex"),
            type = "string",
            name = "Regex",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ColumnSelector", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.StatisticOverride = schema.new({
    id = id.from(_N, "StatisticOverride"),
    type = "structure",
    members = {
        Statistic = schema.new({
            id = id.from(_N, "StatisticOverride", "Statistic"),
            type = "string",
            name = "Statistic",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "StatisticOverride", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StatisticsConfiguration = schema.new({
    id = id.from(_N, "StatisticsConfiguration"),
    type = "structure",
    members = {
        IncludedStatistics = schema.new({
            id = id.from(_N, "StatisticsConfiguration", "IncludedStatistics"),
            type = "list",
            name = "IncludedStatistics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Overrides = schema.new({
            id = id.from(_N, "StatisticsConfiguration", "Overrides"),
            type = "list",
            name = "Overrides",
            target_id = prelude.Document.id,
            list_member = M.StatisticOverride,
        }),
    },
})

M.ColumnStatisticsConfiguration = schema.new({
    id = id.from(_N, "ColumnStatisticsConfiguration"),
    type = "structure",
    members = {
        Selectors = schema.new({
            id = id.from(_N, "ColumnStatisticsConfiguration", "Selectors"),
            type = "list",
            name = "Selectors",
            target_id = prelude.Document.id,
            list_member = M.ColumnSelector,
        }),
        Statistics = schema.new({
            id = id.from(_N, "ColumnStatisticsConfiguration", "Statistics"),
            type = "structure",
            name = "Statistics",
            target_id = id.from(_N, "StatisticsConfiguration"),
            target = M.StatisticsConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EntityDetectorConfiguration = schema.new({
    id = id.from(_N, "EntityDetectorConfiguration"),
    type = "structure",
    members = {
        EntityTypes = schema.new({
            id = id.from(_N, "EntityDetectorConfiguration", "EntityTypes"),
            type = "list",
            name = "EntityTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AllowedStatistics = schema.new({
            id = id.from(_N, "EntityDetectorConfiguration", "AllowedStatistics"),
            type = "list",
            name = "AllowedStatistics",
            target_id = prelude.Document.id,
            list_member = M.AllowedStatistics,
        }),
    },
})

M.ProfileConfiguration = schema.new({
    id = id.from(_N, "ProfileConfiguration"),
    type = "structure",
    members = {
        DatasetStatisticsConfiguration = schema.new({
            id = id.from(_N, "ProfileConfiguration", "DatasetStatisticsConfiguration"),
            type = "structure",
            name = "DatasetStatisticsConfiguration",
            target_id = id.from(_N, "StatisticsConfiguration"),
            target = M.StatisticsConfiguration,
        }),
        ProfileColumns = schema.new({
            id = id.from(_N, "ProfileConfiguration", "ProfileColumns"),
            type = "list",
            name = "ProfileColumns",
            target_id = prelude.Document.id,
            list_member = M.ColumnSelector,
        }),
        ColumnStatisticsConfigurations = schema.new({
            id = id.from(_N, "ProfileConfiguration", "ColumnStatisticsConfigurations"),
            type = "list",
            name = "ColumnStatisticsConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ColumnStatisticsConfiguration,
        }),
        EntityDetectorConfiguration = schema.new({
            id = id.from(_N, "ProfileConfiguration", "EntityDetectorConfiguration"),
            type = "structure",
            name = "EntityDetectorConfiguration",
            target_id = id.from(_N, "EntityDetectorConfiguration"),
            target = M.EntityDetectorConfiguration,
        }),
    },
})

M.JobSample = schema.new({
    id = id.from(_N, "JobSample"),
    type = "structure",
    members = {
        Mode = schema.new({
            id = id.from(_N, "JobSample", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
        Size = schema.new({
            id = id.from(_N, "JobSample", "Size"),
            type = "long",
            name = "Size",
            target_id = prelude.Long.id,
        }),
    },
})

M.ValidationConfiguration = schema.new({
    id = id.from(_N, "ValidationConfiguration"),
    type = "structure",
    members = {
        RulesetArn = schema.new({
            id = id.from(_N, "ValidationConfiguration", "RulesetArn"),
            type = "string",
            name = "RulesetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ValidationMode = schema.new({
            id = id.from(_N, "ValidationConfiguration", "ValidationMode"),
            type = "string",
            name = "ValidationMode",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateProfileJobInput = schema.new({
    id = id.from(_N, "CreateProfileJobRequest"),
    type = "structure",
    members = {
        DatasetName = schema.new({
            id = id.from(_N, "CreateProfileJobInput", "DatasetName"),
            type = "string",
            name = "DatasetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "CreateProfileJobInput", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        EncryptionMode = schema.new({
            id = id.from(_N, "CreateProfileJobInput", "EncryptionMode"),
            type = "string",
            name = "EncryptionMode",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateProfileJobInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogSubscription = schema.new({
            id = id.from(_N, "CreateProfileJobInput", "LogSubscription"),
            type = "string",
            name = "LogSubscription",
            target_id = prelude.String.id,
        }),
        MaxCapacity = schema.new({
            id = id.from(_N, "CreateProfileJobInput", "MaxCapacity"),
            type = "integer",
            name = "MaxCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxRetries = schema.new({
            id = id.from(_N, "CreateProfileJobInput", "MaxRetries"),
            type = "integer",
            name = "MaxRetries",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        OutputLocation = schema.new({
            id = id.from(_N, "CreateProfileJobInput", "OutputLocation"),
            type = "structure",
            name = "OutputLocation",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Configuration = schema.new({
            id = id.from(_N, "CreateProfileJobInput", "Configuration"),
            type = "structure",
            name = "Configuration",
            target_id = id.from(_N, "ProfileConfiguration"),
            target = M.ProfileConfiguration,
        }),
        ValidationConfigurations = schema.new({
            id = id.from(_N, "CreateProfileJobInput", "ValidationConfigurations"),
            type = "list",
            name = "ValidationConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ValidationConfiguration,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "CreateProfileJobInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateProfileJobInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Timeout = schema.new({
            id = id.from(_N, "CreateProfileJobInput", "Timeout"),
            type = "integer",
            name = "Timeout",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        JobSample = schema.new({
            id = id.from(_N, "CreateProfileJobInput", "JobSample"),
            type = "structure",
            name = "JobSample",
            target_id = id.from(_N, "JobSample"),
            target = M.JobSample,
        }),
    },
})

M.CreateProfileJobOutput = schema.new({
    id = id.from(_N, "CreateProfileJobResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateProfileJobOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Sample = schema.new({
    id = id.from(_N, "Sample"),
    type = "structure",
    members = {
        Size = schema.new({
            id = id.from(_N, "Sample", "Size"),
            type = "integer",
            name = "Size",
            target_id = prelude.Integer.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Sample", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateProjectInput = schema.new({
    id = id.from(_N, "CreateProjectRequest"),
    type = "structure",
    members = {
        DatasetName = schema.new({
            id = id.from(_N, "CreateProjectInput", "DatasetName"),
            type = "string",
            name = "DatasetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateProjectInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecipeName = schema.new({
            id = id.from(_N, "CreateProjectInput", "RecipeName"),
            type = "string",
            name = "RecipeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Sample = schema.new({
            id = id.from(_N, "CreateProjectInput", "Sample"),
            type = "structure",
            name = "Sample",
            target_id = id.from(_N, "Sample"),
            target = M.Sample,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "CreateProjectInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateProjectInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateProjectOutput = schema.new({
    id = id.from(_N, "CreateProjectResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateProjectOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        }),
    },
})

M.RecipeAction = schema.new({
    id = id.from(_N, "RecipeAction"),
    type = "structure",
    members = {
        Operation = schema.new({
            id = id.from(_N, "RecipeAction", "Operation"),
            type = "string",
            name = "Operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "RecipeAction", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ConditionExpression = schema.new({
    id = id.from(_N, "ConditionExpression"),
    type = "structure",
    members = {
        Condition = schema.new({
            id = id.from(_N, "ConditionExpression", "Condition"),
            type = "string",
            name = "Condition",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "ConditionExpression", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        TargetColumn = schema.new({
            id = id.from(_N, "ConditionExpression", "TargetColumn"),
            type = "string",
            name = "TargetColumn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RecipeStep = schema.new({
    id = id.from(_N, "RecipeStep"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "RecipeStep", "Action"),
            type = "structure",
            name = "Action",
            target_id = id.from(_N, "RecipeAction"),
            target = M.RecipeAction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConditionExpressions = schema.new({
            id = id.from(_N, "RecipeStep", "ConditionExpressions"),
            type = "list",
            name = "ConditionExpressions",
            target_id = prelude.Document.id,
            list_member = M.ConditionExpression,
        }),
    },
})

M.CreateRecipeInput = schema.new({
    id = id.from(_N, "CreateRecipeRequest"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateRecipeInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateRecipeInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Steps = schema.new({
            id = id.from(_N, "CreateRecipeInput", "Steps"),
            type = "list",
            name = "Steps",
            target_id = prelude.Document.id,
            list_member = M.RecipeStep,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRecipeInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateRecipeOutput = schema.new({
    id = id.from(_N, "CreateRecipeResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateRecipeOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DatabaseTableOutputOptions = schema.new({
    id = id.from(_N, "DatabaseTableOutputOptions"),
    type = "structure",
    members = {
        TempDirectory = schema.new({
            id = id.from(_N, "DatabaseTableOutputOptions", "TempDirectory"),
            type = "structure",
            name = "TempDirectory",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
        }),
        TableName = schema.new({
            id = id.from(_N, "DatabaseTableOutputOptions", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DatabaseOutput = schema.new({
    id = id.from(_N, "DatabaseOutput"),
    type = "structure",
    members = {
        GlueConnectionName = schema.new({
            id = id.from(_N, "DatabaseOutput", "GlueConnectionName"),
            type = "string",
            name = "GlueConnectionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DatabaseOptions = schema.new({
            id = id.from(_N, "DatabaseOutput", "DatabaseOptions"),
            type = "structure",
            name = "DatabaseOptions",
            target_id = id.from(_N, "DatabaseTableOutputOptions"),
            target = M.DatabaseTableOutputOptions,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DatabaseOutputMode = schema.new({
            id = id.from(_N, "DatabaseOutput", "DatabaseOutputMode"),
            type = "string",
            name = "DatabaseOutputMode",
            target_id = prelude.String.id,
        }),
    },
})

M.S3TableOutputOptions = schema.new({
    id = id.from(_N, "S3TableOutputOptions"),
    type = "structure",
    members = {
        Location = schema.new({
            id = id.from(_N, "S3TableOutputOptions", "Location"),
            type = "structure",
            name = "Location",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DataCatalogOutput = schema.new({
    id = id.from(_N, "DataCatalogOutput"),
    type = "structure",
    members = {
        CatalogId = schema.new({
            id = id.from(_N, "DataCatalogOutput", "CatalogId"),
            type = "string",
            name = "CatalogId",
            target_id = prelude.String.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "DataCatalogOutput", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableName = schema.new({
            id = id.from(_N, "DataCatalogOutput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3Options = schema.new({
            id = id.from(_N, "DataCatalogOutput", "S3Options"),
            type = "structure",
            name = "S3Options",
            target_id = id.from(_N, "S3TableOutputOptions"),
            target = M.S3TableOutputOptions,
        }),
        DatabaseOptions = schema.new({
            id = id.from(_N, "DataCatalogOutput", "DatabaseOptions"),
            type = "structure",
            name = "DatabaseOptions",
            target_id = id.from(_N, "DatabaseTableOutputOptions"),
            target = M.DatabaseTableOutputOptions,
        }),
        Overwrite = schema.new({
            id = id.from(_N, "DataCatalogOutput", "Overwrite"),
            type = "boolean",
            name = "Overwrite",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CsvOutputOptions = schema.new({
    id = id.from(_N, "CsvOutputOptions"),
    type = "structure",
    members = {
        Delimiter = schema.new({
            id = id.from(_N, "CsvOutputOptions", "Delimiter"),
            type = "string",
            name = "Delimiter",
            target_id = prelude.String.id,
        }),
    },
})

M.OutputFormatOptions = schema.new({
    id = id.from(_N, "OutputFormatOptions"),
    type = "structure",
    members = {
        Csv = schema.new({
            id = id.from(_N, "OutputFormatOptions", "Csv"),
            type = "structure",
            name = "Csv",
            target_id = id.from(_N, "CsvOutputOptions"),
            target = M.CsvOutputOptions,
        }),
    },
})

M.Output = schema.new({
    id = id.from(_N, "Output"),
    type = "structure",
    members = {
        CompressionFormat = schema.new({
            id = id.from(_N, "Output", "CompressionFormat"),
            type = "string",
            name = "CompressionFormat",
            target_id = prelude.String.id,
        }),
        Format = schema.new({
            id = id.from(_N, "Output", "Format"),
            type = "string",
            name = "Format",
            target_id = prelude.String.id,
        }),
        PartitionColumns = schema.new({
            id = id.from(_N, "Output", "PartitionColumns"),
            type = "list",
            name = "PartitionColumns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Location = schema.new({
            id = id.from(_N, "Output", "Location"),
            type = "structure",
            name = "Location",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Overwrite = schema.new({
            id = id.from(_N, "Output", "Overwrite"),
            type = "boolean",
            name = "Overwrite",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        FormatOptions = schema.new({
            id = id.from(_N, "Output", "FormatOptions"),
            type = "structure",
            name = "FormatOptions",
            target_id = id.from(_N, "OutputFormatOptions"),
            target = M.OutputFormatOptions,
        }),
        MaxOutputFiles = schema.new({
            id = id.from(_N, "Output", "MaxOutputFiles"),
            type = "integer",
            name = "MaxOutputFiles",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RecipeReference = schema.new({
    id = id.from(_N, "RecipeReference"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RecipeReference", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecipeVersion = schema.new({
            id = id.from(_N, "RecipeReference", "RecipeVersion"),
            type = "string",
            name = "RecipeVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRecipeJobInput = schema.new({
    id = id.from(_N, "CreateRecipeJobRequest"),
    type = "structure",
    members = {
        DatasetName = schema.new({
            id = id.from(_N, "CreateRecipeJobInput", "DatasetName"),
            type = "string",
            name = "DatasetName",
            target_id = prelude.String.id,
        }),
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "CreateRecipeJobInput", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        EncryptionMode = schema.new({
            id = id.from(_N, "CreateRecipeJobInput", "EncryptionMode"),
            type = "string",
            name = "EncryptionMode",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateRecipeJobInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogSubscription = schema.new({
            id = id.from(_N, "CreateRecipeJobInput", "LogSubscription"),
            type = "string",
            name = "LogSubscription",
            target_id = prelude.String.id,
        }),
        MaxCapacity = schema.new({
            id = id.from(_N, "CreateRecipeJobInput", "MaxCapacity"),
            type = "integer",
            name = "MaxCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxRetries = schema.new({
            id = id.from(_N, "CreateRecipeJobInput", "MaxRetries"),
            type = "integer",
            name = "MaxRetries",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Outputs = schema.new({
            id = id.from(_N, "CreateRecipeJobInput", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.Output,
        }),
        DataCatalogOutputs = schema.new({
            id = id.from(_N, "CreateRecipeJobInput", "DataCatalogOutputs"),
            type = "list",
            name = "DataCatalogOutputs",
            target_id = prelude.Document.id,
            list_member = M.DataCatalogOutput,
        }),
        DatabaseOutputs = schema.new({
            id = id.from(_N, "CreateRecipeJobInput", "DatabaseOutputs"),
            type = "list",
            name = "DatabaseOutputs",
            target_id = prelude.Document.id,
            list_member = M.DatabaseOutput,
        }),
        ProjectName = schema.new({
            id = id.from(_N, "CreateRecipeJobInput", "ProjectName"),
            type = "string",
            name = "ProjectName",
            target_id = prelude.String.id,
        }),
        RecipeReference = schema.new({
            id = id.from(_N, "CreateRecipeJobInput", "RecipeReference"),
            type = "structure",
            name = "RecipeReference",
            target_id = id.from(_N, "RecipeReference"),
            target = M.RecipeReference,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "CreateRecipeJobInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRecipeJobInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Timeout = schema.new({
            id = id.from(_N, "CreateRecipeJobInput", "Timeout"),
            type = "integer",
            name = "Timeout",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CreateRecipeJobOutput = schema.new({
    id = id.from(_N, "CreateRecipeJobResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateRecipeJobOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Threshold = schema.new({
    id = id.from(_N, "Threshold"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "Threshold", "Value"),
            type = "double",
            name = "Value",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Type = schema.new({
            id = id.from(_N, "Threshold", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Unit = schema.new({
            id = id.from(_N, "Threshold", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
    },
})

M.Rule = schema.new({
    id = id.from(_N, "Rule"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Rule", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Disabled = schema.new({
            id = id.from(_N, "Rule", "Disabled"),
            type = "boolean",
            name = "Disabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        CheckExpression = schema.new({
            id = id.from(_N, "Rule", "CheckExpression"),
            type = "string",
            name = "CheckExpression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubstitutionMap = schema.new({
            id = id.from(_N, "Rule", "SubstitutionMap"),
            type = "map",
            name = "SubstitutionMap",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Threshold = schema.new({
            id = id.from(_N, "Rule", "Threshold"),
            type = "structure",
            name = "Threshold",
            target_id = id.from(_N, "Threshold"),
            target = M.Threshold,
        }),
        ColumnSelectors = schema.new({
            id = id.from(_N, "Rule", "ColumnSelectors"),
            type = "list",
            name = "ColumnSelectors",
            target_id = prelude.Document.id,
            list_member = M.ColumnSelector,
        }),
    },
})

M.CreateRulesetInput = schema.new({
    id = id.from(_N, "CreateRulesetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateRulesetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateRulesetInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        TargetArn = schema.new({
            id = id.from(_N, "CreateRulesetInput", "TargetArn"),
            type = "string",
            name = "TargetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Rules = schema.new({
            id = id.from(_N, "CreateRulesetInput", "Rules"),
            type = "list",
            name = "Rules",
            target_id = prelude.Document.id,
            list_member = M.Rule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRulesetInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateRulesetOutput = schema.new({
    id = id.from(_N, "CreateRulesetResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateRulesetOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateScheduleInput = schema.new({
    id = id.from(_N, "CreateScheduleRequest"),
    type = "structure",
    members = {
        JobNames = schema.new({
            id = id.from(_N, "CreateScheduleInput", "JobNames"),
            type = "list",
            name = "JobNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CronExpression = schema.new({
            id = id.from(_N, "CreateScheduleInput", "CronExpression"),
            type = "string",
            name = "CronExpression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateScheduleInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateScheduleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateScheduleOutput = schema.new({
    id = id.from(_N, "CreateScheduleResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateScheduleOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDatasetInput = schema.new({
    id = id.from(_N, "DeleteDatasetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteDatasetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDatasetOutput = schema.new({
    id = id.from(_N, "DeleteDatasetResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteDatasetOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteJobInput = schema.new({
    id = id.from(_N, "DeleteJobRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteJobInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteJobOutput = schema.new({
    id = id.from(_N, "DeleteJobResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteJobOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteProjectInput = schema.new({
    id = id.from(_N, "DeleteProjectRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteProjectInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteProjectOutput = schema.new({
    id = id.from(_N, "DeleteProjectResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteProjectOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRecipeVersionInput = schema.new({
    id = id.from(_N, "DeleteRecipeVersionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteRecipeVersionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RecipeVersion = schema.new({
            id = id.from(_N, "DeleteRecipeVersionInput", "RecipeVersion"),
            type = "string",
            name = "RecipeVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteRecipeVersionOutput = schema.new({
    id = id.from(_N, "DeleteRecipeVersionResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteRecipeVersionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecipeVersion = schema.new({
            id = id.from(_N, "DeleteRecipeVersionOutput", "RecipeVersion"),
            type = "string",
            name = "RecipeVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRulesetInput = schema.new({
    id = id.from(_N, "DeleteRulesetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteRulesetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteRulesetOutput = schema.new({
    id = id.from(_N, "DeleteRulesetResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteRulesetOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteScheduleInput = schema.new({
    id = id.from(_N, "DeleteScheduleRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteScheduleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteScheduleOutput = schema.new({
    id = id.from(_N, "DeleteScheduleResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteScheduleOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeDatasetInput = schema.new({
    id = id.from(_N, "DescribeDatasetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DescribeDatasetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeDatasetOutput = schema.new({
    id = id.from(_N, "DescribeDatasetResponse"),
    type = "structure",
    members = {
        CreatedBy = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Format = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "Format"),
            type = "string",
            name = "Format",
            target_id = prelude.String.id,
        }),
        FormatOptions = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "FormatOptions"),
            type = "structure",
            name = "FormatOptions",
            target_id = id.from(_N, "FormatOptions"),
            target = M.FormatOptions,
        }),
        Input = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "Input"),
            type = "structure",
            name = "Input",
            target_id = id.from(_N, "Input"),
            target = M.Input,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedBy = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "LastModifiedBy"),
            type = "string",
            name = "LastModifiedBy",
            target_id = prelude.String.id,
        }),
        Source = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
        }),
        PathOptions = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "PathOptions"),
            type = "structure",
            name = "PathOptions",
            target_id = id.from(_N, "PathOptions"),
            target = M.PathOptions,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeJobInput = schema.new({
    id = id.from(_N, "DescribeJobRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DescribeJobInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeJobOutput = schema.new({
    id = id.from(_N, "DescribeJobResponse"),
    type = "structure",
    members = {
        CreateDate = schema.new({
            id = id.from(_N, "DescribeJobOutput", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "DescribeJobOutput", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        DatasetName = schema.new({
            id = id.from(_N, "DescribeJobOutput", "DatasetName"),
            type = "string",
            name = "DatasetName",
            target_id = prelude.String.id,
        }),
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "DescribeJobOutput", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        EncryptionMode = schema.new({
            id = id.from(_N, "DescribeJobOutput", "EncryptionMode"),
            type = "string",
            name = "EncryptionMode",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeJobOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "DescribeJobOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        LastModifiedBy = schema.new({
            id = id.from(_N, "DescribeJobOutput", "LastModifiedBy"),
            type = "string",
            name = "LastModifiedBy",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "DescribeJobOutput", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        LogSubscription = schema.new({
            id = id.from(_N, "DescribeJobOutput", "LogSubscription"),
            type = "string",
            name = "LogSubscription",
            target_id = prelude.String.id,
        }),
        MaxCapacity = schema.new({
            id = id.from(_N, "DescribeJobOutput", "MaxCapacity"),
            type = "integer",
            name = "MaxCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxRetries = schema.new({
            id = id.from(_N, "DescribeJobOutput", "MaxRetries"),
            type = "integer",
            name = "MaxRetries",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Outputs = schema.new({
            id = id.from(_N, "DescribeJobOutput", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.Output,
        }),
        DataCatalogOutputs = schema.new({
            id = id.from(_N, "DescribeJobOutput", "DataCatalogOutputs"),
            type = "list",
            name = "DataCatalogOutputs",
            target_id = prelude.Document.id,
            list_member = M.DataCatalogOutput,
        }),
        DatabaseOutputs = schema.new({
            id = id.from(_N, "DescribeJobOutput", "DatabaseOutputs"),
            type = "list",
            name = "DatabaseOutputs",
            target_id = prelude.Document.id,
            list_member = M.DatabaseOutput,
        }),
        ProjectName = schema.new({
            id = id.from(_N, "DescribeJobOutput", "ProjectName"),
            type = "string",
            name = "ProjectName",
            target_id = prelude.String.id,
        }),
        ProfileConfiguration = schema.new({
            id = id.from(_N, "DescribeJobOutput", "ProfileConfiguration"),
            type = "structure",
            name = "ProfileConfiguration",
            target_id = id.from(_N, "ProfileConfiguration"),
            target = M.ProfileConfiguration,
        }),
        ValidationConfigurations = schema.new({
            id = id.from(_N, "DescribeJobOutput", "ValidationConfigurations"),
            type = "list",
            name = "ValidationConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ValidationConfiguration,
        }),
        RecipeReference = schema.new({
            id = id.from(_N, "DescribeJobOutput", "RecipeReference"),
            type = "structure",
            name = "RecipeReference",
            target_id = id.from(_N, "RecipeReference"),
            target = M.RecipeReference,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "DescribeJobOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "DescribeJobOutput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeJobOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Timeout = schema.new({
            id = id.from(_N, "DescribeJobOutput", "Timeout"),
            type = "integer",
            name = "Timeout",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        JobSample = schema.new({
            id = id.from(_N, "DescribeJobOutput", "JobSample"),
            type = "structure",
            name = "JobSample",
            target_id = id.from(_N, "JobSample"),
            target = M.JobSample,
        }),
    },
})

M.DescribeJobRunInput = schema.new({
    id = id.from(_N, "DescribeJobRunRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DescribeJobRunInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RunId = schema.new({
            id = id.from(_N, "DescribeJobRunInput", "RunId"),
            type = "string",
            name = "RunId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeJobRunOutput = schema.new({
    id = id.from(_N, "DescribeJobRunResponse"),
    type = "structure",
    members = {
        Attempt = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "Attempt"),
            type = "integer",
            name = "Attempt",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        CompletedOn = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "CompletedOn"),
            type = "timestamp",
            name = "CompletedOn",
            target_id = prelude.Timestamp.id,
        }),
        DatasetName = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "DatasetName"),
            type = "string",
            name = "DatasetName",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        ExecutionTime = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "ExecutionTime"),
            type = "integer",
            name = "ExecutionTime",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        JobName = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProfileConfiguration = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "ProfileConfiguration"),
            type = "structure",
            name = "ProfileConfiguration",
            target_id = id.from(_N, "ProfileConfiguration"),
            target = M.ProfileConfiguration,
        }),
        ValidationConfigurations = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "ValidationConfigurations"),
            type = "list",
            name = "ValidationConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ValidationConfiguration,
        }),
        RunId = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "RunId"),
            type = "string",
            name = "RunId",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        LogSubscription = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "LogSubscription"),
            type = "string",
            name = "LogSubscription",
            target_id = prelude.String.id,
        }),
        LogGroupName = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "LogGroupName"),
            type = "string",
            name = "LogGroupName",
            target_id = prelude.String.id,
        }),
        Outputs = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.Output,
        }),
        DataCatalogOutputs = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "DataCatalogOutputs"),
            type = "list",
            name = "DataCatalogOutputs",
            target_id = prelude.Document.id,
            list_member = M.DataCatalogOutput,
        }),
        DatabaseOutputs = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "DatabaseOutputs"),
            type = "list",
            name = "DatabaseOutputs",
            target_id = prelude.Document.id,
            list_member = M.DatabaseOutput,
        }),
        RecipeReference = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "RecipeReference"),
            type = "structure",
            name = "RecipeReference",
            target_id = id.from(_N, "RecipeReference"),
            target = M.RecipeReference,
        }),
        StartedBy = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "StartedBy"),
            type = "string",
            name = "StartedBy",
            target_id = prelude.String.id,
        }),
        StartedOn = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "StartedOn"),
            type = "timestamp",
            name = "StartedOn",
            target_id = prelude.Timestamp.id,
        }),
        JobSample = schema.new({
            id = id.from(_N, "DescribeJobRunOutput", "JobSample"),
            type = "structure",
            name = "JobSample",
            target_id = id.from(_N, "JobSample"),
            target = M.JobSample,
        }),
    },
})

M.DescribeProjectInput = schema.new({
    id = id.from(_N, "DescribeProjectRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DescribeProjectInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeProjectOutput = schema.new({
    id = id.from(_N, "DescribeProjectResponse"),
    type = "structure",
    members = {
        CreateDate = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        DatasetName = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "DatasetName"),
            type = "string",
            name = "DatasetName",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedBy = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "LastModifiedBy"),
            type = "string",
            name = "LastModifiedBy",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecipeName = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "RecipeName"),
            type = "string",
            name = "RecipeName",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Sample = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "Sample"),
            type = "structure",
            name = "Sample",
            target_id = id.from(_N, "Sample"),
            target = M.Sample,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        SessionStatus = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "SessionStatus"),
            type = "string",
            name = "SessionStatus",
            target_id = prelude.String.id,
        }),
        OpenedBy = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "OpenedBy"),
            type = "string",
            name = "OpenedBy",
            target_id = prelude.String.id,
        }),
        OpenDate = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "OpenDate"),
            type = "timestamp",
            name = "OpenDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeRecipeInput = schema.new({
    id = id.from(_N, "DescribeRecipeRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DescribeRecipeInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RecipeVersion = schema.new({
            id = id.from(_N, "DescribeRecipeInput", "RecipeVersion"),
            type = "string",
            name = "RecipeVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "recipeVersion" },
            },
        }),
    },
})

M.DescribeRecipeOutput = schema.new({
    id = id.from(_N, "DescribeRecipeResponse"),
    type = "structure",
    members = {
        CreatedBy = schema.new({
            id = id.from(_N, "DescribeRecipeOutput", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "DescribeRecipeOutput", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedBy = schema.new({
            id = id.from(_N, "DescribeRecipeOutput", "LastModifiedBy"),
            type = "string",
            name = "LastModifiedBy",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "DescribeRecipeOutput", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        ProjectName = schema.new({
            id = id.from(_N, "DescribeRecipeOutput", "ProjectName"),
            type = "string",
            name = "ProjectName",
            target_id = prelude.String.id,
        }),
        PublishedBy = schema.new({
            id = id.from(_N, "DescribeRecipeOutput", "PublishedBy"),
            type = "string",
            name = "PublishedBy",
            target_id = prelude.String.id,
        }),
        PublishedDate = schema.new({
            id = id.from(_N, "DescribeRecipeOutput", "PublishedDate"),
            type = "timestamp",
            name = "PublishedDate",
            target_id = prelude.Timestamp.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeRecipeOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeRecipeOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Steps = schema.new({
            id = id.from(_N, "DescribeRecipeOutput", "Steps"),
            type = "list",
            name = "Steps",
            target_id = prelude.Document.id,
            list_member = M.RecipeStep,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeRecipeOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "DescribeRecipeOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        RecipeVersion = schema.new({
            id = id.from(_N, "DescribeRecipeOutput", "RecipeVersion"),
            type = "string",
            name = "RecipeVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRulesetInput = schema.new({
    id = id.from(_N, "DescribeRulesetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DescribeRulesetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeRulesetOutput = schema.new({
    id = id.from(_N, "DescribeRulesetResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DescribeRulesetOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeRulesetOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        TargetArn = schema.new({
            id = id.from(_N, "DescribeRulesetOutput", "TargetArn"),
            type = "string",
            name = "TargetArn",
            target_id = prelude.String.id,
        }),
        Rules = schema.new({
            id = id.from(_N, "DescribeRulesetOutput", "Rules"),
            type = "list",
            name = "Rules",
            target_id = prelude.Document.id,
            list_member = M.Rule,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "DescribeRulesetOutput", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "DescribeRulesetOutput", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        LastModifiedBy = schema.new({
            id = id.from(_N, "DescribeRulesetOutput", "LastModifiedBy"),
            type = "string",
            name = "LastModifiedBy",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "DescribeRulesetOutput", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "DescribeRulesetOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeRulesetOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DescribeScheduleInput = schema.new({
    id = id.from(_N, "DescribeScheduleRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DescribeScheduleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeScheduleOutput = schema.new({
    id = id.from(_N, "DescribeScheduleResponse"),
    type = "structure",
    members = {
        CreateDate = schema.new({
            id = id.from(_N, "DescribeScheduleOutput", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "DescribeScheduleOutput", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        JobNames = schema.new({
            id = id.from(_N, "DescribeScheduleOutput", "JobNames"),
            type = "list",
            name = "JobNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LastModifiedBy = schema.new({
            id = id.from(_N, "DescribeScheduleOutput", "LastModifiedBy"),
            type = "string",
            name = "LastModifiedBy",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "DescribeScheduleOutput", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "DescribeScheduleOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        CronExpression = schema.new({
            id = id.from(_N, "DescribeScheduleOutput", "CronExpression"),
            type = "string",
            name = "CronExpression",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeScheduleOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeScheduleOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListDatasetsInput = schema.new({
    id = id.from(_N, "ListDatasetsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListDatasetsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDatasetsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.Dataset = schema.new({
    id = id.from(_N, "Dataset"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "Dataset", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "Dataset", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "Dataset", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Dataset", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Format = schema.new({
            id = id.from(_N, "Dataset", "Format"),
            type = "string",
            name = "Format",
            target_id = prelude.String.id,
        }),
        FormatOptions = schema.new({
            id = id.from(_N, "Dataset", "FormatOptions"),
            type = "structure",
            name = "FormatOptions",
            target_id = id.from(_N, "FormatOptions"),
            target = M.FormatOptions,
        }),
        Input = schema.new({
            id = id.from(_N, "Dataset", "Input"),
            type = "structure",
            name = "Input",
            target_id = id.from(_N, "Input"),
            target = M.Input,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "Dataset", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedBy = schema.new({
            id = id.from(_N, "Dataset", "LastModifiedBy"),
            type = "string",
            name = "LastModifiedBy",
            target_id = prelude.String.id,
        }),
        Source = schema.new({
            id = id.from(_N, "Dataset", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
        }),
        PathOptions = schema.new({
            id = id.from(_N, "Dataset", "PathOptions"),
            type = "structure",
            name = "PathOptions",
            target_id = id.from(_N, "PathOptions"),
            target = M.PathOptions,
        }),
        Tags = schema.new({
            id = id.from(_N, "Dataset", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "Dataset", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDatasetsOutput = schema.new({
    id = id.from(_N, "ListDatasetsResponse"),
    type = "structure",
    members = {
        Datasets = schema.new({
            id = id.from(_N, "ListDatasetsOutput", "Datasets"),
            type = "list",
            name = "Datasets",
            target_id = prelude.Document.id,
            list_member = M.Dataset,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDatasetsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListJobRunsInput = schema.new({
    id = id.from(_N, "ListJobRunsRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ListJobRunsInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListJobRunsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListJobRunsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.JobRun = schema.new({
    id = id.from(_N, "JobRun"),
    type = "structure",
    members = {
        Attempt = schema.new({
            id = id.from(_N, "JobRun", "Attempt"),
            type = "integer",
            name = "Attempt",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        CompletedOn = schema.new({
            id = id.from(_N, "JobRun", "CompletedOn"),
            type = "timestamp",
            name = "CompletedOn",
            target_id = prelude.Timestamp.id,
        }),
        DatasetName = schema.new({
            id = id.from(_N, "JobRun", "DatasetName"),
            type = "string",
            name = "DatasetName",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "JobRun", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        ExecutionTime = schema.new({
            id = id.from(_N, "JobRun", "ExecutionTime"),
            type = "integer",
            name = "ExecutionTime",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        JobName = schema.new({
            id = id.from(_N, "JobRun", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        RunId = schema.new({
            id = id.from(_N, "JobRun", "RunId"),
            type = "string",
            name = "RunId",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "JobRun", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        LogSubscription = schema.new({
            id = id.from(_N, "JobRun", "LogSubscription"),
            type = "string",
            name = "LogSubscription",
            target_id = prelude.String.id,
        }),
        LogGroupName = schema.new({
            id = id.from(_N, "JobRun", "LogGroupName"),
            type = "string",
            name = "LogGroupName",
            target_id = prelude.String.id,
        }),
        Outputs = schema.new({
            id = id.from(_N, "JobRun", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.Output,
        }),
        DataCatalogOutputs = schema.new({
            id = id.from(_N, "JobRun", "DataCatalogOutputs"),
            type = "list",
            name = "DataCatalogOutputs",
            target_id = prelude.Document.id,
            list_member = M.DataCatalogOutput,
        }),
        DatabaseOutputs = schema.new({
            id = id.from(_N, "JobRun", "DatabaseOutputs"),
            type = "list",
            name = "DatabaseOutputs",
            target_id = prelude.Document.id,
            list_member = M.DatabaseOutput,
        }),
        RecipeReference = schema.new({
            id = id.from(_N, "JobRun", "RecipeReference"),
            type = "structure",
            name = "RecipeReference",
            target_id = id.from(_N, "RecipeReference"),
            target = M.RecipeReference,
        }),
        StartedBy = schema.new({
            id = id.from(_N, "JobRun", "StartedBy"),
            type = "string",
            name = "StartedBy",
            target_id = prelude.String.id,
        }),
        StartedOn = schema.new({
            id = id.from(_N, "JobRun", "StartedOn"),
            type = "timestamp",
            name = "StartedOn",
            target_id = prelude.Timestamp.id,
        }),
        JobSample = schema.new({
            id = id.from(_N, "JobRun", "JobSample"),
            type = "structure",
            name = "JobSample",
            target_id = id.from(_N, "JobSample"),
            target = M.JobSample,
        }),
        ValidationConfigurations = schema.new({
            id = id.from(_N, "JobRun", "ValidationConfigurations"),
            type = "list",
            name = "ValidationConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ValidationConfiguration,
        }),
    },
})

M.ListJobRunsOutput = schema.new({
    id = id.from(_N, "ListJobRunsResponse"),
    type = "structure",
    members = {
        JobRuns = schema.new({
            id = id.from(_N, "ListJobRunsOutput", "JobRuns"),
            type = "list",
            name = "JobRuns",
            target_id = prelude.Document.id,
            list_member = M.JobRun,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListJobRunsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListJobsInput = schema.new({
    id = id.from(_N, "ListJobsRequest"),
    type = "structure",
    members = {
        DatasetName = schema.new({
            id = id.from(_N, "ListJobsInput", "DatasetName"),
            type = "string",
            name = "DatasetName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "datasetName" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        ProjectName = schema.new({
            id = id.from(_N, "ListJobsInput", "ProjectName"),
            type = "string",
            name = "ProjectName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "projectName" },
            },
        }),
    },
})

M.Job = schema.new({
    id = id.from(_N, "Job"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "Job", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "Job", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "Job", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        DatasetName = schema.new({
            id = id.from(_N, "Job", "DatasetName"),
            type = "string",
            name = "DatasetName",
            target_id = prelude.String.id,
        }),
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "Job", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        EncryptionMode = schema.new({
            id = id.from(_N, "Job", "EncryptionMode"),
            type = "string",
            name = "EncryptionMode",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Job", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "Job", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        LastModifiedBy = schema.new({
            id = id.from(_N, "Job", "LastModifiedBy"),
            type = "string",
            name = "LastModifiedBy",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "Job", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        LogSubscription = schema.new({
            id = id.from(_N, "Job", "LogSubscription"),
            type = "string",
            name = "LogSubscription",
            target_id = prelude.String.id,
        }),
        MaxCapacity = schema.new({
            id = id.from(_N, "Job", "MaxCapacity"),
            type = "integer",
            name = "MaxCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxRetries = schema.new({
            id = id.from(_N, "Job", "MaxRetries"),
            type = "integer",
            name = "MaxRetries",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Outputs = schema.new({
            id = id.from(_N, "Job", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.Output,
        }),
        DataCatalogOutputs = schema.new({
            id = id.from(_N, "Job", "DataCatalogOutputs"),
            type = "list",
            name = "DataCatalogOutputs",
            target_id = prelude.Document.id,
            list_member = M.DataCatalogOutput,
        }),
        DatabaseOutputs = schema.new({
            id = id.from(_N, "Job", "DatabaseOutputs"),
            type = "list",
            name = "DatabaseOutputs",
            target_id = prelude.Document.id,
            list_member = M.DatabaseOutput,
        }),
        ProjectName = schema.new({
            id = id.from(_N, "Job", "ProjectName"),
            type = "string",
            name = "ProjectName",
            target_id = prelude.String.id,
        }),
        RecipeReference = schema.new({
            id = id.from(_N, "Job", "RecipeReference"),
            type = "structure",
            name = "RecipeReference",
            target_id = id.from(_N, "RecipeReference"),
            target = M.RecipeReference,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "Job", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "Job", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        Timeout = schema.new({
            id = id.from(_N, "Job", "Timeout"),
            type = "integer",
            name = "Timeout",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "Job", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        JobSample = schema.new({
            id = id.from(_N, "Job", "JobSample"),
            type = "structure",
            name = "JobSample",
            target_id = id.from(_N, "JobSample"),
            target = M.JobSample,
        }),
        ValidationConfigurations = schema.new({
            id = id.from(_N, "Job", "ValidationConfigurations"),
            type = "list",
            name = "ValidationConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ValidationConfiguration,
        }),
    },
})

M.ListJobsOutput = schema.new({
    id = id.from(_N, "ListJobsResponse"),
    type = "structure",
    members = {
        Jobs = schema.new({
            id = id.from(_N, "ListJobsOutput", "Jobs"),
            type = "list",
            name = "Jobs",
            target_id = prelude.Document.id,
            list_member = M.Job,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProjectsInput = schema.new({
    id = id.from(_N, "ListProjectsRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListProjectsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListProjectsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.Project = schema.new({
    id = id.from(_N, "Project"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "Project", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "Project", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "Project", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        DatasetName = schema.new({
            id = id.from(_N, "Project", "DatasetName"),
            type = "string",
            name = "DatasetName",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "Project", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedBy = schema.new({
            id = id.from(_N, "Project", "LastModifiedBy"),
            type = "string",
            name = "LastModifiedBy",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Project", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecipeName = schema.new({
            id = id.from(_N, "Project", "RecipeName"),
            type = "string",
            name = "RecipeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "Project", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Sample = schema.new({
            id = id.from(_N, "Project", "Sample"),
            type = "structure",
            name = "Sample",
            target_id = id.from(_N, "Sample"),
            target = M.Sample,
        }),
        Tags = schema.new({
            id = id.from(_N, "Project", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "Project", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        OpenedBy = schema.new({
            id = id.from(_N, "Project", "OpenedBy"),
            type = "string",
            name = "OpenedBy",
            target_id = prelude.String.id,
        }),
        OpenDate = schema.new({
            id = id.from(_N, "Project", "OpenDate"),
            type = "timestamp",
            name = "OpenDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListProjectsOutput = schema.new({
    id = id.from(_N, "ListProjectsResponse"),
    type = "structure",
    members = {
        Projects = schema.new({
            id = id.from(_N, "ListProjectsOutput", "Projects"),
            type = "list",
            name = "Projects",
            target_id = prelude.Document.id,
            list_member = M.Project,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListProjectsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRecipesInput = schema.new({
    id = id.from(_N, "ListRecipesRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListRecipesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRecipesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        RecipeVersion = schema.new({
            id = id.from(_N, "ListRecipesInput", "RecipeVersion"),
            type = "string",
            name = "RecipeVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "recipeVersion" },
            },
        }),
    },
})

M.Recipe = schema.new({
    id = id.from(_N, "Recipe"),
    type = "structure",
    members = {
        CreatedBy = schema.new({
            id = id.from(_N, "Recipe", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "Recipe", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedBy = schema.new({
            id = id.from(_N, "Recipe", "LastModifiedBy"),
            type = "string",
            name = "LastModifiedBy",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "Recipe", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        ProjectName = schema.new({
            id = id.from(_N, "Recipe", "ProjectName"),
            type = "string",
            name = "ProjectName",
            target_id = prelude.String.id,
        }),
        PublishedBy = schema.new({
            id = id.from(_N, "Recipe", "PublishedBy"),
            type = "string",
            name = "PublishedBy",
            target_id = prelude.String.id,
        }),
        PublishedDate = schema.new({
            id = id.from(_N, "Recipe", "PublishedDate"),
            type = "timestamp",
            name = "PublishedDate",
            target_id = prelude.Timestamp.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Recipe", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Recipe", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "Recipe", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Steps = schema.new({
            id = id.from(_N, "Recipe", "Steps"),
            type = "list",
            name = "Steps",
            target_id = prelude.Document.id,
            list_member = M.RecipeStep,
        }),
        Tags = schema.new({
            id = id.from(_N, "Recipe", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        RecipeVersion = schema.new({
            id = id.from(_N, "Recipe", "RecipeVersion"),
            type = "string",
            name = "RecipeVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRecipesOutput = schema.new({
    id = id.from(_N, "ListRecipesResponse"),
    type = "structure",
    members = {
        Recipes = schema.new({
            id = id.from(_N, "ListRecipesOutput", "Recipes"),
            type = "list",
            name = "Recipes",
            target_id = prelude.Document.id,
            list_member = M.Recipe,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRecipesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRecipeVersionsInput = schema.new({
    id = id.from(_N, "ListRecipeVersionsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListRecipeVersionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRecipeVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        Name = schema.new({
            id = id.from(_N, "ListRecipeVersionsInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
    },
})

M.ListRecipeVersionsOutput = schema.new({
    id = id.from(_N, "ListRecipeVersionsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListRecipeVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Recipes = schema.new({
            id = id.from(_N, "ListRecipeVersionsOutput", "Recipes"),
            type = "list",
            name = "Recipes",
            target_id = prelude.Document.id,
            list_member = M.Recipe,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListRulesetsInput = schema.new({
    id = id.from(_N, "ListRulesetsRequest"),
    type = "structure",
    members = {
        TargetArn = schema.new({
            id = id.from(_N, "ListRulesetsInput", "TargetArn"),
            type = "string",
            name = "TargetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "targetArn" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListRulesetsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRulesetsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.RulesetItem = schema.new({
    id = id.from(_N, "RulesetItem"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "RulesetItem", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "RulesetItem", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "RulesetItem", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        Description = schema.new({
            id = id.from(_N, "RulesetItem", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LastModifiedBy = schema.new({
            id = id.from(_N, "RulesetItem", "LastModifiedBy"),
            type = "string",
            name = "LastModifiedBy",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "RulesetItem", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        Name = schema.new({
            id = id.from(_N, "RulesetItem", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "RulesetItem", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        RuleCount = schema.new({
            id = id.from(_N, "RulesetItem", "RuleCount"),
            type = "integer",
            name = "RuleCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "RulesetItem", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        TargetArn = schema.new({
            id = id.from(_N, "RulesetItem", "TargetArn"),
            type = "string",
            name = "TargetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListRulesetsOutput = schema.new({
    id = id.from(_N, "ListRulesetsResponse"),
    type = "structure",
    members = {
        Rulesets = schema.new({
            id = id.from(_N, "ListRulesetsOutput", "Rulesets"),
            type = "list",
            name = "Rulesets",
            target_id = prelude.Document.id,
            list_member = M.RulesetItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRulesetsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSchedulesInput = schema.new({
    id = id.from(_N, "ListSchedulesRequest"),
    type = "structure",
    members = {
        JobName = schema.new({
            id = id.from(_N, "ListSchedulesInput", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "jobName" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListSchedulesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSchedulesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.Schedule = schema.new({
    id = id.from(_N, "Schedule"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "Schedule", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "Schedule", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "Schedule", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        JobNames = schema.new({
            id = id.from(_N, "Schedule", "JobNames"),
            type = "list",
            name = "JobNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LastModifiedBy = schema.new({
            id = id.from(_N, "Schedule", "LastModifiedBy"),
            type = "string",
            name = "LastModifiedBy",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "Schedule", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "Schedule", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        CronExpression = schema.new({
            id = id.from(_N, "Schedule", "CronExpression"),
            type = "string",
            name = "CronExpression",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "Schedule", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Name = schema.new({
            id = id.from(_N, "Schedule", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListSchedulesOutput = schema.new({
    id = id.from(_N, "ListSchedulesResponse"),
    type = "structure",
    members = {
        Schedules = schema.new({
            id = id.from(_N, "ListSchedulesOutput", "Schedules"),
            type = "list",
            name = "Schedules",
            target_id = prelude.Document.id,
            list_member = M.Schedule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSchedulesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.PublishRecipeInput = schema.new({
    id = id.from(_N, "PublishRecipeRequest"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "PublishRecipeInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "PublishRecipeInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.PublishRecipeOutput = schema.new({
    id = id.from(_N, "PublishRecipeResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PublishRecipeOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ViewFrame = schema.new({
    id = id.from(_N, "ViewFrame"),
    type = "structure",
    members = {
        StartColumnIndex = schema.new({
            id = id.from(_N, "ViewFrame", "StartColumnIndex"),
            type = "integer",
            name = "StartColumnIndex",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ColumnRange = schema.new({
            id = id.from(_N, "ViewFrame", "ColumnRange"),
            type = "integer",
            name = "ColumnRange",
            target_id = prelude.Integer.id,
        }),
        HiddenColumns = schema.new({
            id = id.from(_N, "ViewFrame", "HiddenColumns"),
            type = "list",
            name = "HiddenColumns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StartRowIndex = schema.new({
            id = id.from(_N, "ViewFrame", "StartRowIndex"),
            type = "integer",
            name = "StartRowIndex",
            target_id = prelude.Integer.id,
        }),
        RowRange = schema.new({
            id = id.from(_N, "ViewFrame", "RowRange"),
            type = "integer",
            name = "RowRange",
            target_id = prelude.Integer.id,
        }),
        Analytics = schema.new({
            id = id.from(_N, "ViewFrame", "Analytics"),
            type = "string",
            name = "Analytics",
            target_id = prelude.String.id,
        }),
    },
})

M.SendProjectSessionActionInput = schema.new({
    id = id.from(_N, "SendProjectSessionActionRequest"),
    type = "structure",
    members = {
        Preview = schema.new({
            id = id.from(_N, "SendProjectSessionActionInput", "Preview"),
            type = "boolean",
            name = "Preview",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Name = schema.new({
            id = id.from(_N, "SendProjectSessionActionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RecipeStep = schema.new({
            id = id.from(_N, "SendProjectSessionActionInput", "RecipeStep"),
            type = "structure",
            name = "RecipeStep",
            target_id = id.from(_N, "RecipeStep"),
            target = M.RecipeStep,
        }),
        StepIndex = schema.new({
            id = id.from(_N, "SendProjectSessionActionInput", "StepIndex"),
            type = "integer",
            name = "StepIndex",
            target_id = prelude.Integer.id,
        }),
        ClientSessionId = schema.new({
            id = id.from(_N, "SendProjectSessionActionInput", "ClientSessionId"),
            type = "string",
            name = "ClientSessionId",
            target_id = prelude.String.id,
        }),
        ViewFrame = schema.new({
            id = id.from(_N, "SendProjectSessionActionInput", "ViewFrame"),
            type = "structure",
            name = "ViewFrame",
            target_id = id.from(_N, "ViewFrame"),
            target = M.ViewFrame,
        }),
    },
})

M.SendProjectSessionActionOutput = schema.new({
    id = id.from(_N, "SendProjectSessionActionResponse"),
    type = "structure",
    members = {
        Result = schema.new({
            id = id.from(_N, "SendProjectSessionActionOutput", "Result"),
            type = "string",
            name = "Result",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "SendProjectSessionActionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActionId = schema.new({
            id = id.from(_N, "SendProjectSessionActionOutput", "ActionId"),
            type = "integer",
            name = "ActionId",
            target_id = prelude.Integer.id,
        }),
    },
})

M.StartJobRunInput = schema.new({
    id = id.from(_N, "StartJobRunRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "StartJobRunInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StartJobRunOutput = schema.new({
    id = id.from(_N, "StartJobRunResponse"),
    type = "structure",
    members = {
        RunId = schema.new({
            id = id.from(_N, "StartJobRunOutput", "RunId"),
            type = "string",
            name = "RunId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartProjectSessionInput = schema.new({
    id = id.from(_N, "StartProjectSessionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "StartProjectSessionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AssumeControl = schema.new({
            id = id.from(_N, "StartProjectSessionInput", "AssumeControl"),
            type = "boolean",
            name = "AssumeControl",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.StartProjectSessionOutput = schema.new({
    id = id.from(_N, "StartProjectSessionResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "StartProjectSessionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientSessionId = schema.new({
            id = id.from(_N, "StartProjectSessionOutput", "ClientSessionId"),
            type = "string",
            name = "ClientSessionId",
            target_id = prelude.String.id,
        }),
    },
})

M.StopJobRunInput = schema.new({
    id = id.from(_N, "StopJobRunRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "StopJobRunInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RunId = schema.new({
            id = id.from(_N, "StopJobRunInput", "RunId"),
            type = "string",
            name = "RunId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StopJobRunOutput = schema.new({
    id = id.from(_N, "StopJobRunResponse"),
    type = "structure",
    members = {
        RunId = schema.new({
            id = id.from(_N, "StopJobRunOutput", "RunId"),
            type = "string",
            name = "RunId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateDatasetInput = schema.new({
    id = id.from(_N, "UpdateDatasetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Format = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "Format"),
            type = "string",
            name = "Format",
            target_id = prelude.String.id,
        }),
        FormatOptions = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "FormatOptions"),
            type = "structure",
            name = "FormatOptions",
            target_id = id.from(_N, "FormatOptions"),
            target = M.FormatOptions,
        }),
        Input = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "Input"),
            type = "structure",
            name = "Input",
            target_id = id.from(_N, "Input"),
            target = M.Input,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PathOptions = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "PathOptions"),
            type = "structure",
            name = "PathOptions",
            target_id = id.from(_N, "PathOptions"),
            target = M.PathOptions,
        }),
    },
})

M.UpdateDatasetOutput = schema.new({
    id = id.from(_N, "UpdateDatasetResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateDatasetOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateProfileJobInput = schema.new({
    id = id.from(_N, "UpdateProfileJobRequest"),
    type = "structure",
    members = {
        Configuration = schema.new({
            id = id.from(_N, "UpdateProfileJobInput", "Configuration"),
            type = "structure",
            name = "Configuration",
            target_id = id.from(_N, "ProfileConfiguration"),
            target = M.ProfileConfiguration,
        }),
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "UpdateProfileJobInput", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        EncryptionMode = schema.new({
            id = id.from(_N, "UpdateProfileJobInput", "EncryptionMode"),
            type = "string",
            name = "EncryptionMode",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateProfileJobInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        LogSubscription = schema.new({
            id = id.from(_N, "UpdateProfileJobInput", "LogSubscription"),
            type = "string",
            name = "LogSubscription",
            target_id = prelude.String.id,
        }),
        MaxCapacity = schema.new({
            id = id.from(_N, "UpdateProfileJobInput", "MaxCapacity"),
            type = "integer",
            name = "MaxCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxRetries = schema.new({
            id = id.from(_N, "UpdateProfileJobInput", "MaxRetries"),
            type = "integer",
            name = "MaxRetries",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        OutputLocation = schema.new({
            id = id.from(_N, "UpdateProfileJobInput", "OutputLocation"),
            type = "structure",
            name = "OutputLocation",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ValidationConfigurations = schema.new({
            id = id.from(_N, "UpdateProfileJobInput", "ValidationConfigurations"),
            type = "list",
            name = "ValidationConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ValidationConfiguration,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "UpdateProfileJobInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Timeout = schema.new({
            id = id.from(_N, "UpdateProfileJobInput", "Timeout"),
            type = "integer",
            name = "Timeout",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        JobSample = schema.new({
            id = id.from(_N, "UpdateProfileJobInput", "JobSample"),
            type = "structure",
            name = "JobSample",
            target_id = id.from(_N, "JobSample"),
            target = M.JobSample,
        }),
    },
})

M.UpdateProfileJobOutput = schema.new({
    id = id.from(_N, "UpdateProfileJobResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateProfileJobOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateProjectInput = schema.new({
    id = id.from(_N, "UpdateProjectRequest"),
    type = "structure",
    members = {
        Sample = schema.new({
            id = id.from(_N, "UpdateProjectInput", "Sample"),
            type = "structure",
            name = "Sample",
            target_id = id.from(_N, "Sample"),
            target = M.Sample,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "UpdateProjectInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateProjectInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.UpdateProjectOutput = schema.new({
    id = id.from(_N, "UpdateProjectResponse"),
    type = "structure",
    members = {
        LastModifiedDate = schema.new({
            id = id.from(_N, "UpdateProjectOutput", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateProjectOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRecipeInput = schema.new({
    id = id.from(_N, "UpdateRecipeRequest"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "UpdateRecipeInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateRecipeInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Steps = schema.new({
            id = id.from(_N, "UpdateRecipeInput", "Steps"),
            type = "list",
            name = "Steps",
            target_id = prelude.Document.id,
            list_member = M.RecipeStep,
        }),
    },
})

M.UpdateRecipeOutput = schema.new({
    id = id.from(_N, "UpdateRecipeResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateRecipeOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRecipeJobInput = schema.new({
    id = id.from(_N, "UpdateRecipeJobRequest"),
    type = "structure",
    members = {
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "UpdateRecipeJobInput", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        EncryptionMode = schema.new({
            id = id.from(_N, "UpdateRecipeJobInput", "EncryptionMode"),
            type = "string",
            name = "EncryptionMode",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateRecipeJobInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        LogSubscription = schema.new({
            id = id.from(_N, "UpdateRecipeJobInput", "LogSubscription"),
            type = "string",
            name = "LogSubscription",
            target_id = prelude.String.id,
        }),
        MaxCapacity = schema.new({
            id = id.from(_N, "UpdateRecipeJobInput", "MaxCapacity"),
            type = "integer",
            name = "MaxCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxRetries = schema.new({
            id = id.from(_N, "UpdateRecipeJobInput", "MaxRetries"),
            type = "integer",
            name = "MaxRetries",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Outputs = schema.new({
            id = id.from(_N, "UpdateRecipeJobInput", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.Output,
        }),
        DataCatalogOutputs = schema.new({
            id = id.from(_N, "UpdateRecipeJobInput", "DataCatalogOutputs"),
            type = "list",
            name = "DataCatalogOutputs",
            target_id = prelude.Document.id,
            list_member = M.DataCatalogOutput,
        }),
        DatabaseOutputs = schema.new({
            id = id.from(_N, "UpdateRecipeJobInput", "DatabaseOutputs"),
            type = "list",
            name = "DatabaseOutputs",
            target_id = prelude.Document.id,
            list_member = M.DatabaseOutput,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "UpdateRecipeJobInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Timeout = schema.new({
            id = id.from(_N, "UpdateRecipeJobInput", "Timeout"),
            type = "integer",
            name = "Timeout",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.UpdateRecipeJobOutput = schema.new({
    id = id.from(_N, "UpdateRecipeJobResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateRecipeJobOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRulesetInput = schema.new({
    id = id.from(_N, "UpdateRulesetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateRulesetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateRulesetInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Rules = schema.new({
            id = id.from(_N, "UpdateRulesetInput", "Rules"),
            type = "list",
            name = "Rules",
            target_id = prelude.Document.id,
            list_member = M.Rule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRulesetOutput = schema.new({
    id = id.from(_N, "UpdateRulesetResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateRulesetOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateScheduleInput = schema.new({
    id = id.from(_N, "UpdateScheduleRequest"),
    type = "structure",
    members = {
        JobNames = schema.new({
            id = id.from(_N, "UpdateScheduleInput", "JobNames"),
            type = "list",
            name = "JobNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CronExpression = schema.new({
            id = id.from(_N, "UpdateScheduleInput", "CronExpression"),
            type = "string",
            name = "CronExpression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateScheduleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.UpdateScheduleOutput = schema.new({
    id = id.from(_N, "UpdateScheduleResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateScheduleOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
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
