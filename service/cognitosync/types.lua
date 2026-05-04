local M = {}

M.AlreadyStreamedException = {
    type = "structure",
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
    members = {
        IdentityPoolId = {
            type = "string",
        },
    },
}

M.DuplicateRequestException = {
    type = "structure",
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
    members = {
        Dataset = M.Dataset,
    },
}

M.ResourceConflictException = {
    type = "structure",
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
    members = {
        Dataset = M.Dataset,
    },
}

M.DescribeIdentityPoolUsageInput = {
    type = "structure",
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
    members = {
        IdentityPoolUsage = M.IdentityPoolUsage,
    },
}

M.DescribeIdentityUsageInput = {
    type = "structure",
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
    members = {
        IdentityUsage = M.IdentityUsage,
    },
}

M.GetBulkPublishDetailsInput = {
    type = "structure",
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
    members = {
        DeviceId = {
            type = "string",
        },
    },
}

M.SetCognitoEventsInput = {
    type = "structure",
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
}

M.ConcurrentModificationException = {
    type = "structure",
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
}

M.UnsubscribeFromDatasetInput = {
    type = "structure",
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
}

M.InvalidLambdaFunctionOutputException = {
    type = "structure",
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
    members = {
        Records = {
            type = "list",
            member = M.Record,
        },
    },
}

return M
