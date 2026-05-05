local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.bedrockdataautomationruntime"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDataAutomationStatusInput = schema.new({
    id = id.from(_N, "GetDataAutomationStatusInput"),
    type = "structure",
    members = {
        invocationArn = schema.new({
            id = id.from(_N, "GetDataAutomationStatusInput", "invocationArn"),
            type = "string",
            name = "invocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.OutputConfiguration = schema.new({
    id = id.from(_N, "OutputConfiguration"),
    type = "structure",
    members = {
        s3Uri = schema.new({
            id = id.from(_N, "OutputConfiguration", "s3Uri"),
            type = "string",
            name = "s3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDataAutomationStatusOutput = schema.new({
    id = id.from(_N, "GetDataAutomationStatusOutput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "GetDataAutomationStatusOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        errorType = schema.new({
            id = id.from(_N, "GetDataAutomationStatusOutput", "errorType"),
            type = "string",
            name = "errorType",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "GetDataAutomationStatusOutput", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        outputConfiguration = schema.new({
            id = id.from(_N, "GetDataAutomationStatusOutput", "outputConfiguration"),
            type = "structure",
            name = "outputConfiguration",
            target_id = id.from(_N, "OutputConfiguration"),
            target = M.OutputConfiguration,
        }),
        jobSubmissionTime = schema.new({
            id = id.from(_N, "GetDataAutomationStatusOutput", "jobSubmissionTime"),
            type = "timestamp",
            name = "jobSubmissionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        jobCompletionTime = schema.new({
            id = id.from(_N, "GetDataAutomationStatusOutput", "jobCompletionTime"),
            type = "timestamp",
            name = "jobCompletionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        jobDurationInSeconds = schema.new({
            id = id.from(_N, "GetDataAutomationStatusOutput", "jobDurationInSeconds"),
            type = "integer",
            name = "jobDurationInSeconds",
            target_id = prelude.Integer.id,
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
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
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

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Blueprint = schema.new({
    id = id.from(_N, "Blueprint"),
    type = "structure",
    members = {
        blueprintArn = schema.new({
            id = id.from(_N, "Blueprint", "blueprintArn"),
            type = "string",
            name = "blueprintArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        version = schema.new({
            id = id.from(_N, "Blueprint", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        stage = schema.new({
            id = id.from(_N, "Blueprint", "stage"),
            type = "string",
            name = "stage",
            target_id = prelude.String.id,
        }),
    },
})

M.DataAutomationConfiguration = schema.new({
    id = id.from(_N, "DataAutomationConfiguration"),
    type = "structure",
    members = {
        dataAutomationProjectArn = schema.new({
            id = id.from(_N, "DataAutomationConfiguration", "dataAutomationProjectArn"),
            type = "string",
            name = "dataAutomationProjectArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        stage = schema.new({
            id = id.from(_N, "DataAutomationConfiguration", "stage"),
            type = "string",
            name = "stage",
            target_id = prelude.String.id,
        }),
    },
})

M.EncryptionConfiguration = schema.new({
    id = id.from(_N, "EncryptionConfiguration"),
    type = "structure",
    members = {
        kmsKeyId = schema.new({
            id = id.from(_N, "EncryptionConfiguration", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsEncryptionContext = schema.new({
            id = id.from(_N, "EncryptionConfiguration", "kmsEncryptionContext"),
            type = "map",
            name = "kmsEncryptionContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.TimestampSegment = schema.new({
    id = id.from(_N, "TimestampSegment"),
    type = "structure",
    members = {
        startTimeMillis = schema.new({
            id = id.from(_N, "TimestampSegment", "startTimeMillis"),
            type = "long",
            name = "startTimeMillis",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        endTimeMillis = schema.new({
            id = id.from(_N, "TimestampSegment", "endTimeMillis"),
            type = "long",
            name = "endTimeMillis",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VideoSegmentConfiguration = schema.new({
    id = id.from(_N, "VideoSegmentConfiguration"),
    type = "union",
    members = {
        timestampSegment = schema.new({
            id = id.from(_N, "VideoSegmentConfiguration", "timestampSegment"),
            type = "structure",
            name = "timestampSegment",
            target_id = id.from(_N, "TimestampSegment"),
            target = M.TimestampSegment,
        }),
    },
})

M.VideoAssetProcessingConfiguration = schema.new({
    id = id.from(_N, "VideoAssetProcessingConfiguration"),
    type = "structure",
    members = {
        segmentConfiguration = schema.new({
            id = id.from(_N, "VideoAssetProcessingConfiguration", "segmentConfiguration"),
            type = "union",
            name = "segmentConfiguration",
            target_id = id.from(_N, "VideoSegmentConfiguration"),
            target = M.VideoSegmentConfiguration,
        }),
    },
})

M.AssetProcessingConfiguration = schema.new({
    id = id.from(_N, "AssetProcessingConfiguration"),
    type = "structure",
    members = {
        video = schema.new({
            id = id.from(_N, "AssetProcessingConfiguration", "video"),
            type = "structure",
            name = "video",
            target_id = id.from(_N, "VideoAssetProcessingConfiguration"),
            target = M.VideoAssetProcessingConfiguration,
        }),
    },
})

M.InputConfiguration = schema.new({
    id = id.from(_N, "InputConfiguration"),
    type = "structure",
    members = {
        s3Uri = schema.new({
            id = id.from(_N, "InputConfiguration", "s3Uri"),
            type = "string",
            name = "s3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetProcessingConfiguration = schema.new({
            id = id.from(_N, "InputConfiguration", "assetProcessingConfiguration"),
            type = "structure",
            name = "assetProcessingConfiguration",
            target_id = id.from(_N, "AssetProcessingConfiguration"),
            target = M.AssetProcessingConfiguration,
        }),
    },
})

M.EventBridgeConfiguration = schema.new({
    id = id.from(_N, "EventBridgeConfiguration"),
    type = "structure",
    members = {
        eventBridgeEnabled = schema.new({
            id = id.from(_N, "EventBridgeConfiguration", "eventBridgeEnabled"),
            type = "boolean",
            name = "eventBridgeEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NotificationConfiguration = schema.new({
    id = id.from(_N, "NotificationConfiguration"),
    type = "structure",
    members = {
        eventBridgeConfiguration = schema.new({
            id = id.from(_N, "NotificationConfiguration", "eventBridgeConfiguration"),
            type = "structure",
            name = "eventBridgeConfiguration",
            target_id = id.from(_N, "EventBridgeConfiguration"),
            target = M.EventBridgeConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "Tag", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "Tag", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvokeDataAutomationAsyncInput = schema.new({
    id = id.from(_N, "InvokeDataAutomationAsyncInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "InvokeDataAutomationAsyncInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        inputConfiguration = schema.new({
            id = id.from(_N, "InvokeDataAutomationAsyncInput", "inputConfiguration"),
            type = "structure",
            name = "inputConfiguration",
            target_id = id.from(_N, "InputConfiguration"),
            target = M.InputConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputConfiguration = schema.new({
            id = id.from(_N, "InvokeDataAutomationAsyncInput", "outputConfiguration"),
            type = "structure",
            name = "outputConfiguration",
            target_id = id.from(_N, "OutputConfiguration"),
            target = M.OutputConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataAutomationConfiguration = schema.new({
            id = id.from(_N, "InvokeDataAutomationAsyncInput", "dataAutomationConfiguration"),
            type = "structure",
            name = "dataAutomationConfiguration",
            target_id = id.from(_N, "DataAutomationConfiguration"),
            target = M.DataAutomationConfiguration,
        }),
        encryptionConfiguration = schema.new({
            id = id.from(_N, "InvokeDataAutomationAsyncInput", "encryptionConfiguration"),
            type = "structure",
            name = "encryptionConfiguration",
            target_id = id.from(_N, "EncryptionConfiguration"),
            target = M.EncryptionConfiguration,
        }),
        notificationConfiguration = schema.new({
            id = id.from(_N, "InvokeDataAutomationAsyncInput", "notificationConfiguration"),
            type = "structure",
            name = "notificationConfiguration",
            target_id = id.from(_N, "NotificationConfiguration"),
            target = M.NotificationConfiguration,
        }),
        blueprints = schema.new({
            id = id.from(_N, "InvokeDataAutomationAsyncInput", "blueprints"),
            type = "list",
            name = "blueprints",
            target_id = prelude.Document.id,
            list_member = M.Blueprint,
        }),
        dataAutomationProfileArn = schema.new({
            id = id.from(_N, "InvokeDataAutomationAsyncInput", "dataAutomationProfileArn"),
            type = "string",
            name = "dataAutomationProfileArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "InvokeDataAutomationAsyncInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.InvokeDataAutomationAsyncOutput = schema.new({
    id = id.from(_N, "InvokeDataAutomationAsyncOutput"),
    type = "structure",
    members = {
        invocationArn = schema.new({
            id = id.from(_N, "InvokeDataAutomationAsyncOutput", "invocationArn"),
            type = "string",
            name = "invocationArn",
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
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SyncInputConfiguration = schema.new({
    id = id.from(_N, "SyncInputConfiguration"),
    type = "structure",
    members = {
        bytes = schema.new({
            id = id.from(_N, "SyncInputConfiguration", "bytes"),
            type = "blob",
            name = "bytes",
            target_id = prelude.Blob.id,
        }),
        s3Uri = schema.new({
            id = id.from(_N, "SyncInputConfiguration", "s3Uri"),
            type = "string",
            name = "s3Uri",
            target_id = prelude.String.id,
        }),
    },
})

M.InvokeDataAutomationInput = schema.new({
    id = id.from(_N, "InvokeDataAutomationInput"),
    type = "structure",
    members = {
        inputConfiguration = schema.new({
            id = id.from(_N, "InvokeDataAutomationInput", "inputConfiguration"),
            type = "structure",
            name = "inputConfiguration",
            target_id = id.from(_N, "SyncInputConfiguration"),
            target = M.SyncInputConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataAutomationConfiguration = schema.new({
            id = id.from(_N, "InvokeDataAutomationInput", "dataAutomationConfiguration"),
            type = "structure",
            name = "dataAutomationConfiguration",
            target_id = id.from(_N, "DataAutomationConfiguration"),
            target = M.DataAutomationConfiguration,
        }),
        blueprints = schema.new({
            id = id.from(_N, "InvokeDataAutomationInput", "blueprints"),
            type = "list",
            name = "blueprints",
            target_id = prelude.Document.id,
            list_member = M.Blueprint,
        }),
        dataAutomationProfileArn = schema.new({
            id = id.from(_N, "InvokeDataAutomationInput", "dataAutomationProfileArn"),
            type = "string",
            name = "dataAutomationProfileArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        encryptionConfiguration = schema.new({
            id = id.from(_N, "InvokeDataAutomationInput", "encryptionConfiguration"),
            type = "structure",
            name = "encryptionConfiguration",
            target_id = id.from(_N, "EncryptionConfiguration"),
            target = M.EncryptionConfiguration,
        }),
        outputConfiguration = schema.new({
            id = id.from(_N, "InvokeDataAutomationInput", "outputConfiguration"),
            type = "structure",
            name = "outputConfiguration",
            target_id = id.from(_N, "OutputConfiguration"),
            target = M.OutputConfiguration,
        }),
    },
})

M.OutputSegment = schema.new({
    id = id.from(_N, "OutputSegment"),
    type = "structure",
    members = {
        customOutputStatus = schema.new({
            id = id.from(_N, "OutputSegment", "customOutputStatus"),
            type = "string",
            name = "customOutputStatus",
            target_id = prelude.String.id,
        }),
        customOutput = schema.new({
            id = id.from(_N, "OutputSegment", "customOutput"),
            type = "string",
            name = "customOutput",
            target_id = prelude.String.id,
        }),
        standardOutput = schema.new({
            id = id.from(_N, "OutputSegment", "standardOutput"),
            type = "string",
            name = "standardOutput",
            target_id = prelude.String.id,
        }),
    },
})

M.InvokeDataAutomationOutput = schema.new({
    id = id.from(_N, "InvokeDataAutomationOutput"),
    type = "structure",
    members = {
        outputConfiguration = schema.new({
            id = id.from(_N, "InvokeDataAutomationOutput", "outputConfiguration"),
            type = "structure",
            name = "outputConfiguration",
            target_id = id.from(_N, "OutputConfiguration"),
            target = M.OutputConfiguration,
        }),
        semanticModality = schema.new({
            id = id.from(_N, "InvokeDataAutomationOutput", "semanticModality"),
            type = "string",
            name = "semanticModality",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputSegments = schema.new({
            id = id.from(_N, "InvokeDataAutomationOutput", "outputSegments"),
            type = "list",
            name = "outputSegments",
            target_id = prelude.Document.id,
            list_member = M.OutputSegment,
            traits = {
                [traits.DEFAULT] = { value = {} },
            },
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

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        resourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceARN"),
            type = "string",
            name = "resourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        resourceARN = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceARN"),
            type = "string",
            name = "resourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        resourceARN = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceARN"),
            type = "string",
            name = "resourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

return M
