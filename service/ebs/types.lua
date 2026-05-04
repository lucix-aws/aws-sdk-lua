local M = {}

M.AccessDeniedExceptionReason = {
    UNAUTHORIZED_ACCOUNT = "UNAUTHORIZED_ACCOUNT",
    DEPENDENCY_ACCESS_DENIED = "DEPENDENCY_ACCESS_DENIED",
}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        BlockIndex = {
            type = "number",
        },
        BlockToken = {
            type = "string",
        },
    },
}

M.ChangedBlock = {
    type = "structure",
    members = {
        BlockIndex = {
            type = "number",
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
    members = {
        SnapshotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChangedBlocksCount = {
            type = "number",
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
    members = {
        Status = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetSnapshotBlockInput = {
    type = "structure",
    members = {
        SnapshotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BlockIndex = {
            type = "number",
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
    members = {
        DataLength = {
            type = "number",
            traits = {
                http_header = "x-amz-Data-Length",
            },
        },
        BlockData = {
            type = "blob",
            traits = {
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        StartingBlockIndex = {
            type = "number",
            traits = {
                http_query = "startingBlockIndex",
            },
        },
    },
}

M.ListChangedBlocksOutput = {
    type = "structure",
    members = {
        ChangedBlocks = {
            type = "list",
            member_type = "structure",
        },
        ExpiryTime = {
            type = "timestamp",
        },
        VolumeSize = {
            type = "number",
        },
        BlockSize = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSnapshotBlocksInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        StartingBlockIndex = {
            type = "number",
            traits = {
                http_query = "startingBlockIndex",
            },
        },
    },
}

M.ListSnapshotBlocksOutput = {
    type = "structure",
    members = {
        Blocks = {
            type = "list",
            member_type = "structure",
        },
        ExpiryTime = {
            type = "timestamp",
        },
        VolumeSize = {
            type = "number",
        },
        BlockSize = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutSnapshotBlockInput = {
    type = "structure",
    members = {
        SnapshotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BlockIndex = {
            type = "number",
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
            type = "number",
            traits = {
                http_header = "x-amz-Data-Length",
                required = true,
            },
        },
        Progress = {
            type = "number",
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
    members = {
        VolumeSize = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ParentSnapshotId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Description = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        Encrypted = {
            type = "boolean",
        },
        KmsKeyArn = {
            type = "string",
        },
        Timeout = {
            type = "number",
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
            type = "number",
        },
        BlockSize = {
            type = "number",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
