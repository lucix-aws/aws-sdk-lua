local record AcceptPageInput
    PageId: string
    ContactChannelId: string
    AcceptType: string
    Note: string
    AcceptCode: string
    AcceptCodeValidation: string
end

local record AcceptPageOutput
end

local record ActivateContactChannelInput
    ContactChannelId: string
    ActivationCode: string
end

local record ActivateContactChannelOutput
end

local record CreateContactInput
    Alias: string
    DisplayName: string
    Type: string
    Plan: Plan
    Tags: {Tag}
    IdempotencyToken: string
end

local record CreateContactOutput
    ContactArn: string
end

local record CreateContactChannelInput
    ContactId: string
    Name: string
    Type: string
    DeliveryAddress: ContactChannelAddress
    DeferActivation: boolean
    IdempotencyToken: string
end

local record CreateContactChannelOutput
    ContactChannelArn: string
end

local record CreateRotationInput
    Name: string
    ContactIds: {string}
    StartTime: number
    TimeZoneId: string
    Recurrence: RecurrenceSettings
    Tags: {Tag}
    IdempotencyToken: string
end

local record CreateRotationOutput
    RotationArn: string
end

local record CreateRotationOverrideInput
    RotationId: string
    NewContactIds: {string}
    StartTime: number
    EndTime: number
    IdempotencyToken: string
end

local record CreateRotationOverrideOutput
    RotationOverrideId: string
end

local record DeactivateContactChannelInput
    ContactChannelId: string
end

local record DeactivateContactChannelOutput
end

local record DeleteContactInput
    ContactId: string
end

local record DeleteContactOutput
end

local record DeleteContactChannelInput
    ContactChannelId: string
end

local record DeleteContactChannelOutput
end

local record DeleteRotationInput
    RotationId: string
end

local record DeleteRotationOutput
end

local record DeleteRotationOverrideInput
    RotationId: string
    RotationOverrideId: string
end

local record DeleteRotationOverrideOutput
end

local record DescribeEngagementInput
    EngagementId: string
end

local record DescribeEngagementOutput
    ContactArn: string
    EngagementArn: string
    Sender: string
    Subject: string
    Content: string
    PublicSubject: string
    PublicContent: string
    IncidentId: string
    StartTime: number
    StopTime: number
end

local record DescribePageInput
    PageId: string
end

local record DescribePageOutput
    PageArn: string
    EngagementArn: string
    ContactArn: string
    Sender: string
    Subject: string
    Content: string
    PublicSubject: string
    PublicContent: string
    IncidentId: string
    SentTime: number
    ReadTime: number
    DeliveryTime: number
end

local record GetContactInput
    ContactId: string
end

local record GetContactOutput
    ContactArn: string
    Alias: string
    DisplayName: string
    Type: string
    Plan: Plan
end

local record GetContactChannelInput
    ContactChannelId: string
end

local record GetContactChannelOutput
    ContactArn: string
    ContactChannelArn: string
    Name: string
    Type: string
    DeliveryAddress: ContactChannelAddress
    ActivationStatus: string
end

local record GetContactPolicyInput
    ContactArn: string
end

local record GetContactPolicyOutput
    ContactArn: string
    Policy: string
end

local record GetRotationInput
    RotationId: string
end

local record GetRotationOutput
    RotationArn: string
    Name: string
    ContactIds: {string}
    StartTime: number
    TimeZoneId: string
    Recurrence: RecurrenceSettings
end

local record GetRotationOverrideInput
    RotationId: string
    RotationOverrideId: string
end

local record GetRotationOverrideOutput
    RotationOverrideId: string
    RotationArn: string
    NewContactIds: {string}
    StartTime: number
    EndTime: number
    CreateTime: number
end

local record ListContactChannelsInput
    ContactId: string
    NextToken: string
    MaxResults: number
end

local record ListContactChannelsOutput
    NextToken: string
    ContactChannels: {ContactChannel}
end

local record ListContactsInput
    NextToken: string
    MaxResults: number
    AliasPrefix: string
    Type: string
end

local record ListContactsOutput
    NextToken: string
    Contacts: {Contact}
end

local record ListEngagementsInput
    NextToken: string
    MaxResults: number
    IncidentId: string
    TimeRangeValue: TimeRange
