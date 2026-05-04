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

M.AddTagsToStreamInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.AddTagsToStreamOutput = {
    type = "structure",
}

M.InvalidArgumentException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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

M.ResourceInUseException = {
    type = "structure",
    error = "client",
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

M.HashKeyRange = {
    type = "structure",
    members = {
        StartingHashKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndingHashKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChildShard = {
    type = "structure",
    members = {
        ShardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParentShards = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        HashKeyRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HashKeyRange }),
    },
}

M.ConsumerStatus = {
    CREATING = "CREATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
}

M.Consumer = {
    type = "structure",
    members = {
        ConsumerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConsumerARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConsumerStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConsumerCreationTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ConsumerDescription = {
    type = "structure",
    members = {
        ConsumerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConsumerARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConsumerStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConsumerCreationTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StreamMode = {
    PROVISIONED = "PROVISIONED",
    ON_DEMAND = "ON_DEMAND",
}

M.StreamModeDetails = {
    type = "structure",
    members = {
        StreamMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateStreamInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShardCount = {
            type = "integer",
        },
        StreamModeDetails = M.StreamModeDetails,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        WarmThroughputMiBps = {
            type = "integer",
        },
        MaxRecordSizeInKiB = {
            type = "integer",
        },
    },
}

M.CreateStreamOutput = {
    type = "structure",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DecreaseStreamRetentionPeriodInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        RetentionPeriodHours = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.DecreaseStreamRetentionPeriodOutput = {
    type = "structure",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamId = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
}

M.DeleteStreamInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        EnforceConsumerDeletion = {
            type = "boolean",
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.DeleteStreamOutput = {
    type = "structure",
}

M.DeregisterStreamConsumerInput = {
    type = "structure",
    members = {
        StreamARN = {
            type = "string",
        },
        ConsumerName = {
            type = "string",
        },
        ConsumerARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.DeregisterStreamConsumerOutput = {
    type = "structure",
}

M.DescribeAccountSettingsInput = {
    type = "structure",
}

M.MinimumThroughputBillingCommitmentOutputStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    ENABLED_UNTIL_EARLIEST_ALLOWED_END = "ENABLED_UNTIL_EARLIEST_ALLOWED_END",
}

M.MinimumThroughputBillingCommitmentOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartedAt = {
            type = "timestamp",
        },
        EndedAt = {
            type = "timestamp",
        },
        EarliestAllowedEndAt = {
            type = "timestamp",
        },
    },
}

M.DescribeAccountSettingsOutput = {
    type = "structure",
    members = {
        MinimumThroughputBillingCommitment = M.MinimumThroughputBillingCommitmentOutput,
    },
}

M.DescribeLimitsInput = {
    type = "structure",
}

M.DescribeLimitsOutput = {
    type = "structure",
    members = {
        ShardLimit = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        OpenShardCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        OnDemandStreamCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        OnDemandStreamCountLimit = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeStreamInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        ExclusiveStartShardId = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.EncryptionType = {
    NONE = "NONE",
    KMS = "KMS",
}

M.MetricsName = {
    INCOMING_BYTES = "IncomingBytes",
    INCOMING_RECORDS = "IncomingRecords",
    OUTGOING_BYTES = "OutgoingBytes",
    OUTGOING_RECORDS = "OutgoingRecords",
    WRITE_PROVISIONED_THROUGHPUT_EXCEEDED = "WriteProvisionedThroughputExceeded",
    READ_PROVISIONED_THROUGHPUT_EXCEEDED = "ReadProvisionedThroughputExceeded",
    ITERATOR_AGE_MILLISECONDS = "IteratorAgeMilliseconds",
    ALL = "ALL",
}

M.EnhancedMetrics = {
    type = "structure",
    members = {
        ShardLevelMetrics = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SequenceNumberRange = {
    type = "structure",
    members = {
        StartingSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
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
            traits = {
                required = true,
            },
        },
        ParentShardId = {
            type = "string",
        },
        AdjacentParentShardId = {
            type = "string",
        },
        HashKeyRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HashKeyRange }),
        SequenceNumberRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SequenceNumberRange }),
    },
}

M.StreamStatus = {
    CREATING = "CREATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
}

M.StreamDescription = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamModeDetails = M.StreamModeDetails,
        Shards = {
            type = "list",
            member = M.Shard,
            traits = {
                required = true,
            },
        },
        HasMoreShards = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        RetentionPeriodHours = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        StreamCreationTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EnhancedMonitoring = {
            type = "list",
            member = M.EnhancedMetrics,
            traits = {
                required = true,
            },
        },
        EncryptionType = {
            type = "string",
        },
        KeyId = {
            type = "string",
        },
    },
}

M.DescribeStreamOutput = {
    type = "structure",
    members = {
        StreamDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StreamDescription }),
    },
}

M.DescribeStreamConsumerInput = {
    type = "structure",
    members = {
        StreamARN = {
            type = "string",
        },
        ConsumerName = {
            type = "string",
        },
        ConsumerARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.DescribeStreamConsumerOutput = {
    type = "structure",
    members = {
        ConsumerDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConsumerDescription }),
    },
}

M.DescribeStreamSummaryInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.WarmThroughputObject = {
    type = "structure",
    members = {
        TargetMiBps = {
            type = "integer",
        },
        CurrentMiBps = {
            type = "integer",
        },
    },
}

M.StreamDescriptionSummary = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamId = {
            type = "string",
        },
        StreamStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamModeDetails = M.StreamModeDetails,
        RetentionPeriodHours = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        StreamCreationTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EnhancedMonitoring = {
            type = "list",
            member = M.EnhancedMetrics,
            traits = {
                required = true,
            },
        },
        EncryptionType = {
            type = "string",
        },
        KeyId = {
            type = "string",
        },
        OpenShardCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ConsumerCount = {
            type = "integer",
        },
        WarmThroughput = M.WarmThroughputObject,
        MaxRecordSizeInKiB = {
            type = "integer",
        },
    },
}

