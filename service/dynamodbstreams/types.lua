local M = {}

M.ShardFilterType = {
    CHILD_SHARDS = "CHILD_SHARDS",
}

M.ShardFilter = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        ShardId = {
            type = "string",
        },
    },
}

M.DescribeStreamInput = {
    type = "structure",
    members = {
        StreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "number",
        },
        ExclusiveStartShardId = {
            type = "string",
        },
        ShardFilter = {
            type = "structure",
        },
    },
}

M.KeyType = {
    HASH = "HASH",
    RANGE = "RANGE",
}

M.KeySchemaElement = {
    type = "structure",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SequenceNumberRange = {
    type = "structure",
    members = {
        StartingSequenceNumber = {
            type = "string",
        },
        EndingSequenceNumber = {
            type = "string",
        },
    },
}

M.Shard = {
    type = "structure",
    members = {
        ShardId = {
            type = "string",
        },
        SequenceNumberRange = {
            type = "structure",
        },
        ParentShardId = {
            type = "string",
        },
    },
}

M.StreamStatus = {
    ENABLING = "ENABLING",
    ENABLED = "ENABLED",
    DISABLING = "DISABLING",
    DISABLED = "DISABLED",
}

M.StreamViewType = {
    NEW_IMAGE = "NEW_IMAGE",
    OLD_IMAGE = "OLD_IMAGE",
    NEW_AND_OLD_IMAGES = "NEW_AND_OLD_IMAGES",
    KEYS_ONLY = "KEYS_ONLY",
}

M.StreamDescription = {
    type = "structure",
    members = {
        StreamArn = {
            type = "string",
        },
        StreamLabel = {
            type = "string",
        },
        StreamStatus = {
            type = "string",
        },
        StreamViewType = {
            type = "string",
        },
        CreationRequestDateTime = {
            type = "timestamp",
        },
        TableName = {
            type = "string",
        },
        KeySchema = {
            type = "list",
            member_type = "structure",
        },
        Shards = {
            type = "list",
            member_type = "structure",
        },
        LastEvaluatedShardId = {
            type = "string",
        },
    },
}

M.DescribeStreamOutput = {
    type = "structure",
    members = {
        StreamDescription = {
            type = "structure",
        },
    },
}

M.InternalServerError = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ExpiredIteratorException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetRecordsInput = {
    type = "structure",
    members = {
        ShardIterator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "number",
        },
    },
}

M.OperationType = {
    INSERT = "INSERT",
    MODIFY = "MODIFY",
    REMOVE = "REMOVE",
}

M.Identity = {
    type = "structure",
    members = {
        PrincipalId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TrimmedDataAccessException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ShardIteratorType = {
    TRIM_HORIZON = "TRIM_HORIZON",
    LATEST = "LATEST",
    AT_SEQUENCE_NUMBER = "AT_SEQUENCE_NUMBER",
    AFTER_SEQUENCE_NUMBER = "AFTER_SEQUENCE_NUMBER",
}

M.GetShardIteratorInput = {
    type = "structure",
    members = {
        StreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShardIteratorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SequenceNumber = {
            type = "string",
        },
    },
}

M.GetShardIteratorOutput = {
    type = "structure",
    members = {
        ShardIterator = {
            type = "string",
        },
    },
}

M.ListStreamsInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
        ExclusiveStartStreamArn = {
            type = "string",
        },
    },
}

M.Stream = {
    type = "structure",
    members = {
        StreamArn = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        StreamLabel = {
            type = "string",
        },
    },
}

M.ListStreamsOutput = {
    type = "structure",
    members = {
        Streams = {
            type = "list",
            member_type = "structure",
        },
        LastEvaluatedStreamArn = {
            type = "string",
        },
    },
}

M.AttributeValue = {
    type = "union",
    members = {
        S = {
            type = "string",
        },
        N = {
            type = "string",
        },
        B = {
            type = "blob",
        },
        SS = {
            type = "list",
            member_type = "string",
        },
        NS = {
            type = "list",
            member_type = "string",
        },
        BS = {
            type = "list",
            member_type = "blob",
        },
        M = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        L = {
            type = "list",
            member_type = "union",
        },
        NULL = {
            type = "boolean",
        },
        BOOL = {
            type = "boolean",
        },
    },
}

M.StreamRecord = {
    type = "structure",
    members = {
        ApproximateCreationDateTime = {
            type = "timestamp",
        },
        Keys = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        NewImage = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        OldImage = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        SequenceNumber = {
            type = "string",
        },
        SizeBytes = {
            type = "number",
        },
        StreamViewType = {
            type = "string",
        },
    },
}

M.Record = {
    type = "structure",
    members = {
        eventID = {
            type = "string",
        },
        eventName = {
            type = "string",
        },
        eventVersion = {
            type = "string",
        },
        eventSource = {
            type = "string",
        },
        awsRegion = {
            type = "string",
        },
        dynamodb = {
            type = "structure",
        },
        userIdentity = {
            type = "structure",
        },
    },
}

M.GetRecordsOutput = {
    type = "structure",
    members = {
        Records = {
            type = "list",
            member_type = "structure",
        },
        NextShardIterator = {
            type = "string",
        },
    },
}

return M
