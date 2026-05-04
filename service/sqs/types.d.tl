local record AddPermissionInput
    QueueUrl: string
    Label: string
    AWSAccountIds: {string}
    Actions: {string}
end

local record AddPermissionOutput
end

local record CancelMessageMoveTaskInput
    TaskHandle: string
end

local record CancelMessageMoveTaskOutput
    ApproximateNumberOfMessagesMoved: number
end

local record ChangeMessageVisibilityInput
    QueueUrl: string
    ReceiptHandle: string
    VisibilityTimeout: number
end

local record ChangeMessageVisibilityOutput
end

local record ChangeMessageVisibilityBatchInput
    QueueUrl: string
    Entries: {ChangeMessageVisibilityBatchRequestEntry}
end

local record ChangeMessageVisibilityBatchOutput
    Successful: {ChangeMessageVisibilityBatchResultEntry}
    Failed: {BatchResultErrorEntry}
end

local record CreateQueueInput
    QueueName: string
    Attributes: {string : string}
    tags: {string : string}
end

local record CreateQueueOutput
    QueueUrl: string
end

local record DeleteMessageInput
    QueueUrl: string
    ReceiptHandle: string
end

local record DeleteMessageOutput
end

local record DeleteMessageBatchInput
    QueueUrl: string
    Entries: {DeleteMessageBatchRequestEntry}
end

local record DeleteMessageBatchOutput
    Successful: {DeleteMessageBatchResultEntry}
    Failed: {BatchResultErrorEntry}
end

local record DeleteQueueInput
    QueueUrl: string
end

local record DeleteQueueOutput
end

local record GetQueueAttributesInput
    QueueUrl: string
    AttributeNames: {string}
end

local record GetQueueAttributesOutput
    Attributes: {string : string}
end

local record GetQueueUrlInput
    QueueName: string
    QueueOwnerAWSAccountId: string
end

local record GetQueueUrlOutput
    QueueUrl: string
end

local record ListDeadLetterSourceQueuesInput
    QueueUrl: string
    NextToken: string
    MaxResults: number
end

local record ListDeadLetterSourceQueuesOutput
    queueUrls: {string}
    NextToken: string
end

local record ListMessageMoveTasksInput
    SourceArn: string
    MaxResults: number
end

local record ListMessageMoveTasksOutput
    Results: {ListMessageMoveTasksResultEntry}
end

local record ListQueuesInput
    QueueNamePrefix: string
    NextToken: string
    MaxResults: number
end

local record ListQueuesOutput
    QueueUrls: {string}
    NextToken: string
end

local record ListQueueTagsInput
    QueueUrl: string
end

local record ListQueueTagsOutput
    Tags: {string : string}
end

local record PurgeQueueInput
    QueueUrl: string
end

local record PurgeQueueOutput
end

local record ReceiveMessageInput
    QueueUrl: string
    AttributeNames: {string}
    MessageSystemAttributeNames: {string}
    MessageAttributeNames: {string}
    MaxNumberOfMessages: number
    VisibilityTimeout: number
    WaitTimeSeconds: number
    ReceiveRequestAttemptId: string
end

local record ReceiveMessageOutput
    Messages: {Message}
end

local record RemovePermissionInput
    QueueUrl: string
    Label: string
end

local record RemovePermissionOutput
end

local record SendMessageInput
    QueueUrl: string
    MessageBody: string
    DelaySeconds: number
    MessageAttributes: {string : MessageAttributeValue}
    MessageSystemAttributes: {string : MessageSystemAttributeValue}
    MessageDeduplicationId: string
    MessageGroupId: string
end

local record SendMessageOutput
    MD5OfMessageBody: string
    MD5OfMessageAttributes: string
    MD5OfMessageSystemAttributes: string
    MessageId: string
    SequenceNumber: string
end

local record SendMessageBatchInput
    QueueUrl: string
    Entries: {SendMessageBatchRequestEntry}
end

local record SendMessageBatchOutput
    Successful: {SendMessageBatchResultEntry}
    Failed: {BatchResultErrorEntry}
end

local record SetQueueAttributesInput
    QueueUrl: string
    Attributes: {string : string}
end

local record SetQueueAttributesOutput
end

local record StartMessageMoveTaskInput
    SourceArn: string
    DestinationArn: string
    MaxNumberOfMessagesPerSecond: number
end

local record StartMessageMoveTaskOutput
    TaskHandle: string
end

local record TagQueueInput
    QueueUrl: string
    Tags: {string : string}
end

local record TagQueueOutput
end

local record UntagQueueInput
    QueueUrl: string
    TagKeys: {string}
end

local record UntagQueueOutput
end

local record InvalidAddress
    message: string
end

local record InvalidSecurity
    message: string
end

local record OverLimit
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidSecurity
    message: string
end

local record RequestThrottled
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidSecurity
    message: string
end

local record MessageNotInflight
end

local record QueueDoesNotExist
    message: string
end

local record ReceiptHandleIsInvalid
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record BatchEntryIdsNotDistinct
    message: string
end

local record EmptyBatchRequest
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidBatchEntryId
    message: string
end

local record InvalidSecurity
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record TooManyEntriesInBatchRequest
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidAttributeName
    message: string
end

local record InvalidAttributeValue
    message: string
end

local record InvalidSecurity
    message: string
end

local record QueueDeletedRecently
    message: string
end