M.DescribeStreamSummaryOutput = {
    type = "structure",
    members = {
        StreamDescriptionSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StreamDescriptionSummary }),
    },
}

M.DisableEnhancedMonitoringInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        ShardLevelMetrics = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.DisableEnhancedMonitoringOutput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        CurrentShardLevelMetrics = {
            type = "list",
            member = { type = "string" },
        },
        DesiredShardLevelMetrics = {
            type = "list",
            member = { type = "string" },
        },
        StreamARN = {
            type = "string",
        },
    },
}

M.EnableEnhancedMonitoringInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        ShardLevelMetrics = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.EnableEnhancedMonitoringOutput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        CurrentShardLevelMetrics = {
            type = "list",
            member = { type = "string" },
        },
        DesiredShardLevelMetrics = {
            type = "list",
            member = { type = "string" },
        },
        StreamARN = {
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

M.ExpiredNextTokenException = {
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
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.Record = {
    type = "structure",
    members = {
        SequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApproximateArrivalTimestamp = {
            type = "timestamp",
        },
        Data = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        PartitionKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionType = {
            type = "string",
        },
    },
}

M.GetRecordsOutput = {
    type = "structure",
    members = {
        Records = {
            type = "list",
            member = M.Record,
            traits = {
                required = true,
            },
        },
        NextShardIterator = {
            type = "string",
        },
        MillisBehindLatest = {
            type = "long",
        },
        ChildShards = {
            type = "list",
            member = M.ChildShard,
        },
    },
}

M.InternalFailureException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSAccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSDisabledException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSInvalidStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSOptInRequired = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ProvisionedThroughputExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamId = {
            type = "string",
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ShardIteratorType = {
    AT_SEQUENCE_NUMBER = "AT_SEQUENCE_NUMBER",
    AFTER_SEQUENCE_NUMBER = "AFTER_SEQUENCE_NUMBER",
    TRIM_HORIZON = "TRIM_HORIZON",
    LATEST = "LATEST",
    AT_TIMESTAMP = "AT_TIMESTAMP",
}

M.GetShardIteratorInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
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
        StartingSequenceNumber = {
            type = "string",
        },
        Timestamp = {
            type = "timestamp",
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
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

M.IncreaseStreamRetentionPeriodInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        RetentionPeriodHours = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.IncreaseStreamRetentionPeriodOutput = {
    type = "structure",
}

M.ShardFilterType = {
    AFTER_SHARD_ID = "AFTER_SHARD_ID",
    AT_TRIM_HORIZON = "AT_TRIM_HORIZON",
    FROM_TRIM_HORIZON = "FROM_TRIM_HORIZON",
    AT_LATEST = "AT_LATEST",
    AT_TIMESTAMP = "AT_TIMESTAMP",
    FROM_TIMESTAMP = "FROM_TIMESTAMP",
}

M.ShardFilter = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShardId = {
            type = "string",
        },
        Timestamp = {
            type = "timestamp",
        },
    },
}

M.ListShardsInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        ExclusiveStartShardId = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        StreamCreationTimestamp = {
            type = "timestamp",
        },
        ShardFilter = M.ShardFilter,
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.ListShardsOutput = {
    type = "structure",
    members = {
        Shards = {
            type = "list",
            member = M.Shard,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStreamConsumersInput = {
    type = "structure",
    members = {
        StreamARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        StreamCreationTimestamp = {
            type = "timestamp",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.ListStreamConsumersOutput = {
    type = "structure",
    members = {
        Consumers = {
            type = "list",
            member = M.Consumer,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStreamsInput = {
    type = "structure",
    members = {
        Limit = {
            type = "integer",
        },
        ExclusiveStartStreamName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StreamSummary = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamModeDetails = M.StreamModeDetails,
        StreamCreationTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListStreamsOutput = {
    type = "structure",
    members = {
        StreamNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        HasMoreStreams = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        StreamSummaries = {
            type = "list",
            member = M.StreamSummary,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamId = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListTagsForStreamInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        ExclusiveStartTagKey = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.ListTagsForStreamOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        HasMoreTags = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.MergeShardsInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        ShardToMerge = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdjacentShardToMerge = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.MergeShardsOutput = {
    type = "structure",
}

M.PutRecordInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        Data = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        PartitionKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExplicitHashKey = {
            type = "string",
        },
        SequenceNumberForOrdering = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.PutRecordOutput = {
    type = "structure",
    members = {
        ShardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionType = {
            type = "string",
        },
    },
}

M.PutRecordsRequestEntry = {
    type = "structure",
    members = {
        Data = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        ExplicitHashKey = {
            type = "string",
        },
        PartitionKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRecordsInput = {
    type = "structure",
    members = {
        Records = {
            type = "list",
            member = M.PutRecordsRequestEntry,
            traits = {
                required = true,
            },
        },
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.PutRecordsResultEntry = {
    type = "structure",
    members = {
        SequenceNumber = {
            type = "string",
        },
        ShardId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.PutRecordsOutput = {
    type = "structure",
    members = {
        FailedRecordCount = {
            type = "integer",
        },
        Records = {
            type = "list",
            member = M.PutRecordsResultEntry,
            traits = {
                required = true,
            },
        },
        EncryptionType = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamId = {
            type = "string",
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
}

M.RegisterStreamConsumerInput = {
    type = "structure",
    members = {
        StreamARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConsumerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RegisterStreamConsumerOutput = {
    type = "structure",
    members = {
        Consumer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Consumer }),
    },
}

M.RemoveTagsFromStreamInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.RemoveTagsFromStreamOutput = {
    type = "structure",
}

M.SplitShardInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        ShardToSplit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewStartingHashKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.SplitShardOutput = {
    type = "structure",
}

M.StartStreamEncryptionInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        EncryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.StartStreamEncryptionOutput = {
    type = "structure",
}

M.StopStreamEncryptionInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        EncryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.StopStreamEncryptionOutput = {
    type = "structure",
}

M.StartingPosition = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SequenceNumber = {
            type = "string",
        },
        Timestamp = {
            type = "timestamp",
        },
    },
}

M.SubscribeToShardInput = {
    type = "structure",
    members = {
        ConsumerARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamId = {
            type = "string",
        },
        ShardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartingPosition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StartingPosition }),
    },
}

M.SubscribeToShardEvent = {
    type = "structure",
    members = {
        Records = {
            type = "list",
            member = M.Record,
            traits = {
                required = true,
            },
        },
        ContinuationSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MillisBehindLatest = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ChildShards = {
            type = "list",
            member = M.ChildShard,
        },
    },
}

M.SubscribeToShardEventStream = {
    type = "union",
    members = {
        SubscribeToShardEvent = M.SubscribeToShardEvent,
        ResourceNotFoundException = M.ResourceNotFoundException,
        ResourceInUseException = M.ResourceInUseException,
        KMSDisabledException = M.KMSDisabledException,
        KMSInvalidStateException = M.KMSInvalidStateException,
        KMSAccessDeniedException = M.KMSAccessDeniedException,
        KMSNotFoundException = M.KMSNotFoundException,
        KMSOptInRequired = M.KMSOptInRequired,
        KMSThrottlingException = M.KMSThrottlingException,
        InternalFailureException = M.InternalFailureException,
    },
}

M.SubscribeToShardOutput = {
    type = "structure",
    members = {
        EventStream = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubscribeToShardEventStream }),
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamId = {
            type = "string",
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamId = {
            type = "string",
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.MinimumThroughputBillingCommitmentInputStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.MinimumThroughputBillingCommitmentInput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAccountSettingsInput = {
    type = "structure",
    members = {
        MinimumThroughputBillingCommitment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MinimumThroughputBillingCommitmentInput }),
    },
}

M.UpdateAccountSettingsOutput = {
    type = "structure",
    members = {
        MinimumThroughputBillingCommitment = M.MinimumThroughputBillingCommitmentOutput,
    },
}

M.UpdateMaxRecordSizeInput = {
    type = "structure",
    members = {
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
        MaxRecordSizeInKiB = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateMaxRecordSizeOutput = {
    type = "structure",
}

M.ScalingType = {
    UNIFORM_SCALING = "UNIFORM_SCALING",
}

M.UpdateShardCountInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        TargetShardCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ScalingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.UpdateShardCountOutput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        CurrentShardCount = {
            type = "integer",
        },
        TargetShardCount = {
            type = "integer",
        },
        StreamARN = {
            type = "string",
        },
    },
}

M.UpdateStreamModeInput = {
    type = "structure",
    members = {
        StreamARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamId = {
            type = "string",
        },
        StreamModeDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StreamModeDetails }),
        WarmThroughputMiBps = {
            type = "integer",
        },
    },
}

M.UpdateStreamModeOutput = {
    type = "structure",
}

M.UpdateStreamWarmThroughputInput = {
    type = "structure",
    members = {
        StreamARN = {
            type = "string",
        },
        StreamName = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
        WarmThroughputMiBps = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateStreamWarmThroughputOutput = {
    type = "structure",
    members = {
        StreamARN = {
            type = "string",
        },
        StreamName = {
            type = "string",
        },
        WarmThroughput = M.WarmThroughputObject,
    },
}

return M