end

local record ListEngagementsOutput
    NextToken: string
    Engagements: {Engagement}
end

local record ListPageReceiptsInput
    PageId: string
    NextToken: string
    MaxResults: number
end

local record ListPageReceiptsOutput
    NextToken: string
    Receipts: {Receipt}
end

local record ListPageResolutionsInput
    NextToken: string
    PageId: string
end

local record ListPageResolutionsOutput
    NextToken: string
    PageResolutions: {ResolutionContact}
end

local record ListPagesByContactInput
    ContactId: string
    NextToken: string
    MaxResults: number
end

local record ListPagesByContactOutput
    NextToken: string
    Pages: {Page}
end

local record ListPagesByEngagementInput
    EngagementId: string
    NextToken: string
    MaxResults: number
end

local record ListPagesByEngagementOutput
    NextToken: string
    Pages: {Page}
end

local record ListPreviewRotationShiftsInput
    RotationStartTime: number
    StartTime: number
    EndTime: number
    Members: {string}
    TimeZoneId: string
    Recurrence: RecurrenceSettings
    Overrides: {PreviewOverride}
    NextToken: string
    MaxResults: number
end

local record ListPreviewRotationShiftsOutput
    RotationShifts: {RotationShift}
    NextToken: string
end

local record ListRotationOverridesInput
    RotationId: string
    StartTime: number
    EndTime: number
    NextToken: string
    MaxResults: number
end

local record ListRotationOverridesOutput
    RotationOverrides: {RotationOverride}
    NextToken: string
end

local record ListRotationsInput
    RotationNamePrefix: string
    NextToken: string
    MaxResults: number
end

local record ListRotationsOutput
    NextToken: string
    Rotations: {Rotation}
end

local record ListRotationShiftsInput
    RotationId: string
    StartTime: number
    EndTime: number
    NextToken: string
    MaxResults: number
end

local record ListRotationShiftsOutput
    RotationShifts: {RotationShift}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record PutContactPolicyInput
    ContactArn: string
    Policy: string
end

local record PutContactPolicyOutput
end

local record SendActivationCodeInput
    ContactChannelId: string
end

local record SendActivationCodeOutput
end

local record StartEngagementInput
    ContactId: string
    Sender: string
    Subject: string
    Content: string
    PublicSubject: string
    PublicContent: string
    IncidentId: string
    IdempotencyToken: string
end

local record StartEngagementOutput
    EngagementArn: string
end

local record StopEngagementInput
    EngagementId: string
    Reason: string
end

local record StopEngagementOutput
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateContactInput
    ContactId: string
    DisplayName: string
    Plan: Plan
end

local record UpdateContactOutput
end

local record UpdateContactChannelInput
    ContactChannelId: string
    Name: string
    DeliveryAddress: ContactChannelAddress
end

local record UpdateContactChannelOutput
end

local record UpdateRotationInput
    RotationId: string
    ContactIds: {string}
    StartTime: number
    TimeZoneId: string
    Recurrence: RecurrenceSettings
end

local record UpdateRotationOutput
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    DependentEntities: {DependentEntity}
end

local record DataEncryptionException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    QuotaCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    DependentEntities: {DependentEntity}
end

local record DataEncryptionException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    QuotaCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    QuotaCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    DependentEntities: {DependentEntity}
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    DependentEntities: {DependentEntity}
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record DataEncryptionException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record DataEncryptionException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record DataEncryptionException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record DataEncryptionException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record DataEncryptionException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    DependentEntities: {DependentEntity}
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    DependentEntities: {DependentEntity}
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record DataEncryptionException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    QuotaCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record DataEncryptionException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    QuotaCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record DataEncryptionException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    QuotaCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    DependentEntities: {DependentEntity}
end

local record DataEncryptionException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    DependentEntities: {DependentEntity}
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local type ActivationStatus = "ACTIVATED" | "NOT_ACTIVATED"

local type AcceptCodeValidation = "IGNORE" | "ENFORCE"

local type ContactType = "PERSONAL" | "ESCALATION" | "ONCALL_SCHEDULE"

local type AcceptType = "DELIVERED" | "READ"

local type ChannelType = "SMS" | "VOICE" | "EMAIL"

