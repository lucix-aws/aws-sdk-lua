local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.mwaaserverless"

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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetryAfterSeconds = schema.new({
            id = id.from(_N, "InternalServerException", "RetryAfterSeconds"),
            type = "integer",
            name = "RetryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
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
    id = id.from(_N, "ListTagsForResourceOutput"),
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

M.OperationTimeoutException = schema.new({
    id = id.from(_N, "OperationTimeoutException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OperationTimeoutException", "Message"),
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceCode = schema.new({
            id = id.from(_N, "ThrottlingException", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "ThrottlingException", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetryAfterSeconds = schema.new({
            id = id.from(_N, "ThrottlingException", "RetryAfterSeconds"),
            type = "integer",
            name = "RetryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ValidationExceptionField", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "ValidationException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FieldList = schema.new({
            id = id.from(_N, "ValidationException", "FieldList"),
            type = "list",
            name = "FieldList",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
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
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.GetTaskInstanceInput = schema.new({
    id = id.from(_N, "GetTaskInstanceInput"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "GetTaskInstanceInput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TaskInstanceId = schema.new({
            id = id.from(_N, "GetTaskInstanceInput", "TaskInstanceId"),
            type = "string",
            name = "TaskInstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RunId = schema.new({
            id = id.from(_N, "GetTaskInstanceInput", "RunId"),
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

M.GetTaskInstanceOutput = schema.new({
    id = id.from(_N, "GetTaskInstanceOutput"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "GetTaskInstanceOutput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RunId = schema.new({
            id = id.from(_N, "GetTaskInstanceOutput", "RunId"),
            type = "string",
            name = "RunId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TaskInstanceId = schema.new({
            id = id.from(_N, "GetTaskInstanceOutput", "TaskInstanceId"),
            type = "string",
            name = "TaskInstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WorkflowVersion = schema.new({
            id = id.from(_N, "GetTaskInstanceOutput", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetTaskInstanceOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        DurationInSeconds = schema.new({
            id = id.from(_N, "GetTaskInstanceOutput", "DurationInSeconds"),
            type = "integer",
            name = "DurationInSeconds",
            target_id = prelude.Integer.id,
        }),
        OperatorName = schema.new({
            id = id.from(_N, "GetTaskInstanceOutput", "OperatorName"),
            type = "string",
            name = "OperatorName",
            target_id = prelude.String.id,
        }),
        ModifiedAt = schema.new({
            id = id.from(_N, "GetTaskInstanceOutput", "ModifiedAt"),
            type = "timestamp",
            name = "ModifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        EndedAt = schema.new({
            id = id.from(_N, "GetTaskInstanceOutput", "EndedAt"),
            type = "timestamp",
            name = "EndedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        StartedAt = schema.new({
            id = id.from(_N, "GetTaskInstanceOutput", "StartedAt"),
            type = "timestamp",
            name = "StartedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        AttemptNumber = schema.new({
            id = id.from(_N, "GetTaskInstanceOutput", "AttemptNumber"),
            type = "integer",
            name = "AttemptNumber",
            target_id = prelude.Integer.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "GetTaskInstanceOutput", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        TaskId = schema.new({
            id = id.from(_N, "GetTaskInstanceOutput", "TaskId"),
            type = "string",
            name = "TaskId",
            target_id = prelude.String.id,
        }),
        LogStream = schema.new({
            id = id.from(_N, "GetTaskInstanceOutput", "LogStream"),
            type = "string",
            name = "LogStream",
            target_id = prelude.String.id,
        }),
        Xcom = schema.new({
            id = id.from(_N, "GetTaskInstanceOutput", "Xcom"),
            type = "map",
            name = "Xcom",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListTaskInstancesInput = schema.new({
    id = id.from(_N, "ListTaskInstancesInput"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "ListTaskInstancesInput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RunId = schema.new({
            id = id.from(_N, "ListTaskInstancesInput", "RunId"),
            type = "string",
            name = "RunId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListTaskInstancesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 20 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTaskInstancesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.TaskInstanceSummary = schema.new({
    id = id.from(_N, "TaskInstanceSummary"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "TaskInstanceSummary", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
        }),
        WorkflowVersion = schema.new({
            id = id.from(_N, "TaskInstanceSummary", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
        }),
        RunId = schema.new({
            id = id.from(_N, "TaskInstanceSummary", "RunId"),
            type = "string",
            name = "RunId",
            target_id = prelude.String.id,
        }),
        TaskInstanceId = schema.new({
            id = id.from(_N, "TaskInstanceSummary", "TaskInstanceId"),
            type = "string",
            name = "TaskInstanceId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "TaskInstanceSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        DurationInSeconds = schema.new({
            id = id.from(_N, "TaskInstanceSummary", "DurationInSeconds"),
            type = "integer",
            name = "DurationInSeconds",
            target_id = prelude.Integer.id,
        }),
        OperatorName = schema.new({
            id = id.from(_N, "TaskInstanceSummary", "OperatorName"),
            type = "string",
            name = "OperatorName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTaskInstancesOutput = schema.new({
    id = id.from(_N, "ListTaskInstancesOutput"),
    type = "structure",
    members = {
        TaskInstances = schema.new({
            id = id.from(_N, "ListTaskInstancesOutput", "TaskInstances"),
            type = "list",
            name = "TaskInstances",
            target_id = prelude.Document.id,
            list_member = M.TaskInstanceSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTaskInstancesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
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
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ConflictException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ConflictException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DefinitionS3Location = schema.new({
    id = id.from(_N, "DefinitionS3Location"),
    type = "structure",
    members = {
        Bucket = schema.new({
            id = id.from(_N, "DefinitionS3Location", "Bucket"),
            type = "string",
            name = "Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ObjectKey = schema.new({
            id = id.from(_N, "DefinitionS3Location", "ObjectKey"),
            type = "string",
            name = "ObjectKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionId = schema.new({
            id = id.from(_N, "DefinitionS3Location", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
        }),
    },
})

M.EncryptionConfiguration = schema.new({
    id = id.from(_N, "EncryptionConfiguration"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "EncryptionConfiguration", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "EncryptionConfiguration", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.LoggingConfiguration = schema.new({
    id = id.from(_N, "LoggingConfiguration"),
    type = "structure",
    members = {
        LogGroupName = schema.new({
            id = id.from(_N, "LoggingConfiguration", "LogGroupName"),
            type = "string",
            name = "LogGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NetworkConfiguration = schema.new({
    id = id.from(_N, "NetworkConfiguration"),
    type = "structure",
    members = {
        SecurityGroupIds = schema.new({
            id = id.from(_N, "NetworkConfiguration", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "NetworkConfiguration", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateWorkflowInput = schema.new({
    id = id.from(_N, "CreateWorkflowInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        DefinitionS3Location = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "DefinitionS3Location"),
            type = "structure",
            name = "DefinitionS3Location",
            target_id = id.from(_N, "DefinitionS3Location"),
            target = M.DefinitionS3Location,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleArn = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        EncryptionConfiguration = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "EncryptionConfiguration"),
            type = "structure",
            name = "EncryptionConfiguration",
            target_id = id.from(_N, "EncryptionConfiguration"),
            target = M.EncryptionConfiguration,
        }),
        LoggingConfiguration = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "LoggingConfiguration"),
            type = "structure",
            name = "LoggingConfiguration",
            target_id = id.from(_N, "LoggingConfiguration"),
            target = M.LoggingConfiguration,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "EngineVersion"),
            type = "number",
            name = "EngineVersion",
            target_id = prelude.Integer.id,
        }),
        NetworkConfiguration = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "NetworkConfiguration"),
            type = "structure",
            name = "NetworkConfiguration",
            target_id = id.from(_N, "NetworkConfiguration"),
            target = M.NetworkConfiguration,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        TriggerMode = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "TriggerMode"),
            type = "string",
            name = "TriggerMode",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateWorkflowOutput = schema.new({
    id = id.from(_N, "CreateWorkflowOutput"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        RevisionId = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "RevisionId"),
            type = "string",
            name = "RevisionId",
            target_id = prelude.String.id,
        }),
        WorkflowStatus = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "WorkflowStatus"),
            type = "string",
            name = "WorkflowStatus",
            target_id = prelude.String.id,
        }),
        WorkflowVersion = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
        }),
        IsLatestVersion = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "IsLatestVersion"),
            type = "boolean",
            name = "IsLatestVersion",
            target_id = prelude.Boolean.id,
        }),
        Warnings = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "Warnings"),
            type = "list",
            name = "Warnings",
            target_id = prelude.Document.id,
            list_member = prelude.String,
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteWorkflowInput = schema.new({
    id = id.from(_N, "DeleteWorkflowInput"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "DeleteWorkflowInput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        WorkflowVersion = schema.new({
            id = id.from(_N, "DeleteWorkflowInput", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "workflowVersion" },
            },
        }),
    },
})

M.DeleteWorkflowOutput = schema.new({
    id = id.from(_N, "DeleteWorkflowOutput"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "DeleteWorkflowOutput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WorkflowVersion = schema.new({
            id = id.from(_N, "DeleteWorkflowOutput", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.GetWorkflowInput = schema.new({
    id = id.from(_N, "GetWorkflowInput"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "GetWorkflowInput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        WorkflowVersion = schema.new({
            id = id.from(_N, "GetWorkflowInput", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "workflowVersion" },
            },
        }),
    },
})

M.ScheduleConfiguration = schema.new({
    id = id.from(_N, "ScheduleConfiguration"),
    type = "structure",
    members = {
        CronExpression = schema.new({
            id = id.from(_N, "ScheduleConfiguration", "CronExpression"),
            type = "string",
            name = "CronExpression",
            target_id = prelude.String.id,
        }),
    },
})

M.GetWorkflowOutput = schema.new({
    id = id.from(_N, "GetWorkflowOutput"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WorkflowVersion = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        ModifiedAt = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "ModifiedAt"),
            type = "timestamp",
            name = "ModifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        EncryptionConfiguration = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "EncryptionConfiguration"),
            type = "structure",
            name = "EncryptionConfiguration",
            target_id = id.from(_N, "EncryptionConfiguration"),
            target = M.EncryptionConfiguration,
        }),
        LoggingConfiguration = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "LoggingConfiguration"),
            type = "structure",
            name = "LoggingConfiguration",
            target_id = id.from(_N, "LoggingConfiguration"),
            target = M.LoggingConfiguration,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "EngineVersion"),
            type = "number",
            name = "EngineVersion",
            target_id = prelude.Integer.id,
        }),
        WorkflowStatus = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "WorkflowStatus"),
            type = "string",
            name = "WorkflowStatus",
            target_id = prelude.String.id,
        }),
        DefinitionS3Location = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "DefinitionS3Location"),
            type = "structure",
            name = "DefinitionS3Location",
            target_id = id.from(_N, "DefinitionS3Location"),
            target = M.DefinitionS3Location,
        }),
        ScheduleConfiguration = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "ScheduleConfiguration"),
            type = "structure",
            name = "ScheduleConfiguration",
            target_id = id.from(_N, "ScheduleConfiguration"),
            target = M.ScheduleConfiguration,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        NetworkConfiguration = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "NetworkConfiguration"),
            type = "structure",
            name = "NetworkConfiguration",
            target_id = id.from(_N, "NetworkConfiguration"),
            target = M.NetworkConfiguration,
        }),
        TriggerMode = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "TriggerMode"),
            type = "string",
            name = "TriggerMode",
            target_id = prelude.String.id,
        }),
        WorkflowDefinition = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "WorkflowDefinition"),
            type = "string",
            name = "WorkflowDefinition",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWorkflowsInput = schema.new({
    id = id.from(_N, "ListWorkflowsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 20 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.WorkflowSummary = schema.new({
    id = id.from(_N, "WorkflowSummary"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "WorkflowSummary", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WorkflowVersion = schema.new({
            id = id.from(_N, "WorkflowSummary", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "WorkflowSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "WorkflowSummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "WorkflowSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        ModifiedAt = schema.new({
            id = id.from(_N, "WorkflowSummary", "ModifiedAt"),
            type = "timestamp",
            name = "ModifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        WorkflowStatus = schema.new({
            id = id.from(_N, "WorkflowSummary", "WorkflowStatus"),
            type = "string",
            name = "WorkflowStatus",
            target_id = prelude.String.id,
        }),
        TriggerMode = schema.new({
            id = id.from(_N, "WorkflowSummary", "TriggerMode"),
            type = "string",
            name = "TriggerMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWorkflowsOutput = schema.new({
    id = id.from(_N, "ListWorkflowsOutput"),
    type = "structure",
    members = {
        Workflows = schema.new({
            id = id.from(_N, "ListWorkflowsOutput", "Workflows"),
            type = "list",
            name = "Workflows",
            target_id = prelude.Document.id,
            list_member = M.WorkflowSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListWorkflowsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateWorkflowInput = schema.new({
    id = id.from(_N, "UpdateWorkflowInput"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DefinitionS3Location = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "DefinitionS3Location"),
            type = "structure",
            name = "DefinitionS3Location",
            target_id = id.from(_N, "DefinitionS3Location"),
            target = M.DefinitionS3Location,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleArn = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LoggingConfiguration = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "LoggingConfiguration"),
            type = "structure",
            name = "LoggingConfiguration",
            target_id = id.from(_N, "LoggingConfiguration"),
            target = M.LoggingConfiguration,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "EngineVersion"),
            type = "number",
            name = "EngineVersion",
            target_id = prelude.Integer.id,
        }),
        NetworkConfiguration = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "NetworkConfiguration"),
            type = "structure",
            name = "NetworkConfiguration",
            target_id = id.from(_N, "NetworkConfiguration"),
            target = M.NetworkConfiguration,
        }),
        TriggerMode = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "TriggerMode"),
            type = "string",
            name = "TriggerMode",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateWorkflowOutput = schema.new({
    id = id.from(_N, "UpdateWorkflowOutput"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ModifiedAt = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "ModifiedAt"),
            type = "timestamp",
            name = "ModifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        WorkflowVersion = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
        }),
        Warnings = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "Warnings"),
            type = "list",
            name = "Warnings",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetWorkflowRunInput = schema.new({
    id = id.from(_N, "GetWorkflowRunInput"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "GetWorkflowRunInput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RunId = schema.new({
            id = id.from(_N, "GetWorkflowRunInput", "RunId"),
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

M.WorkflowRunDetail = schema.new({
    id = id.from(_N, "WorkflowRunDetail"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "WorkflowRunDetail", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
        }),
        WorkflowVersion = schema.new({
            id = id.from(_N, "WorkflowRunDetail", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
        }),
        RunId = schema.new({
            id = id.from(_N, "WorkflowRunDetail", "RunId"),
            type = "string",
            name = "RunId",
            target_id = prelude.String.id,
        }),
        RunType = schema.new({
            id = id.from(_N, "WorkflowRunDetail", "RunType"),
            type = "string",
            name = "RunType",
            target_id = prelude.String.id,
        }),
        StartedOn = schema.new({
            id = id.from(_N, "WorkflowRunDetail", "StartedOn"),
            type = "timestamp",
            name = "StartedOn",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "WorkflowRunDetail", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        CompletedOn = schema.new({
            id = id.from(_N, "WorkflowRunDetail", "CompletedOn"),
            type = "timestamp",
            name = "CompletedOn",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        ModifiedAt = schema.new({
            id = id.from(_N, "WorkflowRunDetail", "ModifiedAt"),
            type = "timestamp",
            name = "ModifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "WorkflowRunDetail", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "WorkflowRunDetail", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        TaskInstances = schema.new({
            id = id.from(_N, "WorkflowRunDetail", "TaskInstances"),
            type = "list",
            name = "TaskInstances",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RunState = schema.new({
            id = id.from(_N, "WorkflowRunDetail", "RunState"),
            type = "string",
            name = "RunState",
            target_id = prelude.String.id,
        }),
    },
})

M.GetWorkflowRunOutput = schema.new({
    id = id.from(_N, "GetWorkflowRunOutput"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "GetWorkflowRunOutput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
        }),
        WorkflowVersion = schema.new({
            id = id.from(_N, "GetWorkflowRunOutput", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
        }),
        RunId = schema.new({
            id = id.from(_N, "GetWorkflowRunOutput", "RunId"),
            type = "string",
            name = "RunId",
            target_id = prelude.String.id,
        }),
        RunType = schema.new({
            id = id.from(_N, "GetWorkflowRunOutput", "RunType"),
            type = "string",
            name = "RunType",
            target_id = prelude.String.id,
        }),
        OverrideParameters = schema.new({
            id = id.from(_N, "GetWorkflowRunOutput", "OverrideParameters"),
            type = "map",
            name = "OverrideParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        RunDetail = schema.new({
            id = id.from(_N, "GetWorkflowRunOutput", "RunDetail"),
            type = "structure",
            name = "RunDetail",
            target_id = id.from(_N, "WorkflowRunDetail"),
            target = M.WorkflowRunDetail,
        }),
    },
})

M.ListWorkflowRunsInput = schema.new({
    id = id.from(_N, "ListWorkflowRunsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListWorkflowRunsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 20 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListWorkflowRunsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        WorkflowArn = schema.new({
            id = id.from(_N, "ListWorkflowRunsInput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        WorkflowVersion = schema.new({
            id = id.from(_N, "ListWorkflowRunsInput", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "workflowVersion" },
            },
        }),
    },
})

M.RunDetailSummary = schema.new({
    id = id.from(_N, "RunDetailSummary"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "RunDetailSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreatedOn = schema.new({
            id = id.from(_N, "RunDetailSummary", "CreatedOn"),
            type = "timestamp",
            name = "CreatedOn",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        StartedAt = schema.new({
            id = id.from(_N, "RunDetailSummary", "StartedAt"),
            type = "timestamp",
            name = "StartedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        EndedAt = schema.new({
            id = id.from(_N, "RunDetailSummary", "EndedAt"),
            type = "timestamp",
            name = "EndedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.WorkflowRunSummary = schema.new({
    id = id.from(_N, "WorkflowRunSummary"),
    type = "structure",
    members = {
        RunId = schema.new({
            id = id.from(_N, "WorkflowRunSummary", "RunId"),
            type = "string",
            name = "RunId",
            target_id = prelude.String.id,
        }),
        WorkflowArn = schema.new({
            id = id.from(_N, "WorkflowRunSummary", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
        }),
        WorkflowVersion = schema.new({
            id = id.from(_N, "WorkflowRunSummary", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
        }),
        RunType = schema.new({
            id = id.from(_N, "WorkflowRunSummary", "RunType"),
            type = "string",
            name = "RunType",
            target_id = prelude.String.id,
        }),
        RunDetailSummary = schema.new({
            id = id.from(_N, "WorkflowRunSummary", "RunDetailSummary"),
            type = "structure",
            name = "RunDetailSummary",
            target_id = id.from(_N, "RunDetailSummary"),
            target = M.RunDetailSummary,
        }),
    },
})

M.ListWorkflowRunsOutput = schema.new({
    id = id.from(_N, "ListWorkflowRunsOutput"),
    type = "structure",
    members = {
        WorkflowRuns = schema.new({
            id = id.from(_N, "ListWorkflowRunsOutput", "WorkflowRuns"),
            type = "list",
            name = "WorkflowRuns",
            target_id = prelude.Document.id,
            list_member = M.WorkflowRunSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListWorkflowRunsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartWorkflowRunInput = schema.new({
    id = id.from(_N, "StartWorkflowRunInput"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "StartWorkflowRunInput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "StartWorkflowRunInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        OverrideParameters = schema.new({
            id = id.from(_N, "StartWorkflowRunInput", "OverrideParameters"),
            type = "map",
            name = "OverrideParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        WorkflowVersion = schema.new({
            id = id.from(_N, "StartWorkflowRunInput", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.StartWorkflowRunOutput = schema.new({
    id = id.from(_N, "StartWorkflowRunOutput"),
    type = "structure",
    members = {
        RunId = schema.new({
            id = id.from(_N, "StartWorkflowRunOutput", "RunId"),
            type = "string",
            name = "RunId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "StartWorkflowRunOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StartedAt = schema.new({
            id = id.from(_N, "StartWorkflowRunOutput", "StartedAt"),
            type = "timestamp",
            name = "StartedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.StopWorkflowRunInput = schema.new({
    id = id.from(_N, "StopWorkflowRunInput"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "StopWorkflowRunInput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RunId = schema.new({
            id = id.from(_N, "StopWorkflowRunInput", "RunId"),
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

M.StopWorkflowRunOutput = schema.new({
    id = id.from(_N, "StopWorkflowRunOutput"),
    type = "structure",
    members = {
        WorkflowArn = schema.new({
            id = id.from(_N, "StopWorkflowRunOutput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
        }),
        WorkflowVersion = schema.new({
            id = id.from(_N, "StopWorkflowRunOutput", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
        }),
        RunId = schema.new({
            id = id.from(_N, "StopWorkflowRunOutput", "RunId"),
            type = "string",
            name = "RunId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "StopWorkflowRunOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWorkflowVersionsInput = schema.new({
    id = id.from(_N, "ListWorkflowVersionsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListWorkflowVersionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 20 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListWorkflowVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        WorkflowArn = schema.new({
            id = id.from(_N, "ListWorkflowVersionsInput", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.WorkflowVersionSummary = schema.new({
    id = id.from(_N, "WorkflowVersionSummary"),
    type = "structure",
    members = {
        WorkflowVersion = schema.new({
            id = id.from(_N, "WorkflowVersionSummary", "WorkflowVersion"),
            type = "string",
            name = "WorkflowVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WorkflowArn = schema.new({
            id = id.from(_N, "WorkflowVersionSummary", "WorkflowArn"),
            type = "string",
            name = "WorkflowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsLatestVersion = schema.new({
            id = id.from(_N, "WorkflowVersionSummary", "IsLatestVersion"),
            type = "boolean",
            name = "IsLatestVersion",
            target_id = prelude.Boolean.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "WorkflowVersionSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        ModifiedAt = schema.new({
            id = id.from(_N, "WorkflowVersionSummary", "ModifiedAt"),
            type = "timestamp",
            name = "ModifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        DefinitionS3Location = schema.new({
            id = id.from(_N, "WorkflowVersionSummary", "DefinitionS3Location"),
            type = "structure",
            name = "DefinitionS3Location",
            target_id = id.from(_N, "DefinitionS3Location"),
            target = M.DefinitionS3Location,
        }),
        ScheduleConfiguration = schema.new({
            id = id.from(_N, "WorkflowVersionSummary", "ScheduleConfiguration"),
            type = "structure",
            name = "ScheduleConfiguration",
            target_id = id.from(_N, "ScheduleConfiguration"),
            target = M.ScheduleConfiguration,
        }),
        TriggerMode = schema.new({
            id = id.from(_N, "WorkflowVersionSummary", "TriggerMode"),
            type = "string",
            name = "TriggerMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWorkflowVersionsOutput = schema.new({
    id = id.from(_N, "ListWorkflowVersionsOutput"),
    type = "structure",
    members = {
        WorkflowVersions = schema.new({
            id = id.from(_N, "ListWorkflowVersionsOutput", "WorkflowVersions"),
            type = "list",
            name = "WorkflowVersions",
            target_id = prelude.Document.id,
            list_member = M.WorkflowVersionSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListWorkflowVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

return M
