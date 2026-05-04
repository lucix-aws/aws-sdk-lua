local M = {}

M.AccessDeniedExceptionReason = {
    UNAUTHORIZED_ACCOUNT = "UNAUTHORIZED_ACCOUNT",
    DEPENDENCY_ACCESS_DENIED = "DEPENDENCY_ACCESS_DENIED",
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Block = {
    type = "structure",
    id = "Block",
    members = {
        BlockIndex = {
            type = "integer",
        },
        BlockToken = {
            type = "string",
        },
    },
}

M.ChangedBlock = {
    type = "structure",
    id = "ChangedBlock",
    members = {
        BlockIndex = {
            type = "integer",
        },
        FirstBlockToken = {
            type = "string",
        },
        SecondBlockToken = {
            type = "string",
        },
    },
}

M.ChecksumAggregationMethod = {
    CHECKSUM_AGGREGATION_LINEAR = "LINEAR",
}

M.ChecksumAlgorithm = {
    CHECKSUM_ALGORITHM_SHA256 = "SHA256",
}

M.CompleteSnapshotInput = {
    type = "structure",
    id = "CompleteSnapshotInput",
    members = {
        SnapshotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChangedBlocksCount = {
            type = "integer",
            traits = {
                http_header = "x-amz-ChangedBlocksCount",
                required = true,
            },
        },
        Checksum = {
            type = "string",
            traits = {
                http_header = "x-amz-Checksum",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-Checksum-Algorithm",
            },
        },
        ChecksumAggregationMethod = {
            type = "string",
            traits = {
                http_header = "x-amz-Checksum-Aggregation-Method",
            },
        },
    },
}

M.Status = {
    COMPLETED = "completed",
    PENDING = "pending",
    ERROR = "error",
}

M.CompleteSnapshotOutput = {
    type = "structure",
    id = "CompleteSnapshotOutput",
    members = {
        Status = {
            type = "string",
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
        },
    },
}

M.RequestThrottledExceptionReason = {
    ACCOUNT_THROTTLED = "ACCOUNT_THROTTLED",
    DEPENDENCY_REQUEST_THROTTLED = "DEPENDENCY_REQUEST_THROTTLED",
    RESOURCE_LEVEL_THROTTLE = "RESOURCE_LEVEL_THROTTLE",
}

M.RequestThrottledException = {
    type = "structure",
    id = "RequestThrottledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.ResourceNotFoundExceptionReason = {
    SNAPSHOT_NOT_FOUND = "SNAPSHOT_NOT_FOUND",
    GRANT_NOT_FOUND = "GRANT_NOT_FOUND",
    DEPENDENCY_RESOURCE_NOT_FOUND = "DEPENDENCY_RESOURCE_NOT_FOUND",
    IMAGE_NOT_FOUND = "IMAGE_NOT_FOUND",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededExceptionReason = {
    DEPENDENCY_SERVICE_QUOTA_EXCEEDED = "DEPENDENCY_SERVICE_QUOTA_EXCEEDED",
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.ValidationExceptionReason = {
    INVALID_CUSTOMER_KEY = "INVALID_CUSTOMER_KEY",
    INVALID_PAGE_TOKEN = "INVALID_PAGE_TOKEN",
    INVALID_BLOCK_TOKEN = "INVALID_BLOCK_TOKEN",
    INVALID_GRANT_TOKEN = "INVALID_GRANT_TOKEN",
    INVALID_SNAPSHOT_ID = "INVALID_SNAPSHOT_ID",
    UNRELATED_SNAPSHOTS = "UNRELATED_SNAPSHOTS",
    INVALID_BLOCK = "INVALID_BLOCK",
    INVALID_CONTENT_ENCODING = "INVALID_CONTENT_ENCODING",
    INVALID_TAG = "INVALID_TAG",
    INVALID_DEPENDENCY_REQUEST = "INVALID_DEPENDENCY_REQUEST",
    INVALID_PARAMETER_VALUE = "INVALID_PARAMETER_VALUE",
    INVALID_VOLUME_SIZE = "INVALID_VOLUME_SIZE",
    CONFLICTING_BLOCK_UPDATE = "CONFLICTING_BLOCK_UPDATE",
    INVALID_IMAGE_ID = "INVALID_IMAGE_ID",
    WRITE_REQUEST_TIMEOUT = "WRITE_REQUEST_TIMEOUT",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.ConcurrentLimitExceededException = {
    type = "structure",
    id = "ConcurrentLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetSnapshotBlockInput = {
    type = "structure",
    id = "GetSnapshotBlockInput",
    members = {
        SnapshotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BlockIndex = {
            type = "integer",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BlockToken = {
            type = "string",
            traits = {
                http_query = "blockToken",
                required = true,
            },
        },
    },
}

M.GetSnapshotBlockOutput = {
    type = "structure",
    id = "GetSnapshotBlockOutput",
    members = {
        DataLength = {
            type = "integer",
            traits = {
                http_header = "x-amz-Data-Length",
            },
        },
        BlockData = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
        Checksum = {
            type = "string",
            traits = {
                http_header = "x-amz-Checksum",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-Checksum-Algorithm",
            },
        },
    },
}

M.ListChangedBlocksInput = {
    type = "structure",
    id = "ListChangedBlocksInput",
    members = {
        FirstSnapshotId = {
            type = "string",
            traits = {
                http_query = "firstSnapshotId",
            },
        },
        SecondSnapshotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "pageToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        StartingBlockIndex = {
            type = "integer",
            traits = {
                http_query = "startingBlockIndex",
            },
        },
    },
}

M.ListChangedBlocksOutput = {
    type = "structure",
    id = "ListChangedBlocksOutput",
    members = {
        ChangedBlocks = {
            type = "list",
            member = M.ChangedBlock,
        },
        ExpiryTime = {
            type = "timestamp",
        },
        VolumeSize = {
            type = "long",
        },
        BlockSize = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSnapshotBlocksInput = {
    type = "structure",
    id = "ListSnapshotBlocksInput",
    members = {
        SnapshotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "pageToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        StartingBlockIndex = {
            type = "integer",
            traits = {
                http_query = "startingBlockIndex",
            },
        },
    },
}

M.ListSnapshotBlocksOutput = {
    type = "structure",
    id = "ListSnapshotBlocksOutput",
    members = {
        Blocks = {
            type = "list",
            member = M.Block,
        },
        ExpiryTime = {
            type = "timestamp",
        },
        VolumeSize = {
            type = "long",
        },
        BlockSize = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutSnapshotBlockInput = {
    type = "structure",
    id = "PutSnapshotBlockInput",
    members = {
        SnapshotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BlockIndex = {
            type = "integer",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BlockData = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        DataLength = {
            type = "integer",
            traits = {
                http_header = "x-amz-Data-Length",
                required = true,
            },
        },
        Progress = {
            type = "integer",
            traits = {
                http_header = "x-amz-Progress",
            },
        },
        Checksum = {
            type = "string",
            traits = {
                http_header = "x-amz-Checksum",
                required = true,
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-Checksum-Algorithm",
                required = true,
            },
        },
    },
}

M.PutSnapshotBlockOutput = {
    type = "structure",
    id = "PutSnapshotBlockOutput",
    members = {
        Checksum = {
            type = "string",
            traits = {
                http_header = "x-amz-Checksum",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-Checksum-Algorithm",
            },
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.StartSnapshotInput = {
    type = "structure",
    id = "StartSnapshotInput",
    members = {
        VolumeSize = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ParentSnapshotId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Description = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Encrypted = {
            type = "boolean",
        },
        KmsKeyArn = {
            type = "string",
        },
        Timeout = {
            type = "integer",
        },
    },
}

M.SSEType = {
    SSE_EBS = "sse-ebs",
    SSE_KMS = "sse-kms",
    NONE = "none",
}

M.StartSnapshotOutput = {
    type = "structure",
    id = "StartSnapshotOutput",
    members = {
        Description = {
            type = "string",
        },
        SnapshotId = {
            type = "string",
        },
        OwnerId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        VolumeSize = {
            type = "long",
        },
        BlockSize = {
            type = "integer",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ParentSnapshotId = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        SseType = {
            type = "string",
        },
    },
}

return M