local record M
    AcceptPageInput: AcceptPageInput
    AcceptPageOutput: AcceptPageOutput
    ActivateContactChannelInput: ActivateContactChannelInput
    ActivateContactChannelOutput: ActivateContactChannelOutput
    CreateContactInput: CreateContactInput
    CreateContactOutput: CreateContactOutput
    CreateContactChannelInput: CreateContactChannelInput
    CreateContactChannelOutput: CreateContactChannelOutput
    CreateRotationInput: CreateRotationInput
    CreateRotationOutput: CreateRotationOutput
    CreateRotationOverrideInput: CreateRotationOverrideInput
    CreateRotationOverrideOutput: CreateRotationOverrideOutput
    DeactivateContactChannelInput: DeactivateContactChannelInput
    DeactivateContactChannelOutput: DeactivateContactChannelOutput
    DeleteContactInput: DeleteContactInput
    DeleteContactOutput: DeleteContactOutput
    DeleteContactChannelInput: DeleteContactChannelInput
    DeleteContactChannelOutput: DeleteContactChannelOutput
    DeleteRotationInput: DeleteRotationInput
    DeleteRotationOutput: DeleteRotationOutput
    DeleteRotationOverrideInput: DeleteRotationOverrideInput
    DeleteRotationOverrideOutput: DeleteRotationOverrideOutput
    DescribeEngagementInput: DescribeEngagementInput
    DescribeEngagementOutput: DescribeEngagementOutput
    DescribePageInput: DescribePageInput
    DescribePageOutput: DescribePageOutput
    GetContactInput: GetContactInput
    GetContactOutput: GetContactOutput
    GetContactChannelInput: GetContactChannelInput
    GetContactChannelOutput: GetContactChannelOutput
    GetContactPolicyInput: GetContactPolicyInput
    GetContactPolicyOutput: GetContactPolicyOutput
    GetRotationInput: GetRotationInput
    GetRotationOutput: GetRotationOutput
    GetRotationOverrideInput: GetRotationOverrideInput
    GetRotationOverrideOutput: GetRotationOverrideOutput
    ListContactChannelsInput: ListContactChannelsInput
    ListContactChannelsOutput: ListContactChannelsOutput
    ListContactsInput: ListContactsInput
    ListContactsOutput: ListContactsOutput
    ListEngagementsInput: ListEngagementsInput
    ListEngagementsOutput: ListEngagementsOutput
    ListPageReceiptsInput: ListPageReceiptsInput
    ListPageReceiptsOutput: ListPageReceiptsOutput
    ListPageResolutionsInput: ListPageResolutionsInput
    ListPageResolutionsOutput: ListPageResolutionsOutput
    ListPagesByContactInput: ListPagesByContactInput
    ListPagesByContactOutput: ListPagesByContactOutput
    ListPagesByEngagementInput: ListPagesByEngagementInput
    ListPagesByEngagementOutput: ListPagesByEngagementOutput
    ListPreviewRotationShiftsInput: ListPreviewRotationShiftsInput
    ListPreviewRotationShiftsOutput: ListPreviewRotationShiftsOutput
    ListRotationOverridesInput: ListRotationOverridesInput
    ListRotationOverridesOutput: ListRotationOverridesOutput
    ListRotationsInput: ListRotationsInput
    ListRotationsOutput: ListRotationsOutput
    ListRotationShiftsInput: ListRotationShiftsInput
    ListRotationShiftsOutput: ListRotationShiftsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutContactPolicyInput: PutContactPolicyInput
    PutContactPolicyOutput: PutContactPolicyOutput
    SendActivationCodeInput: SendActivationCodeInput
    SendActivationCodeOutput: SendActivationCodeOutput
    StartEngagementInput: StartEngagementInput
    StartEngagementOutput: StartEngagementOutput
    StopEngagementInput: StopEngagementInput
    StopEngagementOutput: StopEngagementOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateContactInput: UpdateContactInput
    UpdateContactOutput: UpdateContactOutput
    UpdateContactChannelInput: UpdateContactChannelInput
    UpdateContactChannelOutput: UpdateContactChannelOutput
    UpdateRotationInput: UpdateRotationInput
    UpdateRotationOutput: UpdateRotationOutput
end

return M
