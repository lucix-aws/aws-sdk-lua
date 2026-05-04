local M = {}

M.AccessDeniedException = {
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
        shardIterator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
    },
}

M.KeyspacesMetadata = {
    type = "structure",
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

M.ThrottlingException = {
    type = "structure",
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
    members = {
        streamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        shardFilter = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SequenceNumberRange = {
    type = "structure",
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
    members = {
        shardId = {
            type = "string",
        },
        sequenceNumberRange = {
            type = "structure",
        },
        parentShardIds = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListStreamsInput = {
    type = "structure",
    members = {
        keyspaceName = {
            type = "string",
        },
        tableName = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.Stream = {
    type = "structure",
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
    members = {
        streams = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.KeyspacesCellValue = {
    type = "union",
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
            member_type = "structure",
        },
        mapT = {
            type = "list",
            member_type = "structure",
        },
        setT = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.KeyspacesCell = {
    type = "structure",
    members = {
        value = {
            type = "union",
        },
        metadata = {
            type = "structure",
        },
    },
}

M.KeyspacesCellMapDefinition = {
    type = "structure",
    members = {
        key = {
            type = "union",
        },
        value = {
            type = "union",
        },
        metadata = {
            type = "structure",
        },
    },
}

M.KeyspacesRow = {
    type = "structure",
    members = {
        valueCells = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        staticCells = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        rowMetadata = {
            type = "structure",
        },
    },
}

M.Record = {
    type = "structure",
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
            key_type = "string",
            value_type = "union",
        },
        clusteringKeys = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        newImage = {
            type = "structure",
        },
        oldImage = {
            type = "structure",
        },
        sequenceNumber = {
            type = "string",
        },
    },
}

M.GetRecordsOutput = {
    type = "structure",
    members = {
        changeRecords = {
            type = "list",
            member_type = "structure",
        },
        nextShardIterator = {
            type = "string",
        },
    },
}

return M
