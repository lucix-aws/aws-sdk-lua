local M = {}

M.AlreadyStreamedException = {
    type = "structure",
    id = "AlreadyStreamedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BulkPublishInput = {
    type = "structure",
    id = "BulkPublishInput",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.BulkPublishOutput = {
    type = "structure",
    id = "BulkPublishOutput",
    members = {
        IdentityPoolId = {
            type = "string",
        },
    },
}

M.DuplicateRequestException = {
    type = "structure",
    id = "DuplicateRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalErrorException = {
    type = "structure",
    id = "InternalErrorException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotAuthorizedException = {
    type = "structure",
    id = "NotAuthorizedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
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
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdentityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DatasetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Dataset = {
    type = "structure",
    id = "Dataset",
    members = {
        IdentityId = {
            type = "string",
        },
        DatasetName = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "string",
        },
        DataStorage = {
            type = "long",
        },
        NumRecords = {
            type = "long",
        },
    },
}

M.DeleteDatasetOutput = {
    type = "structure",
    id = "DeleteDatasetOutput",
    members = {
        Dataset = M.Dataset,
    },
}

M.ResourceConflictException = {
    type = "structure",
    id = "ResourceConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        message = {
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
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdentityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DatasetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeDatasetOutput = {
    type = "structure",
    id = "DescribeDatasetOutput",
    members = {
        Dataset = M.Dataset,
    },
}

M.DescribeIdentityPoolUsageInput = {
    type = "structure",
    id = "DescribeIdentityPoolUsageInput",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.IdentityPoolUsage = {
    type = "structure",
    id = "IdentityPoolUsage",
    members = {
        IdentityPoolId = {
            type = "string",
        },
        SyncSessionsCount = {
            type = "long",
        },
        DataStorage = {
            type = "long",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.DescribeIdentityPoolUsageOutput = {
    type = "structure",
    id = "DescribeIdentityPoolUsageOutput",
    members = {
        IdentityPoolUsage = M.IdentityPoolUsage,
    },
}

M.DescribeIdentityUsageInput = {
    type = "structure",
    id = "DescribeIdentityUsageInput",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdentityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.IdentityUsage = {
    type = "structure",
    id = "IdentityUsage",
    members = {
        IdentityId = {
            type = "string",
        },
        IdentityPoolId = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        DatasetCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        DataStorage = {
            type = "long",
        },
    },
}

M.DescribeIdentityUsageOutput = {
    type = "structure",
    id = "DescribeIdentityUsageOutput",
    members = {
        IdentityUsage = M.IdentityUsage,
    },
}

M.GetBulkPublishDetailsInput = {
    type = "structure",
    id = "GetBulkPublishDetailsInput",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.BulkPublishStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.GetBulkPublishDetailsOutput = {
    type = "structure",
    id = "GetBulkPublishDetailsOutput",
    members = {
        IdentityPoolId = {
            type = "string",
        },
        BulkPublishStartTime = {
            type = "timestamp",
        },
        BulkPublishCompleteTime = {
            type = "timestamp",
        },
        BulkPublishStatus = {
            type = "string",
        },
        FailureMessage = {
            type = "string",
        },
    },
}

M.GetCognitoEventsInput = {
    type = "structure",
    id = "GetCognitoEventsInput",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCognitoEventsOutput = {
    type = "structure",
    id = "GetCognitoEventsOutput",
    members = {
        Events = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetIdentityPoolConfigurationInput = {
    type = "structure",
    id = "GetIdentityPoolConfigurationInput",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StreamingStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CognitoStreams = {
    type = "structure",
    id = "CognitoStreams",
    members = {
        StreamName = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        StreamingStatus = {
            type = "string",
        },
    },
}

M.PushSync = {
    type = "structure",
    id = "PushSync",
    members = {
        ApplicationArns = {
            type = "list",
            member = { type = "string" },
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.GetIdentityPoolConfigurationOutput = {
    type = "structure",
    id = "GetIdentityPoolConfigurationOutput",
    members = {
        IdentityPoolId = {
            type = "string",
        },
        PushSync = M.PushSync,
        CognitoStreams = M.CognitoStreams,
    },
}

M.ListDatasetsInput = {
    type = "structure",
    id = "ListDatasetsInput",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdentityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
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

M.ListDatasetsOutput = {
    type = "structure",
    id = "ListDatasetsOutput",
    members = {
        Datasets = {
            type = "list",
            member = M.Dataset,
        },
        Count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIdentityPoolUsageInput = {
    type = "structure",
    id = "ListIdentityPoolUsageInput",
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

M.ListIdentityPoolUsageOutput = {
    type = "structure",
    id = "ListIdentityPoolUsageOutput",
    members = {
        IdentityPoolUsages = {
            type = "list",
            member = M.IdentityPoolUsage,
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRecordsInput = {
    type = "structure",
    id = "ListRecordsInput",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdentityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DatasetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LastSyncCount = {
            type = "long",
            traits = {
                http_query = "lastSyncCount",
            },
        },
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
        SyncSessionToken = {
            type = "string",
            traits = {
                http_query = "syncSessionToken",
            },
        },
    },
}

M.Record = {
    type = "structure",
    id = "Record",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        SyncCount = {
            type = "long",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "string",
        },
        DeviceLastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.ListRecordsOutput = {
    type = "structure",
    id = "ListRecordsOutput",
    members = {
        Records = {
            type = "list",
            member = M.Record,
        },
        NextToken = {
            type = "string",
        },
        Count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        DatasetSyncCount = {
            type = "long",
        },
        LastModifiedBy = {
            type = "string",
        },
        MergedDatasetNames = {
            type = "list",
            member = { type = "string" },
        },
        DatasetExists = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DatasetDeletedAfterRequestedSyncCount = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SyncSessionToken = {
            type = "string",
        },
    },
}

M.InvalidConfigurationException = {
    type = "structure",
    id = "InvalidConfigurationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Platform = {
    APNS = "APNS",
    APNS_SANDBOX = "APNS_SANDBOX",
    GCM = "GCM",
    ADM = "ADM",
}

M.RegisterDeviceInput = {
    type = "structure",
    id = "RegisterDeviceInput",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdentityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Token = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterDeviceOutput = {
    type = "structure",
    id = "RegisterDeviceOutput",
    members = {
        DeviceId = {
            type = "string",
        },
    },
}

M.SetCognitoEventsInput = {
    type = "structure",
    id = "SetCognitoEventsInput",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Events = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SetCognitoEventsOutput = {
    type = "structure",
    id = "SetCognitoEventsOutput",
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetIdentityPoolConfigurationInput = {
    type = "structure",
    id = "SetIdentityPoolConfigurationInput",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PushSync = M.PushSync,
        CognitoStreams = M.CognitoStreams,
    },
}

M.SetIdentityPoolConfigurationOutput = {
    type = "structure",
    id = "SetIdentityPoolConfigurationOutput",
    members = {
        IdentityPoolId = {
            type = "string",
        },
        PushSync = M.PushSync,
        CognitoStreams = M.CognitoStreams,
    },
}

M.SubscribeToDatasetInput = {
    type = "structure",
    id = "SubscribeToDatasetInput",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdentityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DatasetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SubscribeToDatasetOutput = {
    type = "structure",
    id = "SubscribeToDatasetOutput",
}

M.UnsubscribeFromDatasetInput = {
    type = "structure",
    id = "UnsubscribeFromDatasetInput",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdentityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DatasetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UnsubscribeFromDatasetOutput = {
    type = "structure",
    id = "UnsubscribeFromDatasetOutput",
}

M.InvalidLambdaFunctionOutputException = {
    type = "structure",
    id = "InvalidLambdaFunctionOutputException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LambdaThrottledException = {
    type = "structure",
    id = "LambdaThrottledException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Operation = {
    replace = "replace",
    remove = "remove",
}

M.RecordPatch = {
    type = "structure",
    id = "RecordPatch",
    members = {
        Op = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
        SyncCount = {
            type = "long",
            traits = {
                required = true,
            },
        },
        DeviceLastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.UpdateRecordsInput = {
    type = "structure",
    id = "UpdateRecordsInput",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdentityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DatasetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceId = {
            type = "string",
        },
        RecordPatches = {
            type = "list",
            member = M.RecordPatch,
        },
        SyncSessionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientContext = {
            type = "string",
            traits = {
                http_header = "x-amz-Client-Context",
            },
        },
    },
}

M.UpdateRecordsOutput = {
    type = "structure",
    id = "UpdateRecordsOutput",
    members = {
        Records = {
            type = "list",
            member = M.Record,
        },
    },
}

return M
