local M = {}

M.AddPermissionInput = {
    type = "structure",
    id = "AddPermissionInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Label = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AWSAccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "AWSAccountId",
            },
        },
        Actions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "ActionName",
            },
        },
    },
}

M.AddPermissionOutput = {
    type = "structure",
    id = "AddPermissionOutput",
}

M.InvalidAddress = {
    type = "structure",
    id = "InvalidAddress",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSecurity = {
    type = "structure",
    id = "InvalidSecurity",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OverLimit = {
    type = "structure",
    id = "OverLimit",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.QueueDoesNotExist = {
    type = "structure",
    id = "QueueDoesNotExist",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RequestThrottled = {
    type = "structure",
    id = "RequestThrottled",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedOperation = {
    type = "structure",
    id = "UnsupportedOperation",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelMessageMoveTaskInput = {
    type = "structure",
    id = "CancelMessageMoveTaskInput",
    members = {
        TaskHandle = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelMessageMoveTaskOutput = {
    type = "structure",
    id = "CancelMessageMoveTaskOutput",
    members = {
        ApproximateNumberOfMessagesMoved = {
            type = "long",
            traits = {
                default = 0,
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
        },
    },
}

M.ChangeMessageVisibilityInput = {
    type = "structure",
    id = "ChangeMessageVisibilityInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReceiptHandle = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VisibilityTimeout = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeMessageVisibilityOutput = {
    type = "structure",
    id = "ChangeMessageVisibilityOutput",
}

M.MessageNotInflight = {
    type = "structure",
    id = "MessageNotInflight",
    error = "client",
}

M.ReceiptHandleIsInvalid = {
    type = "structure",
    id = "ReceiptHandleIsInvalid",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchEntryIdsNotDistinct = {
    type = "structure",
    id = "BatchEntryIdsNotDistinct",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ChangeMessageVisibilityBatchRequestEntry = {
    type = "structure",
    id = "ChangeMessageVisibilityBatchRequestEntry",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReceiptHandle = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VisibilityTimeout = {
            type = "integer",
        },
    },
}

M.ChangeMessageVisibilityBatchInput = {
    type = "structure",
    id = "ChangeMessageVisibilityBatchInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Entries = {
            type = "list",
            member = M.ChangeMessageVisibilityBatchRequestEntry,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "ChangeMessageVisibilityBatchRequestEntry",
            },
        },
    },
}

M.BatchResultErrorEntry = {
    type = "structure",
    id = "BatchResultErrorEntry",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SenderFault = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.ChangeMessageVisibilityBatchResultEntry = {
    type = "structure",
    id = "ChangeMessageVisibilityBatchResultEntry",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeMessageVisibilityBatchOutput = {
    type = "structure",
    id = "ChangeMessageVisibilityBatchOutput",
    members = {
        Successful = {
            type = "list",
            member = M.ChangeMessageVisibilityBatchResultEntry,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "ChangeMessageVisibilityBatchResultEntry",
            },
        },
        Failed = {
            type = "list",
            member = M.BatchResultErrorEntry,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "BatchResultErrorEntry",
            },
        },
    },
}

M.EmptyBatchRequest = {
    type = "structure",
    id = "EmptyBatchRequest",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidBatchEntryId = {
    type = "structure",
    id = "InvalidBatchEntryId",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyEntriesInBatchRequest = {
    type = "structure",
    id = "TooManyEntriesInBatchRequest",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.QueueAttributeName = {
    All = "All",
    Policy = "Policy",
    VisibilityTimeout = "VisibilityTimeout",
    MaximumMessageSize = "MaximumMessageSize",
    MessageRetentionPeriod = "MessageRetentionPeriod",
    ApproximateNumberOfMessages = "ApproximateNumberOfMessages",
    ApproximateNumberOfMessagesNotVisible = "ApproximateNumberOfMessagesNotVisible",
    CreatedTimestamp = "CreatedTimestamp",
    LastModifiedTimestamp = "LastModifiedTimestamp",
    QueueArn = "QueueArn",
    ApproximateNumberOfMessagesDelayed = "ApproximateNumberOfMessagesDelayed",
    DelaySeconds = "DelaySeconds",
    ReceiveMessageWaitTimeSeconds = "ReceiveMessageWaitTimeSeconds",
    RedrivePolicy = "RedrivePolicy",
    FifoQueue = "FifoQueue",
    ContentBasedDeduplication = "ContentBasedDeduplication",
    KmsMasterKeyId = "KmsMasterKeyId",
    KmsDataKeyReusePeriodSeconds = "KmsDataKeyReusePeriodSeconds",
    DeduplicationScope = "DeduplicationScope",
    FifoThroughputLimit = "FifoThroughputLimit",
    RedriveAllowPolicy = "RedriveAllowPolicy",
    SqsManagedSseEnabled = "SqsManagedSseEnabled",
}

M.CreateQueueInput = {
    type = "structure",
    id = "CreateQueueInput",
    members = {
        QueueName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key = { type = "string", traits = {
                xml_name = "Name",
            } },
            value = { type = "string", traits = {
                xml_name = "Value",
            } },
            traits = {
                xml_flattened = true,
                xml_name = "Attribute",
            },
        },
        tags = {
            type = "map",
            key = { type = "string", traits = {
                xml_name = "Key",
            } },
            value = { type = "string", traits = {
                xml_name = "Value",
            } },
            traits = {
                xml_flattened = true,
                xml_name = "Tag",
            },
        },
    },
}

M.CreateQueueOutput = {
    type = "structure",
    id = "CreateQueueOutput",
    members = {
        QueueUrl = {
            type = "string",
        },
    },
}

M.InvalidAttributeName = {
    type = "structure",
    id = "InvalidAttributeName",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidAttributeValue = {
    type = "structure",
    id = "InvalidAttributeValue",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.QueueDeletedRecently = {
    type = "structure",
    id = "QueueDeletedRecently",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.QueueNameExists = {
    type = "structure",
    id = "QueueNameExists",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteMessageInput = {
    type = "structure",
    id = "DeleteMessageInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReceiptHandle = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMessageOutput = {
    type = "structure",
    id = "DeleteMessageOutput",
}

M.InvalidIdFormat = {
    type = "structure",
    id = "InvalidIdFormat",
    error = "client",
}

M.DeleteMessageBatchRequestEntry = {
    type = "structure",
    id = "DeleteMessageBatchRequestEntry",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReceiptHandle = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMessageBatchInput = {
    type = "structure",
    id = "DeleteMessageBatchInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Entries = {
            type = "list",
            member = M.DeleteMessageBatchRequestEntry,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "DeleteMessageBatchRequestEntry",
            },
        },
    },
}

M.DeleteMessageBatchResultEntry = {
    type = "structure",
    id = "DeleteMessageBatchResultEntry",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMessageBatchOutput = {
    type = "structure",
    id = "DeleteMessageBatchOutput",
    members = {
        Successful = {
            type = "list",
            member = M.DeleteMessageBatchResultEntry,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "DeleteMessageBatchResultEntry",
            },
        },
        Failed = {
            type = "list",
            member = M.BatchResultErrorEntry,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "BatchResultErrorEntry",
            },
        },
    },
}

M.DeleteQueueInput = {
    type = "structure",
    id = "DeleteQueueInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteQueueOutput = {
    type = "structure",
    id = "DeleteQueueOutput",
}

M.GetQueueAttributesInput = {
    type = "structure",
    id = "GetQueueAttributesInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_flattened = true,
                xml_name = "AttributeName",
            },
        },
    },
}

M.GetQueueAttributesOutput = {
    type = "structure",
    id = "GetQueueAttributesOutput",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string", traits = {
                xml_name = "Name",
            } },
            value = { type = "string", traits = {
                xml_name = "Value",
            } },
            traits = {
                xml_flattened = true,
                xml_name = "Attribute",
            },
        },
    },
}

M.GetQueueUrlInput = {
    type = "structure",
    id = "GetQueueUrlInput",
    members = {
        QueueName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueueOwnerAWSAccountId = {
            type = "string",
        },
    },
}

M.GetQueueUrlOutput = {
    type = "structure",
    id = "GetQueueUrlOutput",
    members = {
        QueueUrl = {
            type = "string",
        },
    },
}

M.ListDeadLetterSourceQueuesInput = {
    type = "structure",
    id = "ListDeadLetterSourceQueuesInput",
    members = {
        QueueUrl = {
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
    },
}

M.ListDeadLetterSourceQueuesOutput = {
    type = "structure",
    id = "ListDeadLetterSourceQueuesOutput",
    members = {
        queueUrls = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "QueueUrl",
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMessageMoveTasksInput = {
    type = "structure",
    id = "ListMessageMoveTasksInput",
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListMessageMoveTasksResultEntry = {
    type = "structure",
    id = "ListMessageMoveTasksResultEntry",
    members = {
        TaskHandle = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        DestinationArn = {
            type = "string",
        },
        MaxNumberOfMessagesPerSecond = {
            type = "integer",
        },
        ApproximateNumberOfMessagesMoved = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ApproximateNumberOfMessagesToMove = {
            type = "long",
        },
        FailureReason = {
            type = "string",
        },
        StartedTimestamp = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListMessageMoveTasksOutput = {
    type = "structure",
    id = "ListMessageMoveTasksOutput",
    traits = {
        xml_name = "ListMessageMoveTasksResult",
    },
    members = {
        Results = {
            type = "list",
            member = M.ListMessageMoveTasksResultEntry,
            traits = {
                xml_flattened = true,
                xml_name = "ListMessageMoveTasksResultEntry",
            },
        },
    },
}

M.ListQueuesInput = {
    type = "structure",
    id = "ListQueuesInput",
    members = {
        QueueNamePrefix = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListQueuesOutput = {
    type = "structure",
    id = "ListQueuesOutput",
    members = {
        QueueUrls = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_flattened = true,
                xml_name = "QueueUrl",
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListQueueTagsInput = {
    type = "structure",
    id = "ListQueueTagsInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListQueueTagsOutput = {
    type = "structure",
    id = "ListQueueTagsOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string", traits = {
                xml_name = "Key",
            } },
            value = { type = "string", traits = {
                xml_name = "Value",
            } },
            traits = {
                xml_flattened = true,
                xml_name = "Tag",
            },
        },
    },
}

M.PurgeQueueInProgress = {
    type = "structure",
    id = "PurgeQueueInProgress",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PurgeQueueInput = {
    type = "structure",
    id = "PurgeQueueInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PurgeQueueOutput = {
    type = "structure",
    id = "PurgeQueueOutput",
}

M.KmsAccessDenied = {
    type = "structure",
    id = "KmsAccessDenied",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsDisabled = {
    type = "structure",
    id = "KmsDisabled",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsInvalidKeyUsage = {
    type = "structure",
    id = "KmsInvalidKeyUsage",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsInvalidState = {
    type = "structure",
    id = "KmsInvalidState",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsNotFound = {
    type = "structure",
    id = "KmsNotFound",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsOptInRequired = {
    type = "structure",
    id = "KmsOptInRequired",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsThrottled = {
    type = "structure",
    id = "KmsThrottled",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MessageSystemAttributeName = {
    All = "All",
    SenderId = "SenderId",
    SentTimestamp = "SentTimestamp",
    ApproximateReceiveCount = "ApproximateReceiveCount",
    ApproximateFirstReceiveTimestamp = "ApproximateFirstReceiveTimestamp",
    SequenceNumber = "SequenceNumber",
    MessageDeduplicationId = "MessageDeduplicationId",
    MessageGroupId = "MessageGroupId",
    AWSTraceHeader = "AWSTraceHeader",
    DeadLetterQueueSourceArn = "DeadLetterQueueSourceArn",
}

M.ReceiveMessageInput = {
    type = "structure",
    id = "ReceiveMessageInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_flattened = true,
                xml_name = "AttributeName",
            },
        },
        MessageSystemAttributeNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_flattened = true,
                xml_name = "AttributeName",
            },
        },
        MessageAttributeNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_flattened = true,
                xml_name = "MessageAttributeName",
            },
        },
        MaxNumberOfMessages = {
            type = "integer",
        },
        VisibilityTimeout = {
            type = "integer",
        },
        WaitTimeSeconds = {
            type = "integer",
        },
        ReceiveRequestAttemptId = {
            type = "string",
        },
    },
}

M.MessageAttributeValue = {
    type = "structure",
    id = "MessageAttributeValue",
    members = {
        StringValue = {
            type = "string",
        },
        BinaryValue = {
            type = "blob",
        },
        StringListValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_flattened = true,
                xml_name = "StringListValue",
            },
        },
        BinaryListValues = {
            type = "list",
            member = { type = "blob" },
            traits = {
                xml_flattened = true,
                xml_name = "BinaryListValue",
            },
        },
        DataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Message = {
    type = "structure",
    id = "Message",
    members = {
        MessageId = {
            type = "string",
        },
        ReceiptHandle = {
            type = "string",
        },
        MD5OfBody = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string", traits = {
                xml_name = "Name",
            } },
            value = { type = "string", traits = {
                xml_name = "Value",
            } },
            traits = {
                xml_flattened = true,
                xml_name = "Attribute",
            },
        },
        MD5OfMessageAttributes = {
            type = "string",
        },
        MessageAttributes = {
            type = "map",
            key = { type = "string", traits = {
                xml_name = "Name",
            } },
            value = M.MessageAttributeValue,
            traits = {
                xml_flattened = true,
                xml_name = "MessageAttribute",
            },
        },
    },
}

M.ReceiveMessageOutput = {
    type = "structure",
    id = "ReceiveMessageOutput",
    members = {
        Messages = {
            type = "list",
            member = M.Message,
            traits = {
                xml_flattened = true,
                xml_name = "Message",
            },
        },
    },
}

M.RemovePermissionInput = {
    type = "structure",
    id = "RemovePermissionInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Label = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemovePermissionOutput = {
    type = "structure",
    id = "RemovePermissionOutput",
}

M.InvalidMessageContents = {
    type = "structure",
    id = "InvalidMessageContents",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MessageSystemAttributeNameForSends = {
    AWSTraceHeader = "AWSTraceHeader",
}

M.MessageSystemAttributeValue = {
    type = "structure",
    id = "MessageSystemAttributeValue",
    members = {
        StringValue = {
            type = "string",
        },
        BinaryValue = {
            type = "blob",
        },
        StringListValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_flattened = true,
                xml_name = "StringListValue",
            },
        },
        BinaryListValues = {
            type = "list",
            member = { type = "blob" },
            traits = {
                xml_flattened = true,
                xml_name = "BinaryListValue",
            },
        },
        DataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SendMessageInput = {
    type = "structure",
    id = "SendMessageInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DelaySeconds = {
            type = "integer",
        },
        MessageAttributes = {
            type = "map",
            key = { type = "string", traits = {
                xml_name = "Name",
            } },
            value = M.MessageAttributeValue,
            traits = {
                xml_flattened = true,
                xml_name = "MessageAttribute",
            },
        },
        MessageSystemAttributes = {
            type = "map",
            key = { type = "string", traits = {
                xml_name = "Name",
            } },
            value = M.MessageSystemAttributeValue,
            traits = {
                xml_flattened = true,
                xml_name = "MessageSystemAttribute",
            },
        },
        MessageDeduplicationId = {
            type = "string",
        },
        MessageGroupId = {
            type = "string",
        },
    },
}

M.SendMessageOutput = {
    type = "structure",
    id = "SendMessageOutput",
    members = {
        MD5OfMessageBody = {
            type = "string",
        },
        MD5OfMessageAttributes = {
            type = "string",
        },
        MD5OfMessageSystemAttributes = {
            type = "string",
        },
        MessageId = {
            type = "string",
        },
        SequenceNumber = {
            type = "string",
        },
    },
}

M.BatchRequestTooLong = {
    type = "structure",
    id = "BatchRequestTooLong",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SendMessageBatchRequestEntry = {
    type = "structure",
    id = "SendMessageBatchRequestEntry",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DelaySeconds = {
            type = "integer",
        },
        MessageAttributes = {
            type = "map",
            key = { type = "string", traits = {
                xml_name = "Name",
            } },
            value = M.MessageAttributeValue,
            traits = {
                xml_flattened = true,
                xml_name = "MessageAttribute",
            },
        },
        MessageSystemAttributes = {
            type = "map",
            key = { type = "string", traits = {
                xml_name = "Name",
            } },
            value = M.MessageSystemAttributeValue,
            traits = {
                xml_flattened = true,
                xml_name = "MessageSystemAttribute",
            },
        },
        MessageDeduplicationId = {
            type = "string",
        },
        MessageGroupId = {
            type = "string",
        },
    },
}

M.SendMessageBatchInput = {
    type = "structure",
    id = "SendMessageBatchInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Entries = {
            type = "list",
            member = M.SendMessageBatchRequestEntry,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "SendMessageBatchRequestEntry",
            },
        },
    },
}

M.SendMessageBatchResultEntry = {
    type = "structure",
    id = "SendMessageBatchResultEntry",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MD5OfMessageBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MD5OfMessageAttributes = {
            type = "string",
        },
        MD5OfMessageSystemAttributes = {
            type = "string",
        },
        SequenceNumber = {
            type = "string",
        },
    },
}

M.SendMessageBatchOutput = {
    type = "structure",
    id = "SendMessageBatchOutput",
    members = {
        Successful = {
            type = "list",
            member = M.SendMessageBatchResultEntry,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "SendMessageBatchResultEntry",
            },
        },
        Failed = {
            type = "list",
            member = M.BatchResultErrorEntry,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "BatchResultErrorEntry",
            },
        },
    },
}

M.SetQueueAttributesInput = {
    type = "structure",
    id = "SetQueueAttributesInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key = { type = "string", traits = {
                xml_name = "Name",
            } },
            value = { type = "string", traits = {
                xml_name = "Value",
            } },
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "Attribute",
            },
        },
    },
}

M.SetQueueAttributesOutput = {
    type = "structure",
    id = "SetQueueAttributesOutput",
}

M.StartMessageMoveTaskInput = {
    type = "structure",
    id = "StartMessageMoveTaskInput",
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationArn = {
            type = "string",
        },
        MaxNumberOfMessagesPerSecond = {
            type = "integer",
        },
    },
}

M.StartMessageMoveTaskOutput = {
    type = "structure",
    id = "StartMessageMoveTaskOutput",
    members = {
        TaskHandle = {
            type = "string",
        },
    },
}

M.TagQueueInput = {
    type = "structure",
    id = "TagQueueInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string", traits = {
                xml_name = "Key",
            } },
            value = { type = "string", traits = {
                xml_name = "Value",
            } },
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "Tag",
            },
        },
    },
}

M.TagQueueOutput = {
    type = "structure",
    id = "TagQueueOutput",
}

M.UntagQueueInput = {
    type = "structure",
    id = "UntagQueueInput",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "TagKey",
            },
        },
    },
}

M.UntagQueueOutput = {
    type = "structure",
    id = "UntagQueueOutput",
}

return M
