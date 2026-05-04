local M = {}

M.AddPermissionInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
                xml_name = "AWSAccountId",
            },
        },
        Actions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
                xml_name = "ActionName",
            },
        },
    },
}

M.AddPermissionOutput = {
    type = "structure",
}

M.InvalidAddress = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSecurity = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OverLimit = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.QueueDoesNotExist = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RequestThrottled = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedOperation = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelMessageMoveTaskInput = {
    type = "structure",
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
    members = {
        ApproximateNumberOfMessagesMoved = {
            type = "number",
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

M.ChangeMessageVisibilityInput = {
    type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeMessageVisibilityOutput = {
    type = "structure",
}

M.MessageNotInflight = {
    type = "structure",
    error = "client",
}

M.ReceiptHandleIsInvalid = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchEntryIdsNotDistinct = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ChangeMessageVisibilityBatchRequestEntry = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ChangeMessageVisibilityBatchInput = {
    type = "structure",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Entries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
                xml_name = "ChangeMessageVisibilityBatchRequestEntry",
            },
        },
    },
}

M.BatchResultErrorEntry = {
    type = "structure",
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
    members = {
        Successful = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
                xml_name = "ChangeMessageVisibilityBatchResultEntry",
            },
        },
        Failed = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
                xml_name = "BatchResultErrorEntry",
            },
        },
    },
}

M.EmptyBatchRequest = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidBatchEntryId = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyEntriesInBatchRequest = {
    type = "structure",
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
    members = {
        QueueName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                xml_name = "Attribute",
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                xml_name = "Tag",
            },
        },
    },
}

M.CreateQueueOutput = {
    type = "structure",
    members = {
        QueueUrl = {
            type = "string",
        },
    },
}

M.InvalidAttributeName = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidAttributeValue = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.QueueDeletedRecently = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.QueueNameExists = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteMessageInput = {
    type = "structure",
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
}

M.InvalidIdFormat = {
    type = "structure",
    error = "client",
}

M.DeleteMessageBatchRequestEntry = {
    type = "structure",
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
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Entries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
                xml_name = "DeleteMessageBatchRequestEntry",
            },
        },
    },
}

M.DeleteMessageBatchResultEntry = {
    type = "structure",
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
    members = {
        Successful = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
                xml_name = "DeleteMessageBatchResultEntry",
            },
        },
        Failed = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
                xml_name = "BatchResultErrorEntry",
            },
        },
    },
}

M.DeleteQueueInput = {
    type = "structure",
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
}

M.GetQueueAttributesInput = {
    type = "structure",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeNames = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "AttributeName",
            },
        },
    },
}

M.GetQueueAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                xml_name = "Attribute",
            },
        },
    },
}

M.GetQueueUrlInput = {
    type = "structure",
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
    members = {
        QueueUrl = {
            type = "string",
        },
    },
}

M.ListDeadLetterSourceQueuesInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListDeadLetterSourceQueuesOutput = {
    type = "structure",
    members = {
        queueUrls = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
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
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListMessageMoveTasksResultEntry = {
    type = "structure",
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
            type = "number",
        },
        ApproximateNumberOfMessagesMoved = {
            type = "number",
        },
        ApproximateNumberOfMessagesToMove = {
            type = "number",
        },
        FailureReason = {
            type = "string",
        },
        StartedTimestamp = {
            type = "number",
        },
    },
}

M.ListMessageMoveTasksOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member_type = "structure",
            traits = {
                xml_name = "ListMessageMoveTasksResultEntry",
            },
        },
    },
}

M.ListQueuesInput = {
    type = "structure",
    members = {
        QueueNamePrefix = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListQueuesOutput = {
    type = "structure",
    members = {
        QueueUrls = {
            type = "list",
            member_type = "string",
            traits = {
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
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                xml_name = "Tag",
            },
        },
    },
}

M.PurgeQueueInProgress = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PurgeQueueInput = {
    type = "structure",
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
}

M.KmsAccessDenied = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsDisabled = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsInvalidKeyUsage = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsInvalidState = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsNotFound = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsOptInRequired = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsThrottled = {
    type = "structure",
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
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeNames = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "AttributeName",
            },
        },
        MessageSystemAttributeNames = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "AttributeName",
            },
        },
        MessageAttributeNames = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "MessageAttributeName",
            },
        },
        MaxNumberOfMessages = {
            type = "number",
        },
        VisibilityTimeout = {
            type = "number",
        },
        WaitTimeSeconds = {
            type = "number",
        },
        ReceiveRequestAttemptId = {
            type = "string",
        },
    },
}

M.MessageAttributeValue = {
    type = "structure",
    members = {
        StringValue = {
            type = "string",
        },
        BinaryValue = {
            type = "blob",
        },
        StringListValues = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "StringListValue",
            },
        },
        BinaryListValues = {
            type = "list",
            member_type = "blob",
            traits = {
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
            key_type = "string",
            value_type = "string",
            traits = {
                xml_name = "Attribute",
            },
        },
        MD5OfMessageAttributes = {
            type = "string",
        },
        MessageAttributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                xml_name = "MessageAttribute",
            },
        },
    },
}

M.ReceiveMessageOutput = {
    type = "structure",
    members = {
        Messages = {
            type = "list",
            member_type = "structure",
            traits = {
                xml_name = "Message",
            },
        },
    },
}

M.RemovePermissionInput = {
    type = "structure",
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
}

M.InvalidMessageContents = {
    type = "structure",
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
    members = {
        StringValue = {
            type = "string",
        },
        BinaryValue = {
            type = "blob",
        },
        StringListValues = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "StringListValue",
            },
        },
        BinaryListValues = {
            type = "list",
            member_type = "blob",
            traits = {
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
            type = "number",
        },
        MessageAttributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                xml_name = "MessageAttribute",
            },
        },
        MessageSystemAttributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SendMessageBatchRequestEntry = {
    type = "structure",
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
            type = "number",
        },
        MessageAttributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                xml_name = "MessageAttribute",
            },
        },
        MessageSystemAttributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
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
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Entries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
                xml_name = "SendMessageBatchRequestEntry",
            },
        },
    },
}

M.SendMessageBatchResultEntry = {
    type = "structure",
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
    members = {
        Successful = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
                xml_name = "SendMessageBatchResultEntry",
            },
        },
        Failed = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
                xml_name = "BatchResultErrorEntry",
            },
        },
    },
}

M.SetQueueAttributesInput = {
    type = "structure",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
                xml_name = "Attribute",
            },
        },
    },
}

M.SetQueueAttributesOutput = {
    type = "structure",
}

M.StartMessageMoveTaskInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.StartMessageMoveTaskOutput = {
    type = "structure",
    members = {
        TaskHandle = {
            type = "string",
        },
    },
}

M.TagQueueInput = {
    type = "structure",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
                xml_name = "Tag",
            },
        },
    },
}

M.TagQueueOutput = {
    type = "structure",
}

M.UntagQueueInput = {
    type = "structure",
    members = {
        QueueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
                xml_name = "TagKey",
            },
        },
    },
}

M.UntagQueueOutput = {
    type = "structure",
}

return M