local record QueueNameExists
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidIdFormat
end

local record InvalidSecurity
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record ReceiptHandleIsInvalid
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record BatchEntryIdsNotDistinct
    message: string
end

local record EmptyBatchRequest
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidBatchEntryId
    message: string
end

local record InvalidSecurity
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record TooManyEntriesInBatchRequest
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidSecurity
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidAttributeName
    message: string
end

local record InvalidSecurity
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidSecurity
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidSecurity
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidSecurity
    message: string
end

local record RequestThrottled
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidSecurity
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidSecurity
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidSecurity
    message: string
end

local record PurgeQueueInProgress
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidSecurity
    message: string
end

local record KmsAccessDenied
    message: string
end

local record KmsDisabled
    message: string
end

local record KmsInvalidKeyUsage
    message: string
end

local record KmsInvalidState
    message: string
end

local record KmsNotFound
    message: string
end

local record KmsOptInRequired
    message: string
end

local record KmsThrottled
    message: string
end

local record OverLimit
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidSecurity
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidMessageContents
    message: string
end

local record InvalidSecurity
    message: string
end

local record KmsAccessDenied
    message: string
end

local record KmsDisabled
    message: string
end

local record KmsInvalidKeyUsage
    message: string
end

local record KmsInvalidState
    message: string
end

local record KmsNotFound
    message: string
end

local record KmsOptInRequired
    message: string
end

local record KmsThrottled
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record BatchEntryIdsNotDistinct
    message: string
end

local record BatchRequestTooLong
    message: string
end

local record EmptyBatchRequest
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidBatchEntryId
    message: string
end

local record InvalidSecurity
    message: string
end

local record KmsAccessDenied
    message: string
end

local record KmsDisabled
    message: string
end

local record KmsInvalidKeyUsage
    message: string
end

local record KmsInvalidState
    message: string
end

local record KmsNotFound
    message: string
end

local record KmsOptInRequired
    message: string
end

local record KmsThrottled
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record TooManyEntriesInBatchRequest
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidAttributeName
    message: string
end

local record InvalidAttributeValue
    message: string
end

local record InvalidSecurity
    message: string
end

local record OverLimit
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidSecurity
    message: string
end

local record RequestThrottled
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidSecurity
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record InvalidAddress
    message: string
end

local record InvalidSecurity
    message: string
end

local record QueueDoesNotExist
    message: string
end

local record RequestThrottled
    message: string
end

local record UnsupportedOperation
    message: string
end

local record M
    AddPermissionInput: AddPermissionInput
    AddPermissionOutput: AddPermissionOutput
    CancelMessageMoveTaskInput: CancelMessageMoveTaskInput
    CancelMessageMoveTaskOutput: CancelMessageMoveTaskOutput
    ChangeMessageVisibilityInput: ChangeMessageVisibilityInput
    ChangeMessageVisibilityOutput: ChangeMessageVisibilityOutput
    ChangeMessageVisibilityBatchInput: ChangeMessageVisibilityBatchInput
    ChangeMessageVisibilityBatchOutput: ChangeMessageVisibilityBatchOutput
    CreateQueueInput: CreateQueueInput
    CreateQueueOutput: CreateQueueOutput
    DeleteMessageInput: DeleteMessageInput
    DeleteMessageOutput: DeleteMessageOutput
    DeleteMessageBatchInput: DeleteMessageBatchInput
    DeleteMessageBatchOutput: DeleteMessageBatchOutput
    DeleteQueueInput: DeleteQueueInput
    DeleteQueueOutput: DeleteQueueOutput
    GetQueueAttributesInput: GetQueueAttributesInput
    GetQueueAttributesOutput: GetQueueAttributesOutput
    GetQueueUrlInput: GetQueueUrlInput
    GetQueueUrlOutput: GetQueueUrlOutput
    ListDeadLetterSourceQueuesInput: ListDeadLetterSourceQueuesInput
    ListDeadLetterSourceQueuesOutput: ListDeadLetterSourceQueuesOutput
    ListMessageMoveTasksInput: ListMessageMoveTasksInput
    ListMessageMoveTasksOutput: ListMessageMoveTasksOutput
    ListQueuesInput: ListQueuesInput
    ListQueuesOutput: ListQueuesOutput
    ListQueueTagsInput: ListQueueTagsInput
    ListQueueTagsOutput: ListQueueTagsOutput
    PurgeQueueInput: PurgeQueueInput
    PurgeQueueOutput: PurgeQueueOutput
    ReceiveMessageInput: ReceiveMessageInput
    ReceiveMessageOutput: ReceiveMessageOutput
    RemovePermissionInput: RemovePermissionInput
    RemovePermissionOutput: RemovePermissionOutput
    SendMessageInput: SendMessageInput
    SendMessageOutput: SendMessageOutput
    SendMessageBatchInput: SendMessageBatchInput
    SendMessageBatchOutput: SendMessageBatchOutput
    SetQueueAttributesInput: SetQueueAttributesInput
    SetQueueAttributesOutput: SetQueueAttributesOutput
    StartMessageMoveTaskInput: StartMessageMoveTaskInput
    StartMessageMoveTaskOutput: StartMessageMoveTaskOutput
    TagQueueInput: TagQueueInput
    TagQueueOutput: TagQueueOutput
    UntagQueueInput: UntagQueueInput
    UntagQueueOutput: UntagQueueOutput
end

return M
