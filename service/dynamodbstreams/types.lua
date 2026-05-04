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
            type = "integer",
        },
        ExclusiveStartShardId = {
            type = "string",
        },
        ShardFilter = M.ShardFilter,
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
        SequenceNumberRange = M.SequenceNumberRange,
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
            member = M.KeySchemaElement,
        },
        Shards = {
            type = "list",
            member = M.Shard,
        },
        LastEvaluatedShardId = {
            type = "string",
        },
    },
}

M.DescribeStreamOutput = {
    type = "structure",
    members = {
        StreamDescription = M.StreamDescription,
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
            type = "integer",
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
            type = "integer",
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
            member = M.Stream,
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
            member = { type = "string" },
        },
        NS = {
            type = "list",
            member = { type = "string" },
        },
        BS = {
            type = "list",
            member = { type = "blob" },
        },
        M = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        L = {
            type = "list",
            member = M.AttributeValue,
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
            key = { type = "string" },
            value = M.AttributeValue,
        },
        NewImage = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        OldImage = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        SequenceNumber = {
            type = "string",
        },
        SizeBytes = {
            type = "long",
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
        dynamodb = M.StreamRecord,
        userIdentity = M.Identity,
    },
}

M.GetRecordsOutput = {
    type = "structure",
    members = {
        Records = {
            type = "list",
            member = M.Record,
        },
        NextShardIterator = {
            type = "string",
        },
    },
}

return M
