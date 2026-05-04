local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetRecordsInput = {
    type = "structure",
    id = "GetRecordsInput",
    members = {
        shardIterator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.KeyspacesMetadata = {
    type = "structure",
    id = "KeyspacesMetadata",
    members = {
        expirationTime = {
            type = "string",
        },
        writeTime = {
            type = "string",
        },
    },
}

M.OriginType = {
    USER = "USER",
    REPLICATION = "REPLICATION",
    TTL = "TTL",
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
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
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationExceptionType = {
    InvalidFormat = "InvalidFormat",
    TrimmedDataAccess = "TrimmedDataAccess",
    ExpiredIterator = "ExpiredIterator",
    ExpiredNextToken = "ExpiredNextToken",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        errorCode = {
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
    id = "GetShardIteratorInput",
    members = {
        streamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shardIteratorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sequenceNumber = {
            type = "string",
        },
    },
}

M.GetShardIteratorOutput = {
    type = "structure",
    id = "GetShardIteratorOutput",
    members = {
        shardIterator = {
            type = "string",
        },
    },
}

M.ShardFilterType = {
    CHILD_SHARDS = "CHILD_SHARDS",
}

M.ShardFilter = {
    type = "structure",
    id = "ShardFilter",
    members = {
        type = {
            type = "string",
        },
        shardId = {
            type = "string",
        },
    },
}

M.GetStreamInput = {
    type = "structure",
    id = "GetStreamInput",
    members = {
        streamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        shardFilter = M.ShardFilter,
        nextToken = {
            type = "string",
        },
    },
}

M.SequenceNumberRange = {
    type = "structure",
    id = "SequenceNumberRange",
    members = {
        startingSequenceNumber = {
            type = "string",
        },
        endingSequenceNumber = {
            type = "string",
        },
    },
}

M.Shard = {
    type = "structure",
    id = "Shard",
    members = {
        shardId = {
            type = "string",
        },
        sequenceNumberRange = M.SequenceNumberRange,
        parentShardIds = {
            type = "list",
            member = { type = "string" },
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

M.GetStreamOutput = {
    type = "structure",
    id = "GetStreamOutput",
    members = {
        streamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        streamLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        streamStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        streamViewType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationRequestDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shards = {
            type = "list",
            member = M.Shard,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListStreamsInput = {
    type = "structure",
    id = "ListStreamsInput",
    members = {
        keyspaceName = {
            type = "string",
        },
        tableName = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.Stream = {
    type = "structure",
    id = "Stream",
    members = {
        streamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        streamLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListStreamsOutput = {
    type = "structure",
    id = "ListStreamsOutput",
    members = {
        streams = {
            type = "list",
            member = M.Stream,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.KeyspacesCellValue = {
    type = "union",
    id = "KeyspacesCellValue",
    members = {
        asciiT = {
            type = "string",
        },
        bigintT = {
            type = "string",
        },
        blobT = {
            type = "blob",
        },
        boolT = {
            type = "boolean",
        },
        counterT = {
            type = "string",
        },
        dateT = {
            type = "string",
        },
        decimalT = {
            type = "string",
        },
        doubleT = {
            type = "string",
        },
        durationT = {
            type = "string",
        },
        floatT = {
            type = "string",
        },
        inetT = {
            type = "string",
        },
        intT = {
            type = "string",
        },
        listT = {
            type = "list",
            member = M.KeyspacesCell,
        },
        mapT = {
            type = "list",
            member = M.KeyspacesCellMapDefinition,
        },
        setT = {
            type = "list",
            member = M.KeyspacesCell,
        },
        smallintT = {
            type = "string",
        },
        textT = {
            type = "string",
        },
        timeT = {
            type = "string",
        },
        timestampT = {
            type = "string",
        },
        timeuuidT = {
            type = "string",
        },
        tinyintT = {
            type = "string",
        },
        tupleT = {
            type = "list",
            member = M.KeyspacesCell,
        },
        uuidT = {
            type = "string",
        },
        varcharT = {
            type = "string",
        },
        varintT = {
            type = "string",
        },
        udtT = {
            type = "map",
            key = { type = "string" },
            value = M.KeyspacesCell,
        },
    },
}

M.KeyspacesCell = {
    type = "structure",
    id = "KeyspacesCell",
    members = {
        value = M.KeyspacesCellValue,
        metadata = M.KeyspacesMetadata,
    },
}

M.KeyspacesCellMapDefinition = {
    type = "structure",
    id = "KeyspacesCellMapDefinition",
    members = {
        key = M.KeyspacesCellValue,
        value = M.KeyspacesCellValue,
        metadata = M.KeyspacesMetadata,
    },
}

M.KeyspacesRow = {
    type = "structure",
    id = "KeyspacesRow",
    members = {
        valueCells = {
            type = "map",
            key = { type = "string" },
            value = M.KeyspacesCell,
        },
        staticCells = {
            type = "map",
            key = { type = "string" },
            value = M.KeyspacesCell,
        },
        rowMetadata = M.KeyspacesMetadata,
    },
}

M.Record = {
    type = "structure",
    id = "Record",
    members = {
        eventVersion = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        origin = {
            type = "string",
        },
        partitionKeys = {
            type = "map",
            key = { type = "string" },
            value = M.KeyspacesCellValue,
        },
        clusteringKeys = {
            type = "map",
            key = { type = "string" },
            value = M.KeyspacesCellValue,
        },
        newImage = M.KeyspacesRow,
        oldImage = M.KeyspacesRow,
        sequenceNumber = {
            type = "string",
        },
    },
}

M.GetRecordsOutput = {
    type = "structure",
    id = "GetRecordsOutput",
    members = {
        changeRecords = {
            type = "list",
            member = M.Record,
        },
        nextShardIterator = {
            type = "string",
        },
    },
}

return M
