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
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
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

M.OperationTimeoutException = {
    type = "structure",
    id = "OperationTimeoutException",
    error = "server",
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
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
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
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
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
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldList = {
            type = "list",
            member = M.ValidationExceptionField,
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

M.GetTaskInstanceInput = {
    type = "structure",
    id = "GetTaskInstanceInput",
    members = {
        WorkflowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TaskInstanceId = {
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

M.TaskInstanceStatus = {
    QUEUED = "QUEUED",
    FAILED = "FAILED",
    SCHEDULED = "SCHEDULED",
    RUNNING = "RUNNING",
    SUCCESS = "SUCCESS",
    UP_FOR_RESCHEDULE = "UP_FOR_RESCHEDULE",
    UP_FOR_RETRY = "UP_FOR_RETRY",
    UPSTREAM_FAILED = "UPSTREAM_FAILED",
    REMOVED = "REMOVED",
    RESTARTING = "RESTARTING",
    DEFERRED = "DEFERRED",
    NONE = "NONE",
    CANCELLED = "CANCELLED",
    TIMEOUT = "TIMEOUT",
}

M.GetTaskInstanceOutput = {
    type = "structure",
    id = "GetTaskInstanceOutput",
    members = {
        WorkflowArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkflowVersion = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        DurationInSeconds = {
            type = "integer",
        },
        OperatorName = {
            type = "string",
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        EndedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        StartedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        AttemptNumber = {
            type = "integer",
        },
        ErrorMessage = {
            type = "string",
        },
        TaskId = {
            type = "string",
        },
        LogStream = {
            type = "string",
        },
        Xcom = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListTaskInstancesInput = {
    type = "structure",
    id = "ListTaskInstancesInput",
    members = {
        WorkflowArn = {
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
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
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

M.TaskInstanceSummary = {
    type = "structure",
    id = "TaskInstanceSummary",
    members = {
        WorkflowArn = {
            type = "string",
        },
        WorkflowVersion = {
            type = "string",
        },
        RunId = {
            type = "string",
        },
        TaskInstanceId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        DurationInSeconds = {
            type = "integer",
        },
        OperatorName = {
            type = "string",
        },
    },
}

M.ListTaskInstancesOutput = {
    type = "structure",
    id = "ListTaskInstancesOutput",
    members = {
        TaskInstances = {
            type = "list",
            member = M.TaskInstanceSummary,
        },
        NextToken = {
            type = "string",
        },
    },
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
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DefinitionS3Location = {
    type = "structure",
    id = "DefinitionS3Location",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionId = {
            type = "string",
        },
    },
}

M.EncryptionType = {
    AWS_MANAGED_KEY = "AWS_MANAGED_KEY",
    CUSTOMER_MANAGED_KEY = "CUSTOMER_MANAGED_KEY",
}

M.EncryptionConfiguration = {
    type = "structure",
    id = "EncryptionConfiguration",
    members = {
        Type = {
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

M.EngineVersion = {
    ONE = 1,
}

M.LoggingConfiguration = {
    type = "structure",
    id = "LoggingConfiguration",
    members = {
        LogGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkConfiguration = {
    type = "structure",
    id = "NetworkConfiguration",
    members = {
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateWorkflowInput = {
    type = "structure",
    id = "CreateWorkflowInput",
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
        DefinitionS3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefinitionS3Location }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        LoggingConfiguration = M.LoggingConfiguration,
        EngineVersion = {
            type = "number",
        },
        NetworkConfiguration = M.NetworkConfiguration,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TriggerMode = {
            type = "string",
        },
    },
}

M.WorkflowStatus = {
    READY = "READY",
    DELETING = "DELETING",
}

M.CreateWorkflowOutput = {
    type = "structure",
    id = "CreateWorkflowOutput",
    members = {
        WorkflowArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        RevisionId = {
            type = "string",
        },
        WorkflowStatus = {
            type = "string",
        },
        WorkflowVersion = {
            type = "string",
        },
        IsLatestVersion = {
            type = "boolean",
        },
        Warnings = {
            type = "list",
            member = { type = "string" },
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
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkflowInput = {
    type = "structure",
    id = "DeleteWorkflowInput",
    members = {
        WorkflowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkflowVersion = {
            type = "string",
            traits = {
                http_query = "workflowVersion",
            },
        },
    },
}

M.DeleteWorkflowOutput = {
    type = "structure",
    id = "DeleteWorkflowOutput",
    members = {
        WorkflowArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkflowVersion = {
            type = "string",
        },
    },
}

M.GetWorkflowInput = {
    type = "structure",
    id = "GetWorkflowInput",
    members = {
        WorkflowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkflowVersion = {
            type = "string",
            traits = {
                http_query = "workflowVersion",
            },
        },
    },
}

M.ScheduleConfiguration = {
    type = "structure",
    id = "ScheduleConfiguration",
    members = {
        CronExpression = {
            type = "string",
        },
    },
}

M.GetWorkflowOutput = {
    type = "structure",
    id = "GetWorkflowOutput",
    members = {
        WorkflowArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkflowVersion = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        LoggingConfiguration = M.LoggingConfiguration,
        EngineVersion = {
            type = "number",
        },
        WorkflowStatus = {
            type = "string",
        },
        DefinitionS3Location = M.DefinitionS3Location,
        ScheduleConfiguration = M.ScheduleConfiguration,
        RoleArn = {
            type = "string",
        },
        NetworkConfiguration = M.NetworkConfiguration,
        TriggerMode = {
            type = "string",
        },
        WorkflowDefinition = {
            type = "string",
        },
    },
}

M.ListWorkflowsInput = {
    type = "structure",
    id = "ListWorkflowsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
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

M.WorkflowSummary = {
    type = "structure",
    id = "WorkflowSummary",
    members = {
        WorkflowArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkflowVersion = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        WorkflowStatus = {
            type = "string",
        },
        TriggerMode = {
            type = "string",
        },
    },
}

M.ListWorkflowsOutput = {
    type = "structure",
    id = "ListWorkflowsOutput",
    members = {
        Workflows = {
            type = "list",
            member = M.WorkflowSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateWorkflowInput = {
    type = "structure",
    id = "UpdateWorkflowInput",
    members = {
        WorkflowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DefinitionS3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefinitionS3Location }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        LoggingConfiguration = M.LoggingConfiguration,
        EngineVersion = {
            type = "number",
        },
        NetworkConfiguration = M.NetworkConfiguration,
        TriggerMode = {
            type = "string",
        },
    },
}

M.UpdateWorkflowOutput = {
    type = "structure",
    id = "UpdateWorkflowOutput",
    members = {
        WorkflowArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        WorkflowVersion = {
            type = "string",
        },
        Warnings = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetWorkflowRunInput = {
    type = "structure",
    id = "GetWorkflowRunInput",
    members = {
        WorkflowArn = {
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

M.WorkflowRunStatus = {
    STARTING = "STARTING",
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    TIMEOUT = "TIMEOUT",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.RunType = {
    ON_DEMAND = "ON_DEMAND",
    SCHEDULED = "SCHEDULED",
}

M.WorkflowRunDetail = {
    type = "structure",
    id = "WorkflowRunDetail",
    members = {
        WorkflowArn = {
            type = "string",
        },
        WorkflowVersion = {
            type = "string",
        },
        RunId = {
            type = "string",
        },
        RunType = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CompletedOn = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Duration = {
            type = "integer",
        },
        ErrorMessage = {
            type = "string",
        },
        TaskInstances = {
            type = "list",
            member = { type = "string" },
        },
        RunState = {
            type = "string",
        },
    },
}

M.GetWorkflowRunOutput = {
    type = "structure",
    id = "GetWorkflowRunOutput",
    members = {
        WorkflowArn = {
            type = "string",
        },
        WorkflowVersion = {
            type = "string",
        },
        RunId = {
            type = "string",
        },
        RunType = {
            type = "string",
        },
        OverrideParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
        RunDetail = M.WorkflowRunDetail,
    },
}

M.ListWorkflowRunsInput = {
    type = "structure",
    id = "ListWorkflowRunsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        WorkflowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkflowVersion = {
            type = "string",
            traits = {
                http_query = "workflowVersion",
            },
        },
    },
}

M.RunDetailSummary = {
    type = "structure",
    id = "RunDetailSummary",
    members = {
        Status = {
            type = "string",
        },
        CreatedOn = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        StartedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        EndedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.WorkflowRunSummary = {
    type = "structure",
    id = "WorkflowRunSummary",
    members = {
        RunId = {
            type = "string",
        },
        WorkflowArn = {
            type = "string",
        },
        WorkflowVersion = {
            type = "string",
        },
        RunType = {
            type = "string",
        },
        RunDetailSummary = M.RunDetailSummary,
    },
}

M.ListWorkflowRunsOutput = {
    type = "structure",
    id = "ListWorkflowRunsOutput",
    members = {
        WorkflowRuns = {
            type = "list",
            member = M.WorkflowRunSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartWorkflowRunInput = {
    type = "structure",
    id = "StartWorkflowRunInput",
    members = {
        WorkflowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        OverrideParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
        WorkflowVersion = {
            type = "string",
        },
    },
}

M.StartWorkflowRunOutput = {
    type = "structure",
    id = "StartWorkflowRunOutput",
    members = {
        RunId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StartedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.StopWorkflowRunInput = {
    type = "structure",
    id = "StopWorkflowRunInput",
    members = {
        WorkflowArn = {
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

M.StopWorkflowRunOutput = {
    type = "structure",
    id = "StopWorkflowRunOutput",
    members = {
        WorkflowArn = {
            type = "string",
        },
        WorkflowVersion = {
            type = "string",
        },
        RunId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListWorkflowVersionsInput = {
    type = "structure",
    id = "ListWorkflowVersionsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        WorkflowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.WorkflowVersionSummary = {
    type = "structure",
    id = "WorkflowVersionSummary",
    members = {
        WorkflowVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkflowArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsLatestVersion = {
            type = "boolean",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        DefinitionS3Location = M.DefinitionS3Location,
        ScheduleConfiguration = M.ScheduleConfiguration,
        TriggerMode = {
            type = "string",
        },
    },
}

M.ListWorkflowVersionsOutput = {
    type = "structure",
    id = "ListWorkflowVersionsOutput",
    members = {
        WorkflowVersions = {
            type = "list",
            member = M.WorkflowVersionSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
