local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.kinesisanalytics"

local M = {}

M.CloudWatchLoggingOption = schema.new({
    id = id.from(_N, "CloudWatchLoggingOption"),
    type = "structure",
    members = {
        LogStreamARN = schema.new({
            id = id.from(_N, "CloudWatchLoggingOption", "LogStreamARN"),
            type = "string",
            name = "LogStreamARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleARN = schema.new({
            id = id.from(_N, "CloudWatchLoggingOption", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddApplicationCloudWatchLoggingOptionInput = schema.new({
    id = id.from(_N, "AddApplicationCloudWatchLoggingOptionRequest"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "AddApplicationCloudWatchLoggingOptionInput", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CurrentApplicationVersionId = schema.new({
            id = id.from(_N, "AddApplicationCloudWatchLoggingOptionInput", "CurrentApplicationVersionId"),
            type = "long",
            name = "CurrentApplicationVersionId",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CloudWatchLoggingOption = schema.new({
            id = id.from(_N, "AddApplicationCloudWatchLoggingOptionInput", "CloudWatchLoggingOption"),
            type = "structure",
            name = "CloudWatchLoggingOption",
            target_id = id.from(_N, "CloudWatchLoggingOption"),
            target = M.CloudWatchLoggingOption,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddApplicationCloudWatchLoggingOptionOutput = schema.new({
    id = id.from(_N, "AddApplicationCloudWatchLoggingOptionResponse"),
    type = "structure",
})

M.ConcurrentModificationException = schema.new({
    id = id.from(_N, "ConcurrentModificationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConcurrentModificationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidArgumentException = schema.new({
    id = id.from(_N, "InvalidArgumentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidArgumentException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceInUseException = schema.new({
    id = id.from(_N, "ResourceInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceInUseException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedOperationException = schema.new({
    id = id.from(_N, "UnsupportedOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnsupportedOperationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InputParallelism = schema.new({
    id = id.from(_N, "InputParallelism"),
    type = "structure",
    members = {
        Count = schema.new({
            id = id.from(_N, "InputParallelism", "Count"),
            type = "integer",
            name = "Count",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InputLambdaProcessor = schema.new({
    id = id.from(_N, "InputLambdaProcessor"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "InputLambdaProcessor", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleARN = schema.new({
            id = id.from(_N, "InputLambdaProcessor", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InputProcessingConfiguration = schema.new({
    id = id.from(_N, "InputProcessingConfiguration"),
    type = "structure",
    members = {
        InputLambdaProcessor = schema.new({
            id = id.from(_N, "InputProcessingConfiguration", "InputLambdaProcessor"),
            type = "structure",
            name = "InputLambdaProcessor",
            target_id = id.from(_N, "InputLambdaProcessor"),
            target = M.InputLambdaProcessor,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RecordColumn = schema.new({
    id = id.from(_N, "RecordColumn"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RecordColumn", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Mapping = schema.new({
            id = id.from(_N, "RecordColumn", "Mapping"),
            type = "string",
            name = "Mapping",
            target_id = prelude.String.id,
        }),
        SqlType = schema.new({
            id = id.from(_N, "RecordColumn", "SqlType"),
            type = "string",
            name = "SqlType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CSVMappingParameters = schema.new({
    id = id.from(_N, "CSVMappingParameters"),
    type = "structure",
    members = {
        RecordRowDelimiter = schema.new({
            id = id.from(_N, "CSVMappingParameters", "RecordRowDelimiter"),
            type = "string",
            name = "RecordRowDelimiter",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecordColumnDelimiter = schema.new({
            id = id.from(_N, "CSVMappingParameters", "RecordColumnDelimiter"),
            type = "string",
            name = "RecordColumnDelimiter",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.JSONMappingParameters = schema.new({
    id = id.from(_N, "JSONMappingParameters"),
    type = "structure",
    members = {
        RecordRowPath = schema.new({
            id = id.from(_N, "JSONMappingParameters", "RecordRowPath"),
            type = "string",
            name = "RecordRowPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MappingParameters = schema.new({
    id = id.from(_N, "MappingParameters"),
    type = "structure",
    members = {
        JSONMappingParameters = schema.new({
            id = id.from(_N, "MappingParameters", "JSONMappingParameters"),
            type = "structure",
            name = "JSONMappingParameters",
            target_id = id.from(_N, "JSONMappingParameters"),
            target = M.JSONMappingParameters,
        }),
        CSVMappingParameters = schema.new({
            id = id.from(_N, "MappingParameters", "CSVMappingParameters"),
            type = "structure",
            name = "CSVMappingParameters",
            target_id = id.from(_N, "CSVMappingParameters"),
            target = M.CSVMappingParameters,
        }),
    },
})

M.RecordFormat = schema.new({
    id = id.from(_N, "RecordFormat"),
    type = "structure",
    members = {
        RecordFormatType = schema.new({
            id = id.from(_N, "RecordFormat", "RecordFormatType"),
            type = "string",
            name = "RecordFormatType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MappingParameters = schema.new({
            id = id.from(_N, "RecordFormat", "MappingParameters"),
            type = "structure",
            name = "MappingParameters",
            target_id = id.from(_N, "MappingParameters"),
            target = M.MappingParameters,
        }),
    },
})

M.SourceSchema = schema.new({
    id = id.from(_N, "SourceSchema"),
    type = "structure",
    members = {
        RecordFormat = schema.new({
            id = id.from(_N, "SourceSchema", "RecordFormat"),
            type = "structure",
            name = "RecordFormat",
            target_id = id.from(_N, "RecordFormat"),
            target = M.RecordFormat,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecordEncoding = schema.new({
            id = id.from(_N, "SourceSchema", "RecordEncoding"),
            type = "string",
            name = "RecordEncoding",
            target_id = prelude.String.id,
        }),
        RecordColumns = schema.new({
            id = id.from(_N, "SourceSchema", "RecordColumns"),
            type = "list",
            name = "RecordColumns",
            target_id = prelude.Document.id,
            list_member = M.RecordColumn,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KinesisFirehoseInput = schema.new({
    id = id.from(_N, "KinesisFirehoseInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "KinesisFirehoseInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleARN = schema.new({
            id = id.from(_N, "KinesisFirehoseInput", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KinesisStreamsInput = schema.new({
    id = id.from(_N, "KinesisStreamsInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "KinesisStreamsInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleARN = schema.new({
            id = id.from(_N, "KinesisStreamsInput", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Input = schema.new({
    id = id.from(_N, "Input"),
    type = "structure",
    members = {
        NamePrefix = schema.new({
            id = id.from(_N, "Input", "NamePrefix"),
            type = "string",
            name = "NamePrefix",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InputProcessingConfiguration = schema.new({
            id = id.from(_N, "Input", "InputProcessingConfiguration"),
            type = "structure",
            name = "InputProcessingConfiguration",
            target_id = id.from(_N, "InputProcessingConfiguration"),
            target = M.InputProcessingConfiguration,
        }),
        KinesisStreamsInput = schema.new({
            id = id.from(_N, "Input", "KinesisStreamsInput"),
            type = "structure",
            name = "KinesisStreamsInput",
            target_id = id.from(_N, "KinesisStreamsInput"),
            target = M.KinesisStreamsInput,
        }),
        KinesisFirehoseInput = schema.new({
            id = id.from(_N, "Input", "KinesisFirehoseInput"),
            type = "structure",
            name = "KinesisFirehoseInput",
            target_id = id.from(_N, "KinesisFirehoseInput"),
            target = M.KinesisFirehoseInput,
        }),
        InputParallelism = schema.new({
            id = id.from(_N, "Input", "InputParallelism"),
            type = "structure",
            name = "InputParallelism",
            target_id = id.from(_N, "InputParallelism"),
            target = M.InputParallelism,
        }),
        InputSchema = schema.new({
            id = id.from(_N, "Input", "InputSchema"),
            type = "structure",
            name = "InputSchema",
            target_id = id.from(_N, "SourceSchema"),
            target = M.SourceSchema,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddApplicationInputInput = schema.new({
    id = id.from(_N, "AddApplicationInputRequest"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "AddApplicationInputInput", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CurrentApplicationVersionId = schema.new({
            id = id.from(_N, "AddApplicationInputInput", "CurrentApplicationVersionId"),
            type = "long",
            name = "CurrentApplicationVersionId",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Input = schema.new({
            id = id.from(_N, "AddApplicationInputInput", "Input"),
            type = "structure",
            name = "Input",
            target_id = id.from(_N, "Input"),
            target = M.Input,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddApplicationInputOutput = schema.new({
    id = id.from(_N, "AddApplicationInputResponse"),
    type = "structure",
})

M.CodeValidationException = schema.new({
    id = id.from(_N, "CodeValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CodeValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AddApplicationInputProcessingConfigurationInput = schema.new({
    id = id.from(_N, "AddApplicationInputProcessingConfigurationRequest"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "AddApplicationInputProcessingConfigurationInput", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CurrentApplicationVersionId = schema.new({
            id = id.from(_N, "AddApplicationInputProcessingConfigurationInput", "CurrentApplicationVersionId"),
            type = "long",
            name = "CurrentApplicationVersionId",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InputId = schema.new({
            id = id.from(_N, "AddApplicationInputProcessingConfigurationInput", "InputId"),
            type = "string",
            name = "InputId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InputProcessingConfiguration = schema.new({
            id = id.from(_N, "AddApplicationInputProcessingConfigurationInput", "InputProcessingConfiguration"),
            type = "structure",
            name = "InputProcessingConfiguration",
            target_id = id.from(_N, "InputProcessingConfiguration"),
            target = M.InputProcessingConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddApplicationInputProcessingConfigurationOutput = schema.new({
    id = id.from(_N, "AddApplicationInputProcessingConfigurationResponse"),
    type = "structure",
})

M.DestinationSchema = schema.new({
    id = id.from(_N, "DestinationSchema"),
    type = "structure",
    members = {
        RecordFormatType = schema.new({
            id = id.from(_N, "DestinationSchema", "RecordFormatType"),
            type = "string",
            name = "RecordFormatType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KinesisFirehoseOutput = schema.new({
    id = id.from(_N, "KinesisFirehoseOutput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "KinesisFirehoseOutput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleARN = schema.new({
            id = id.from(_N, "KinesisFirehoseOutput", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KinesisStreamsOutput = schema.new({
    id = id.from(_N, "KinesisStreamsOutput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "KinesisStreamsOutput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleARN = schema.new({
            id = id.from(_N, "KinesisStreamsOutput", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LambdaOutput = schema.new({
    id = id.from(_N, "LambdaOutput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "LambdaOutput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleARN = schema.new({
            id = id.from(_N, "LambdaOutput", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Output = schema.new({
    id = id.from(_N, "Output"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Output", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KinesisStreamsOutput = schema.new({
            id = id.from(_N, "Output", "KinesisStreamsOutput"),
            type = "structure",
            name = "KinesisStreamsOutput",
            target_id = id.from(_N, "KinesisStreamsOutput"),
            target = M.KinesisStreamsOutput,
        }),
        KinesisFirehoseOutput = schema.new({
            id = id.from(_N, "Output", "KinesisFirehoseOutput"),
            type = "structure",
            name = "KinesisFirehoseOutput",
            target_id = id.from(_N, "KinesisFirehoseOutput"),
            target = M.KinesisFirehoseOutput,
        }),
        LambdaOutput = schema.new({
            id = id.from(_N, "Output", "LambdaOutput"),
            type = "structure",
            name = "LambdaOutput",
            target_id = id.from(_N, "LambdaOutput"),
            target = M.LambdaOutput,
        }),
        DestinationSchema = schema.new({
            id = id.from(_N, "Output", "DestinationSchema"),
            type = "structure",
            name = "DestinationSchema",
            target_id = id.from(_N, "DestinationSchema"),
            target = M.DestinationSchema,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddApplicationOutputInput = schema.new({
    id = id.from(_N, "AddApplicationOutputRequest"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "AddApplicationOutputInput", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CurrentApplicationVersionId = schema.new({
            id = id.from(_N, "AddApplicationOutputInput", "CurrentApplicationVersionId"),
            type = "long",
            name = "CurrentApplicationVersionId",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Output = schema.new({
            id = id.from(_N, "AddApplicationOutputInput", "Output"),
            type = "structure",
            name = "Output",
            target_id = id.from(_N, "Output"),
            target = M.Output,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddApplicationOutputOutput = schema.new({
    id = id.from(_N, "AddApplicationOutputResponse"),
    type = "structure",
})

M.S3ReferenceDataSource = schema.new({
    id = id.from(_N, "S3ReferenceDataSource"),
    type = "structure",
    members = {
        BucketARN = schema.new({
            id = id.from(_N, "S3ReferenceDataSource", "BucketARN"),
            type = "string",
            name = "BucketARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileKey = schema.new({
            id = id.from(_N, "S3ReferenceDataSource", "FileKey"),
            type = "string",
            name = "FileKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReferenceRoleARN = schema.new({
            id = id.from(_N, "S3ReferenceDataSource", "ReferenceRoleARN"),
            type = "string",
            name = "ReferenceRoleARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReferenceDataSource = schema.new({
    id = id.from(_N, "ReferenceDataSource"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "ReferenceDataSource", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3ReferenceDataSource = schema.new({
            id = id.from(_N, "ReferenceDataSource", "S3ReferenceDataSource"),
            type = "structure",
            name = "S3ReferenceDataSource",
            target_id = id.from(_N, "S3ReferenceDataSource"),
            target = M.S3ReferenceDataSource,
        }),
        ReferenceSchema = schema.new({
            id = id.from(_N, "ReferenceDataSource", "ReferenceSchema"),
            type = "structure",
            name = "ReferenceSchema",
            target_id = id.from(_N, "SourceSchema"),
            target = M.SourceSchema,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddApplicationReferenceDataSourceInput = schema.new({
    id = id.from(_N, "AddApplicationReferenceDataSourceRequest"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "AddApplicationReferenceDataSourceInput", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CurrentApplicationVersionId = schema.new({
            id = id.from(_N, "AddApplicationReferenceDataSourceInput", "CurrentApplicationVersionId"),
            type = "long",
            name = "CurrentApplicationVersionId",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReferenceDataSource = schema.new({
            id = id.from(_N, "AddApplicationReferenceDataSourceInput", "ReferenceDataSource"),
            type = "structure",
            name = "ReferenceDataSource",
            target_id = id.from(_N, "ReferenceDataSource"),
            target = M.ReferenceDataSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddApplicationReferenceDataSourceOutput = schema.new({
    id = id.from(_N, "AddApplicationReferenceDataSourceResponse"),
    type = "structure",
})

M.CloudWatchLoggingOptionDescription = schema.new({
    id = id.from(_N, "CloudWatchLoggingOptionDescription"),
    type = "structure",
    members = {
        CloudWatchLoggingOptionId = schema.new({
            id = id.from(_N, "CloudWatchLoggingOptionDescription", "CloudWatchLoggingOptionId"),
            type = "string",
            name = "CloudWatchLoggingOptionId",
            target_id = prelude.String.id,
        }),
        LogStreamARN = schema.new({
            id = id.from(_N, "CloudWatchLoggingOptionDescription", "LogStreamARN"),
            type = "string",
            name = "LogStreamARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleARN = schema.new({
            id = id.from(_N, "CloudWatchLoggingOptionDescription", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InputLambdaProcessorDescription = schema.new({
    id = id.from(_N, "InputLambdaProcessorDescription"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "InputLambdaProcessorDescription", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "InputLambdaProcessorDescription", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
    },
})

M.InputProcessingConfigurationDescription = schema.new({
    id = id.from(_N, "InputProcessingConfigurationDescription"),
    type = "structure",
    members = {
        InputLambdaProcessorDescription = schema.new({
            id = id.from(_N, "InputProcessingConfigurationDescription", "InputLambdaProcessorDescription"),
            type = "structure",
            name = "InputLambdaProcessorDescription",
            target_id = id.from(_N, "InputLambdaProcessorDescription"),
            target = M.InputLambdaProcessorDescription,
        }),
    },
})

M.InputStartingPositionConfiguration = schema.new({
    id = id.from(_N, "InputStartingPositionConfiguration"),
    type = "structure",
    members = {
        InputStartingPosition = schema.new({
            id = id.from(_N, "InputStartingPositionConfiguration", "InputStartingPosition"),
            type = "string",
            name = "InputStartingPosition",
            target_id = prelude.String.id,
        }),
    },
})

M.KinesisFirehoseInputDescription = schema.new({
    id = id.from(_N, "KinesisFirehoseInputDescription"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "KinesisFirehoseInputDescription", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "KinesisFirehoseInputDescription", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
    },
})

M.KinesisStreamsInputDescription = schema.new({
    id = id.from(_N, "KinesisStreamsInputDescription"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "KinesisStreamsInputDescription", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "KinesisStreamsInputDescription", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
    },
})

M.InputDescription = schema.new({
    id = id.from(_N, "InputDescription"),
    type = "structure",
    members = {
        InputId = schema.new({
            id = id.from(_N, "InputDescription", "InputId"),
            type = "string",
            name = "InputId",
            target_id = prelude.String.id,
        }),
        NamePrefix = schema.new({
            id = id.from(_N, "InputDescription", "NamePrefix"),
            type = "string",
            name = "NamePrefix",
            target_id = prelude.String.id,
        }),
        InAppStreamNames = schema.new({
            id = id.from(_N, "InputDescription", "InAppStreamNames"),
            type = "list",
            name = "InAppStreamNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        InputProcessingConfigurationDescription = schema.new({
            id = id.from(_N, "InputDescription", "InputProcessingConfigurationDescription"),
            type = "structure",
            name = "InputProcessingConfigurationDescription",
            target_id = id.from(_N, "InputProcessingConfigurationDescription"),
            target = M.InputProcessingConfigurationDescription,
        }),
        KinesisStreamsInputDescription = schema.new({
            id = id.from(_N, "InputDescription", "KinesisStreamsInputDescription"),
            type = "structure",
            name = "KinesisStreamsInputDescription",
            target_id = id.from(_N, "KinesisStreamsInputDescription"),
            target = M.KinesisStreamsInputDescription,
        }),
        KinesisFirehoseInputDescription = schema.new({
            id = id.from(_N, "InputDescription", "KinesisFirehoseInputDescription"),
            type = "structure",
            name = "KinesisFirehoseInputDescription",
            target_id = id.from(_N, "KinesisFirehoseInputDescription"),
            target = M.KinesisFirehoseInputDescription,
        }),
        InputSchema = schema.new({
            id = id.from(_N, "InputDescription", "InputSchema"),
            type = "structure",
            name = "InputSchema",
            target_id = id.from(_N, "SourceSchema"),
            target = M.SourceSchema,
        }),
        InputParallelism = schema.new({
            id = id.from(_N, "InputDescription", "InputParallelism"),
            type = "structure",
            name = "InputParallelism",
            target_id = id.from(_N, "InputParallelism"),
            target = M.InputParallelism,
        }),
        InputStartingPositionConfiguration = schema.new({
            id = id.from(_N, "InputDescription", "InputStartingPositionConfiguration"),
            type = "structure",
            name = "InputStartingPositionConfiguration",
            target_id = id.from(_N, "InputStartingPositionConfiguration"),
            target = M.InputStartingPositionConfiguration,
        }),
    },
})

M.KinesisFirehoseOutputDescription = schema.new({
    id = id.from(_N, "KinesisFirehoseOutputDescription"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "KinesisFirehoseOutputDescription", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "KinesisFirehoseOutputDescription", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
    },
})

M.KinesisStreamsOutputDescription = schema.new({
    id = id.from(_N, "KinesisStreamsOutputDescription"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "KinesisStreamsOutputDescription", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "KinesisStreamsOutputDescription", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
    },
})

M.LambdaOutputDescription = schema.new({
    id = id.from(_N, "LambdaOutputDescription"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "LambdaOutputDescription", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "LambdaOutputDescription", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
    },
})

M.OutputDescription = schema.new({
    id = id.from(_N, "OutputDescription"),
    type = "structure",
    members = {
        OutputId = schema.new({
            id = id.from(_N, "OutputDescription", "OutputId"),
            type = "string",
            name = "OutputId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "OutputDescription", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        KinesisStreamsOutputDescription = schema.new({
            id = id.from(_N, "OutputDescription", "KinesisStreamsOutputDescription"),
            type = "structure",
            name = "KinesisStreamsOutputDescription",
            target_id = id.from(_N, "KinesisStreamsOutputDescription"),
            target = M.KinesisStreamsOutputDescription,
        }),
        KinesisFirehoseOutputDescription = schema.new({
            id = id.from(_N, "OutputDescription", "KinesisFirehoseOutputDescription"),
            type = "structure",
            name = "KinesisFirehoseOutputDescription",
            target_id = id.from(_N, "KinesisFirehoseOutputDescription"),
            target = M.KinesisFirehoseOutputDescription,
        }),
        LambdaOutputDescription = schema.new({
            id = id.from(_N, "OutputDescription", "LambdaOutputDescription"),
            type = "structure",
            name = "LambdaOutputDescription",
            target_id = id.from(_N, "LambdaOutputDescription"),
            target = M.LambdaOutputDescription,
        }),
        DestinationSchema = schema.new({
            id = id.from(_N, "OutputDescription", "DestinationSchema"),
            type = "structure",
            name = "DestinationSchema",
            target_id = id.from(_N, "DestinationSchema"),
            target = M.DestinationSchema,
        }),
    },
})

M.S3ReferenceDataSourceDescription = schema.new({
    id = id.from(_N, "S3ReferenceDataSourceDescription"),
    type = "structure",
    members = {
        BucketARN = schema.new({
            id = id.from(_N, "S3ReferenceDataSourceDescription", "BucketARN"),
            type = "string",
            name = "BucketARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileKey = schema.new({
            id = id.from(_N, "S3ReferenceDataSourceDescription", "FileKey"),
            type = "string",
            name = "FileKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReferenceRoleARN = schema.new({
            id = id.from(_N, "S3ReferenceDataSourceDescription", "ReferenceRoleARN"),
            type = "string",
            name = "ReferenceRoleARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReferenceDataSourceDescription = schema.new({
    id = id.from(_N, "ReferenceDataSourceDescription"),
    type = "structure",
    members = {
        ReferenceId = schema.new({
            id = id.from(_N, "ReferenceDataSourceDescription", "ReferenceId"),
            type = "string",
            name = "ReferenceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableName = schema.new({
            id = id.from(_N, "ReferenceDataSourceDescription", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3ReferenceDataSourceDescription = schema.new({
            id = id.from(_N, "ReferenceDataSourceDescription", "S3ReferenceDataSourceDescription"),
            type = "structure",
            name = "S3ReferenceDataSourceDescription",
            target_id = id.from(_N, "S3ReferenceDataSourceDescription"),
            target = M.S3ReferenceDataSourceDescription,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReferenceSchema = schema.new({
            id = id.from(_N, "ReferenceDataSourceDescription", "ReferenceSchema"),
            type = "structure",
            name = "ReferenceSchema",
            target_id = id.from(_N, "SourceSchema"),
            target = M.SourceSchema,
        }),
    },
})

M.ApplicationDetail = schema.new({
    id = id.from(_N, "ApplicationDetail"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "ApplicationDetail", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationDescription = schema.new({
            id = id.from(_N, "ApplicationDetail", "ApplicationDescription"),
            type = "string",
            name = "ApplicationDescription",
            target_id = prelude.String.id,
        }),
        ApplicationARN = schema.new({
            id = id.from(_N, "ApplicationDetail", "ApplicationARN"),
            type = "string",
            name = "ApplicationARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationStatus = schema.new({
            id = id.from(_N, "ApplicationDetail", "ApplicationStatus"),
            type = "string",
            name = "ApplicationStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreateTimestamp = schema.new({
            id = id.from(_N, "ApplicationDetail", "CreateTimestamp"),
            type = "timestamp",
            name = "CreateTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdateTimestamp = schema.new({
            id = id.from(_N, "ApplicationDetail", "LastUpdateTimestamp"),
            type = "timestamp",
            name = "LastUpdateTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        InputDescriptions = schema.new({
            id = id.from(_N, "ApplicationDetail", "InputDescriptions"),
            type = "list",
            name = "InputDescriptions",
            target_id = prelude.Document.id,
            list_member = M.InputDescription,
        }),
        OutputDescriptions = schema.new({
            id = id.from(_N, "ApplicationDetail", "OutputDescriptions"),
            type = "list",
            name = "OutputDescriptions",
            target_id = prelude.Document.id,
            list_member = M.OutputDescription,
        }),
        ReferenceDataSourceDescriptions = schema.new({
            id = id.from(_N, "ApplicationDetail", "ReferenceDataSourceDescriptions"),
            type = "list",
            name = "ReferenceDataSourceDescriptions",
            target_id = prelude.Document.id,
            list_member = M.ReferenceDataSourceDescription,
        }),
        CloudWatchLoggingOptionDescriptions = schema.new({
            id = id.from(_N, "ApplicationDetail", "CloudWatchLoggingOptionDescriptions"),
            type = "list",
            name = "CloudWatchLoggingOptionDescriptions",
            target_id = prelude.Document.id,
            list_member = M.CloudWatchLoggingOptionDescription,
        }),
        ApplicationCode = schema.new({
            id = id.from(_N, "ApplicationDetail", "ApplicationCode"),
            type = "string",
            name = "ApplicationCode",
            target_id = prelude.String.id,
        }),
        ApplicationVersionId = schema.new({
            id = id.from(_N, "ApplicationDetail", "ApplicationVersionId"),
            type = "long",
            name = "ApplicationVersionId",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ApplicationSummary = schema.new({
    id = id.from(_N, "ApplicationSummary"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "ApplicationSummary", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationARN = schema.new({
            id = id.from(_N, "ApplicationSummary", "ApplicationARN"),
            type = "string",
            name = "ApplicationARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationStatus = schema.new({
            id = id.from(_N, "ApplicationSummary", "ApplicationStatus"),
            type = "string",
            name = "ApplicationStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CloudWatchLoggingOptionUpdate = schema.new({
    id = id.from(_N, "CloudWatchLoggingOptionUpdate"),
    type = "structure",
    members = {
        CloudWatchLoggingOptionId = schema.new({
            id = id.from(_N, "CloudWatchLoggingOptionUpdate", "CloudWatchLoggingOptionId"),
            type = "string",
            name = "CloudWatchLoggingOptionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogStreamARNUpdate = schema.new({
            id = id.from(_N, "CloudWatchLoggingOptionUpdate", "LogStreamARNUpdate"),
            type = "string",
            name = "LogStreamARNUpdate",
            target_id = prelude.String.id,
        }),
        RoleARNUpdate = schema.new({
            id = id.from(_N, "CloudWatchLoggingOptionUpdate", "RoleARNUpdate"),
            type = "string",
            name = "RoleARNUpdate",
            target_id = prelude.String.id,
        }),
    },
})

M.InputParallelismUpdate = schema.new({
    id = id.from(_N, "InputParallelismUpdate"),
    type = "structure",
    members = {
        CountUpdate = schema.new({
            id = id.from(_N, "InputParallelismUpdate", "CountUpdate"),
            type = "integer",
            name = "CountUpdate",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InputLambdaProcessorUpdate = schema.new({
    id = id.from(_N, "InputLambdaProcessorUpdate"),
    type = "structure",
    members = {
        ResourceARNUpdate = schema.new({
            id = id.from(_N, "InputLambdaProcessorUpdate", "ResourceARNUpdate"),
            type = "string",
            name = "ResourceARNUpdate",
            target_id = prelude.String.id,
        }),
        RoleARNUpdate = schema.new({
            id = id.from(_N, "InputLambdaProcessorUpdate", "RoleARNUpdate"),
            type = "string",
            name = "RoleARNUpdate",
            target_id = prelude.String.id,
        }),
    },
})

M.InputProcessingConfigurationUpdate = schema.new({
    id = id.from(_N, "InputProcessingConfigurationUpdate"),
    type = "structure",
    members = {
        InputLambdaProcessorUpdate = schema.new({
            id = id.from(_N, "InputProcessingConfigurationUpdate", "InputLambdaProcessorUpdate"),
            type = "structure",
            name = "InputLambdaProcessorUpdate",
            target_id = id.from(_N, "InputLambdaProcessorUpdate"),
            target = M.InputLambdaProcessorUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InputSchemaUpdate = schema.new({
    id = id.from(_N, "InputSchemaUpdate"),
    type = "structure",
    members = {
        RecordFormatUpdate = schema.new({
            id = id.from(_N, "InputSchemaUpdate", "RecordFormatUpdate"),
            type = "structure",
            name = "RecordFormatUpdate",
            target_id = id.from(_N, "RecordFormat"),
            target = M.RecordFormat,
        }),
        RecordEncodingUpdate = schema.new({
            id = id.from(_N, "InputSchemaUpdate", "RecordEncodingUpdate"),
            type = "string",
            name = "RecordEncodingUpdate",
            target_id = prelude.String.id,
        }),
        RecordColumnUpdates = schema.new({
            id = id.from(_N, "InputSchemaUpdate", "RecordColumnUpdates"),
            type = "list",
            name = "RecordColumnUpdates",
            target_id = prelude.Document.id,
            list_member = M.RecordColumn,
        }),
    },
})

M.KinesisFirehoseInputUpdate = schema.new({
    id = id.from(_N, "KinesisFirehoseInputUpdate"),
    type = "structure",
    members = {
        ResourceARNUpdate = schema.new({
            id = id.from(_N, "KinesisFirehoseInputUpdate", "ResourceARNUpdate"),
            type = "string",
            name = "ResourceARNUpdate",
            target_id = prelude.String.id,
        }),
        RoleARNUpdate = schema.new({
            id = id.from(_N, "KinesisFirehoseInputUpdate", "RoleARNUpdate"),
            type = "string",
            name = "RoleARNUpdate",
            target_id = prelude.String.id,
        }),
    },
})

M.KinesisStreamsInputUpdate = schema.new({
    id = id.from(_N, "KinesisStreamsInputUpdate"),
    type = "structure",
    members = {
        ResourceARNUpdate = schema.new({
            id = id.from(_N, "KinesisStreamsInputUpdate", "ResourceARNUpdate"),
            type = "string",
            name = "ResourceARNUpdate",
            target_id = prelude.String.id,
        }),
        RoleARNUpdate = schema.new({
            id = id.from(_N, "KinesisStreamsInputUpdate", "RoleARNUpdate"),
            type = "string",
            name = "RoleARNUpdate",
            target_id = prelude.String.id,
        }),
    },
})

M.InputUpdate = schema.new({
    id = id.from(_N, "InputUpdate"),
    type = "structure",
    members = {
        InputId = schema.new({
            id = id.from(_N, "InputUpdate", "InputId"),
            type = "string",
            name = "InputId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NamePrefixUpdate = schema.new({
            id = id.from(_N, "InputUpdate", "NamePrefixUpdate"),
            type = "string",
            name = "NamePrefixUpdate",
            target_id = prelude.String.id,
        }),
        InputProcessingConfigurationUpdate = schema.new({
            id = id.from(_N, "InputUpdate", "InputProcessingConfigurationUpdate"),
            type = "structure",
            name = "InputProcessingConfigurationUpdate",
            target_id = id.from(_N, "InputProcessingConfigurationUpdate"),
            target = M.InputProcessingConfigurationUpdate,
        }),
        KinesisStreamsInputUpdate = schema.new({
            id = id.from(_N, "InputUpdate", "KinesisStreamsInputUpdate"),
            type = "structure",
            name = "KinesisStreamsInputUpdate",
            target_id = id.from(_N, "KinesisStreamsInputUpdate"),
            target = M.KinesisStreamsInputUpdate,
        }),
        KinesisFirehoseInputUpdate = schema.new({
            id = id.from(_N, "InputUpdate", "KinesisFirehoseInputUpdate"),
            type = "structure",
            name = "KinesisFirehoseInputUpdate",
            target_id = id.from(_N, "KinesisFirehoseInputUpdate"),
            target = M.KinesisFirehoseInputUpdate,
        }),
        InputSchemaUpdate = schema.new({
            id = id.from(_N, "InputUpdate", "InputSchemaUpdate"),
            type = "structure",
            name = "InputSchemaUpdate",
            target_id = id.from(_N, "InputSchemaUpdate"),
            target = M.InputSchemaUpdate,
        }),
        InputParallelismUpdate = schema.new({
            id = id.from(_N, "InputUpdate", "InputParallelismUpdate"),
            type = "structure",
            name = "InputParallelismUpdate",
            target_id = id.from(_N, "InputParallelismUpdate"),
            target = M.InputParallelismUpdate,
        }),
    },
})

M.KinesisFirehoseOutputUpdate = schema.new({
    id = id.from(_N, "KinesisFirehoseOutputUpdate"),
    type = "structure",
    members = {
        ResourceARNUpdate = schema.new({
            id = id.from(_N, "KinesisFirehoseOutputUpdate", "ResourceARNUpdate"),
            type = "string",
            name = "ResourceARNUpdate",
            target_id = prelude.String.id,
        }),
        RoleARNUpdate = schema.new({
            id = id.from(_N, "KinesisFirehoseOutputUpdate", "RoleARNUpdate"),
            type = "string",
            name = "RoleARNUpdate",
            target_id = prelude.String.id,
        }),
    },
})

M.KinesisStreamsOutputUpdate = schema.new({
    id = id.from(_N, "KinesisStreamsOutputUpdate"),
    type = "structure",
    members = {
        ResourceARNUpdate = schema.new({
            id = id.from(_N, "KinesisStreamsOutputUpdate", "ResourceARNUpdate"),
            type = "string",
            name = "ResourceARNUpdate",
            target_id = prelude.String.id,
        }),
        RoleARNUpdate = schema.new({
            id = id.from(_N, "KinesisStreamsOutputUpdate", "RoleARNUpdate"),
            type = "string",
            name = "RoleARNUpdate",
            target_id = prelude.String.id,
        }),
    },
})

M.LambdaOutputUpdate = schema.new({
    id = id.from(_N, "LambdaOutputUpdate"),
    type = "structure",
    members = {
        ResourceARNUpdate = schema.new({
            id = id.from(_N, "LambdaOutputUpdate", "ResourceARNUpdate"),
            type = "string",
            name = "ResourceARNUpdate",
            target_id = prelude.String.id,
        }),
        RoleARNUpdate = schema.new({
            id = id.from(_N, "LambdaOutputUpdate", "RoleARNUpdate"),
            type = "string",
            name = "RoleARNUpdate",
            target_id = prelude.String.id,
        }),
    },
})

M.OutputUpdate = schema.new({
    id = id.from(_N, "OutputUpdate"),
    type = "structure",
    members = {
        OutputId = schema.new({
            id = id.from(_N, "OutputUpdate", "OutputId"),
            type = "string",
            name = "OutputId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NameUpdate = schema.new({
            id = id.from(_N, "OutputUpdate", "NameUpdate"),
            type = "string",
            name = "NameUpdate",
            target_id = prelude.String.id,
        }),
        KinesisStreamsOutputUpdate = schema.new({
            id = id.from(_N, "OutputUpdate", "KinesisStreamsOutputUpdate"),
            type = "structure",
            name = "KinesisStreamsOutputUpdate",
            target_id = id.from(_N, "KinesisStreamsOutputUpdate"),
            target = M.KinesisStreamsOutputUpdate,
        }),
        KinesisFirehoseOutputUpdate = schema.new({
            id = id.from(_N, "OutputUpdate", "KinesisFirehoseOutputUpdate"),
            type = "structure",
            name = "KinesisFirehoseOutputUpdate",
            target_id = id.from(_N, "KinesisFirehoseOutputUpdate"),
            target = M.KinesisFirehoseOutputUpdate,
        }),
        LambdaOutputUpdate = schema.new({
            id = id.from(_N, "OutputUpdate", "LambdaOutputUpdate"),
            type = "structure",
            name = "LambdaOutputUpdate",
            target_id = id.from(_N, "LambdaOutputUpdate"),
            target = M.LambdaOutputUpdate,
        }),
        DestinationSchemaUpdate = schema.new({
            id = id.from(_N, "OutputUpdate", "DestinationSchemaUpdate"),
            type = "structure",
            name = "DestinationSchemaUpdate",
            target_id = id.from(_N, "DestinationSchema"),
            target = M.DestinationSchema,
        }),
    },
})

M.S3ReferenceDataSourceUpdate = schema.new({
    id = id.from(_N, "S3ReferenceDataSourceUpdate"),
    type = "structure",
    members = {
        BucketARNUpdate = schema.new({
            id = id.from(_N, "S3ReferenceDataSourceUpdate", "BucketARNUpdate"),
            type = "string",
            name = "BucketARNUpdate",
            target_id = prelude.String.id,
        }),
        FileKeyUpdate = schema.new({
            id = id.from(_N, "S3ReferenceDataSourceUpdate", "FileKeyUpdate"),
            type = "string",
            name = "FileKeyUpdate",
            target_id = prelude.String.id,
        }),
        ReferenceRoleARNUpdate = schema.new({
            id = id.from(_N, "S3ReferenceDataSourceUpdate", "ReferenceRoleARNUpdate"),
            type = "string",
            name = "ReferenceRoleARNUpdate",
            target_id = prelude.String.id,
        }),
    },
})

M.ReferenceDataSourceUpdate = schema.new({
    id = id.from(_N, "ReferenceDataSourceUpdate"),
    type = "structure",
    members = {
        ReferenceId = schema.new({
            id = id.from(_N, "ReferenceDataSourceUpdate", "ReferenceId"),
            type = "string",
            name = "ReferenceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableNameUpdate = schema.new({
            id = id.from(_N, "ReferenceDataSourceUpdate", "TableNameUpdate"),
            type = "string",
            name = "TableNameUpdate",
            target_id = prelude.String.id,
        }),
        S3ReferenceDataSourceUpdate = schema.new({
            id = id.from(_N, "ReferenceDataSourceUpdate", "S3ReferenceDataSourceUpdate"),
            type = "structure",
            name = "S3ReferenceDataSourceUpdate",
            target_id = id.from(_N, "S3ReferenceDataSourceUpdate"),
            target = M.S3ReferenceDataSourceUpdate,
        }),
        ReferenceSchemaUpdate = schema.new({
            id = id.from(_N, "ReferenceDataSourceUpdate", "ReferenceSchemaUpdate"),
            type = "structure",
            name = "ReferenceSchemaUpdate",
            target_id = id.from(_N, "SourceSchema"),
            target = M.SourceSchema,
        }),
    },
})

M.ApplicationUpdate = schema.new({
    id = id.from(_N, "ApplicationUpdate"),
    type = "structure",
    members = {
        InputUpdates = schema.new({
            id = id.from(_N, "ApplicationUpdate", "InputUpdates"),
            type = "list",
            name = "InputUpdates",
            target_id = prelude.Document.id,
            list_member = M.InputUpdate,
        }),
        ApplicationCodeUpdate = schema.new({
            id = id.from(_N, "ApplicationUpdate", "ApplicationCodeUpdate"),
            type = "string",
            name = "ApplicationCodeUpdate",
            target_id = prelude.String.id,
        }),
        OutputUpdates = schema.new({
            id = id.from(_N, "ApplicationUpdate", "OutputUpdates"),
            type = "list",
            name = "OutputUpdates",
            target_id = prelude.Document.id,
            list_member = M.OutputUpdate,
        }),
        ReferenceDataSourceUpdates = schema.new({
            id = id.from(_N, "ApplicationUpdate", "ReferenceDataSourceUpdates"),
            type = "list",
            name = "ReferenceDataSourceUpdates",
            target_id = prelude.Document.id,
            list_member = M.ReferenceDataSourceUpdate,
        }),
        CloudWatchLoggingOptionUpdates = schema.new({
            id = id.from(_N, "ApplicationUpdate", "CloudWatchLoggingOptionUpdates"),
            type = "list",
            name = "CloudWatchLoggingOptionUpdates",
            target_id = prelude.Document.id,
            list_member = M.CloudWatchLoggingOptionUpdate,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateApplicationInput = schema.new({
    id = id.from(_N, "CreateApplicationRequest"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "CreateApplicationInput", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationDescription = schema.new({
            id = id.from(_N, "CreateApplicationInput", "ApplicationDescription"),
            type = "string",
            name = "ApplicationDescription",
            target_id = prelude.String.id,
        }),
        Inputs = schema.new({
            id = id.from(_N, "CreateApplicationInput", "Inputs"),
            type = "list",
            name = "Inputs",
            target_id = prelude.Document.id,
            list_member = M.Input,
        }),
        Outputs = schema.new({
            id = id.from(_N, "CreateApplicationInput", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.Output,
        }),
        CloudWatchLoggingOptions = schema.new({
            id = id.from(_N, "CreateApplicationInput", "CloudWatchLoggingOptions"),
            type = "list",
            name = "CloudWatchLoggingOptions",
            target_id = prelude.Document.id,
            list_member = M.CloudWatchLoggingOption,
        }),
        ApplicationCode = schema.new({
            id = id.from(_N, "CreateApplicationInput", "ApplicationCode"),
            type = "string",
            name = "ApplicationCode",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateApplicationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateApplicationOutput = schema.new({
    id = id.from(_N, "CreateApplicationResponse"),
    type = "structure",
    members = {
        ApplicationSummary = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "ApplicationSummary"),
            type = "structure",
            name = "ApplicationSummary",
            target_id = id.from(_N, "ApplicationSummary"),
            target = M.ApplicationSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyTagsException = schema.new({
    id = id.from(_N, "TooManyTagsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyTagsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteApplicationInput = schema.new({
    id = id.from(_N, "DeleteApplicationRequest"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "DeleteApplicationInput", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreateTimestamp = schema.new({
            id = id.from(_N, "DeleteApplicationInput", "CreateTimestamp"),
            type = "timestamp",
            name = "CreateTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteApplicationOperationOutput = schema.new({
    id = id.from(_N, "DeleteApplicationResponse"),
    type = "structure",
})

M.DeleteApplicationCloudWatchLoggingOptionInput = schema.new({
    id = id.from(_N, "DeleteApplicationCloudWatchLoggingOptionRequest"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "DeleteApplicationCloudWatchLoggingOptionInput", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CurrentApplicationVersionId = schema.new({
            id = id.from(_N, "DeleteApplicationCloudWatchLoggingOptionInput", "CurrentApplicationVersionId"),
            type = "long",
            name = "CurrentApplicationVersionId",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CloudWatchLoggingOptionId = schema.new({
            id = id.from(_N, "DeleteApplicationCloudWatchLoggingOptionInput", "CloudWatchLoggingOptionId"),
            type = "string",
            name = "CloudWatchLoggingOptionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteApplicationCloudWatchLoggingOptionOutput = schema.new({
    id = id.from(_N, "DeleteApplicationCloudWatchLoggingOptionResponse"),
    type = "structure",
})

M.DeleteApplicationInputProcessingConfigurationInput = schema.new({
    id = id.from(_N, "DeleteApplicationInputProcessingConfigurationRequest"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "DeleteApplicationInputProcessingConfigurationInput", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CurrentApplicationVersionId = schema.new({
            id = id.from(_N, "DeleteApplicationInputProcessingConfigurationInput", "CurrentApplicationVersionId"),
            type = "long",
            name = "CurrentApplicationVersionId",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InputId = schema.new({
            id = id.from(_N, "DeleteApplicationInputProcessingConfigurationInput", "InputId"),
            type = "string",
            name = "InputId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteApplicationInputProcessingConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteApplicationInputProcessingConfigurationResponse"),
    type = "structure",
})

M.DeleteApplicationOutputInput = schema.new({
    id = id.from(_N, "DeleteApplicationOutputRequest"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "DeleteApplicationOutputInput", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CurrentApplicationVersionId = schema.new({
            id = id.from(_N, "DeleteApplicationOutputInput", "CurrentApplicationVersionId"),
            type = "long",
            name = "CurrentApplicationVersionId",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputId = schema.new({
            id = id.from(_N, "DeleteApplicationOutputInput", "OutputId"),
            type = "string",
            name = "OutputId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteApplicationOutputOutput = schema.new({
    id = id.from(_N, "DeleteApplicationOutputResponse"),
    type = "structure",
})

M.DeleteApplicationReferenceDataSourceInput = schema.new({
    id = id.from(_N, "DeleteApplicationReferenceDataSourceRequest"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "DeleteApplicationReferenceDataSourceInput", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CurrentApplicationVersionId = schema.new({
            id = id.from(_N, "DeleteApplicationReferenceDataSourceInput", "CurrentApplicationVersionId"),
            type = "long",
            name = "CurrentApplicationVersionId",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReferenceId = schema.new({
            id = id.from(_N, "DeleteApplicationReferenceDataSourceInput", "ReferenceId"),
            type = "string",
            name = "ReferenceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteApplicationReferenceDataSourceOutput = schema.new({
    id = id.from(_N, "DeleteApplicationReferenceDataSourceResponse"),
    type = "structure",
})

M.DescribeApplicationInput = schema.new({
    id = id.from(_N, "DescribeApplicationRequest"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "DescribeApplicationInput", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeApplicationOutput = schema.new({
    id = id.from(_N, "DescribeApplicationResponse"),
    type = "structure",
    members = {
        ApplicationDetail = schema.new({
            id = id.from(_N, "DescribeApplicationOutput", "ApplicationDetail"),
            type = "structure",
            name = "ApplicationDetail",
            target_id = id.from(_N, "ApplicationDetail"),
            target = M.ApplicationDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.S3Configuration = schema.new({
    id = id.from(_N, "S3Configuration"),
    type = "structure",
    members = {
        RoleARN = schema.new({
            id = id.from(_N, "S3Configuration", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BucketARN = schema.new({
            id = id.from(_N, "S3Configuration", "BucketARN"),
            type = "string",
            name = "BucketARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileKey = schema.new({
            id = id.from(_N, "S3Configuration", "FileKey"),
            type = "string",
            name = "FileKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DiscoverInputSchemaInput = schema.new({
    id = id.from(_N, "DiscoverInputSchemaRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "DiscoverInputSchemaInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "DiscoverInputSchemaInput", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
        InputStartingPositionConfiguration = schema.new({
            id = id.from(_N, "DiscoverInputSchemaInput", "InputStartingPositionConfiguration"),
            type = "structure",
            name = "InputStartingPositionConfiguration",
            target_id = id.from(_N, "InputStartingPositionConfiguration"),
            target = M.InputStartingPositionConfiguration,
        }),
        S3Configuration = schema.new({
            id = id.from(_N, "DiscoverInputSchemaInput", "S3Configuration"),
            type = "structure",
            name = "S3Configuration",
            target_id = id.from(_N, "S3Configuration"),
            target = M.S3Configuration,
        }),
        InputProcessingConfiguration = schema.new({
            id = id.from(_N, "DiscoverInputSchemaInput", "InputProcessingConfiguration"),
            type = "structure",
            name = "InputProcessingConfiguration",
            target_id = id.from(_N, "InputProcessingConfiguration"),
            target = M.InputProcessingConfiguration,
        }),
    },
})

M.DiscoverInputSchemaOutput = schema.new({
    id = id.from(_N, "DiscoverInputSchemaResponse"),
    type = "structure",
    members = {
        InputSchema = schema.new({
            id = id.from(_N, "DiscoverInputSchemaOutput", "InputSchema"),
            type = "structure",
            name = "InputSchema",
            target_id = id.from(_N, "SourceSchema"),
            target = M.SourceSchema,
        }),
        ParsedInputRecords = schema.new({
            id = id.from(_N, "DiscoverInputSchemaOutput", "ParsedInputRecords"),
            type = "list",
            name = "ParsedInputRecords",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "list", list_member = prelude.String }),
        }),
        ProcessedInputRecords = schema.new({
            id = id.from(_N, "DiscoverInputSchemaOutput", "ProcessedInputRecords"),
            type = "list",
            name = "ProcessedInputRecords",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RawInputRecords = schema.new({
            id = id.from(_N, "DiscoverInputSchemaOutput", "RawInputRecords"),
            type = "list",
            name = "RawInputRecords",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ResourceProvisionedThroughputExceededException = schema.new({
    id = id.from(_N, "ResourceProvisionedThroughputExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceProvisionedThroughputExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnableToDetectSchemaException = schema.new({
    id = id.from(_N, "UnableToDetectSchemaException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnableToDetectSchemaException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        RawInputRecords = schema.new({
            id = id.from(_N, "UnableToDetectSchemaException", "RawInputRecords"),
            type = "list",
            name = "RawInputRecords",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ProcessedInputRecords = schema.new({
            id = id.from(_N, "UnableToDetectSchemaException", "ProcessedInputRecords"),
            type = "list",
            name = "ProcessedInputRecords",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.InputConfiguration = schema.new({
    id = id.from(_N, "InputConfiguration"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "InputConfiguration", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InputStartingPositionConfiguration = schema.new({
            id = id.from(_N, "InputConfiguration", "InputStartingPositionConfiguration"),
            type = "structure",
            name = "InputStartingPositionConfiguration",
            target_id = id.from(_N, "InputStartingPositionConfiguration"),
            target = M.InputStartingPositionConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidApplicationConfigurationException = schema.new({
    id = id.from(_N, "InvalidApplicationConfigurationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidApplicationConfigurationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationsInput = schema.new({
    id = id.from(_N, "ListApplicationsRequest"),
    type = "structure",
    members = {
        Limit = schema.new({
            id = id.from(_N, "ListApplicationsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
        ExclusiveStartApplicationName = schema.new({
            id = id.from(_N, "ListApplicationsInput", "ExclusiveStartApplicationName"),
            type = "string",
            name = "ExclusiveStartApplicationName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationsOutput = schema.new({
    id = id.from(_N, "ListApplicationsResponse"),
    type = "structure",
    members = {
        ApplicationSummaries = schema.new({
            id = id.from(_N, "ListApplicationsOutput", "ApplicationSummaries"),
            type = "list",
            name = "ApplicationSummaries",
            target_id = prelude.Document.id,
            list_member = M.ApplicationSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HasMoreApplications = schema.new({
            id = id.from(_N, "ListApplicationsOutput", "HasMoreApplications"),
            type = "boolean",
            name = "HasMoreApplications",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
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
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.StartApplicationInput = schema.new({
    id = id.from(_N, "StartApplicationRequest"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "StartApplicationInput", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InputConfigurations = schema.new({
            id = id.from(_N, "StartApplicationInput", "InputConfigurations"),
            type = "list",
            name = "InputConfigurations",
            target_id = prelude.Document.id,
            list_member = M.InputConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartApplicationOutput = schema.new({
    id = id.from(_N, "StartApplicationResponse"),
    type = "structure",
})

M.StopApplicationInput = schema.new({
    id = id.from(_N, "StopApplicationRequest"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "StopApplicationInput", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopApplicationOutput = schema.new({
    id = id.from(_N, "StopApplicationResponse"),
    type = "structure",
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
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
        ResourceARN = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
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
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateApplicationInput = schema.new({
    id = id.from(_N, "UpdateApplicationRequest"),
    type = "structure",
    members = {
        ApplicationName = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "ApplicationName"),
            type = "string",
            name = "ApplicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CurrentApplicationVersionId = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "CurrentApplicationVersionId"),
            type = "long",
            name = "CurrentApplicationVersionId",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationUpdate = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "ApplicationUpdate"),
            type = "structure",
            name = "ApplicationUpdate",
            target_id = id.from(_N, "ApplicationUpdate"),
            target = M.ApplicationUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateApplicationOutput = schema.new({
    id = id.from(_N, "UpdateApplicationResponse"),
    type = "structure",
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
