local record AcceptConnectionInvitationInput
    Catalog: string
    Identifier: string
    ClientToken: string
end

local record AcceptConnectionInvitationOutput
    Connection: Connection
end

local record AssociateAwsTrainingCertificationEmailDomainInput
    Catalog: string
    Identifier: string
    ClientToken: string
    Email: string
    EmailVerificationCode: string
end

local record AssociateAwsTrainingCertificationEmailDomainOutput
end

local record CancelConnectionInput
    Catalog: string
    Identifier: string
    ConnectionType: string
    Reason: string
    ClientToken: string
end

local record CancelConnectionOutput
    Catalog: string
    Id: string
    Arn: string
    OtherParticipantAccountId: string
    UpdatedAt: number
    ConnectionTypes: {string : ConnectionTypeDetail}
end

local record CancelConnectionInvitationInput
    Catalog: string
    Identifier: string
    ClientToken: string
end

local record CancelConnectionInvitationOutput
    Catalog: string
    Id: string
    Arn: string
    ConnectionId: string
    ConnectionType: string
    CreatedAt: number
    UpdatedAt: number
    ExpiresAt: number
    OtherParticipantIdentifier: string
    ParticipantType: string
    Status: string
    InvitationMessage: string
    InviterEmail: string
    InviterName: string
end

local record CancelProfileUpdateTaskInput
    Catalog: string
    Identifier: string
    ClientToken: string
    TaskId: string
end

local record CancelProfileUpdateTaskOutput
    Catalog: string
    Arn: string
    Id: string
    TaskId: string
    TaskDetails: TaskDetails
    StartedAt: number
    Status: string
    EndedAt: number
    ErrorDetailList: {ErrorDetail}
end

local record CreateConnectionInvitationInput
    Catalog: string
    ClientToken: string
    ConnectionType: string
    Email: string
    Message: string
    Name: string
    ReceiverIdentifier: string
end

local record CreateConnectionInvitationOutput
    Catalog: string
    Id: string
    Arn: string
    ConnectionId: string
    ConnectionType: string
    CreatedAt: number
    UpdatedAt: number
    ExpiresAt: number
    OtherParticipantIdentifier: string
    ParticipantType: string
    Status: string
    InvitationMessage: string
    InviterEmail: string
    InviterName: string
end

local record CreatePartnerInput
    Catalog: string
    ClientToken: string
    LegalName: string
    PrimarySolutionType: string
    AllianceLeadContact: AllianceLeadContact
    EmailVerificationCode: string
    Tags: {Tag}
end

local record CreatePartnerOutput
    Catalog: string
    Arn: string
    Id: string
    LegalName: string
    CreatedAt: number
    Profile: PartnerProfile
    AwsTrainingCertificationEmailDomains: {PartnerDomain}
    AllianceLeadContact: AllianceLeadContact
end

local record DisassociateAwsTrainingCertificationEmailDomainInput
    Catalog: string
    Identifier: string
    ClientToken: string
    DomainName: string
end

local record DisassociateAwsTrainingCertificationEmailDomainOutput
end

local record GetAllianceLeadContactInput
    Catalog: string
    Identifier: string
end

local record GetAllianceLeadContactOutput
    Catalog: string
    Arn: string
    Id: string
    AllianceLeadContact: AllianceLeadContact
end

local record GetConnectionInput
    Catalog: string
    Identifier: string
end

local record GetConnectionOutput
    Catalog: string
    Id: string
    Arn: string
    OtherParticipantAccountId: string
    UpdatedAt: number
    ConnectionTypes: {string : ConnectionTypeDetail}
end

local record GetConnectionInvitationInput
    Catalog: string
    Identifier: string
end

local record GetConnectionInvitationOutput
    Catalog: string
    Id: string
    Arn: string
    ConnectionId: string
    ConnectionType: string
    CreatedAt: number
    UpdatedAt: number
    ExpiresAt: number
    OtherParticipantIdentifier: string
    ParticipantType: string
    Status: string
    InvitationMessage: string
    InviterEmail: string
    InviterName: string
end

local record GetConnectionPreferencesInput
    Catalog: string
end

local record GetConnectionPreferencesOutput
    Catalog: string
    Arn: string
    AccessType: string
    ExcludedParticipantIds: {string}
    UpdatedAt: number
    Revision: number
end

local record GetPartnerInput
    Catalog: string
    Identifier: string
end

local record GetPartnerOutput
    Catalog: string
    Arn: string
    Id: string
    LegalName: string
    CreatedAt: number
    Profile: PartnerProfile
    AwsTrainingCertificationEmailDomains: {PartnerDomain}
end

local record GetProfileUpdateTaskInput
    Catalog: string
    Identifier: string
end

local record GetProfileUpdateTaskOutput
    Catalog: string
    Arn: string
    Id: string
    TaskId: string
    TaskDetails: TaskDetails
    StartedAt: number
    Status: string
    EndedAt: number
    ErrorDetailList: {ErrorDetail}
end

local record GetProfileVisibilityInput
    Catalog: string
    Identifier: string
end

local record GetProfileVisibilityOutput
    Catalog: string
    Arn: string
    Id: string
    Visibility: string
    ProfileId: string
end

local record GetVerificationInput
    VerificationType: string
end

local record GetVerificationOutput
    VerificationType: string
    VerificationStatus: string
    VerificationStatusReason: string
    VerificationResponseDetails: VerificationResponseDetails
    StartedAt: number
    CompletedAt: number
end

local record ListConnectionInvitationsInput
    Catalog: string
    NextToken: string
    ConnectionType: string
    MaxResults: number
    OtherParticipantIdentifiers: {string}
    ParticipantType: string
    Status: string
end

local record ListConnectionInvitationsOutput
    ConnectionInvitationSummaries: {ConnectionInvitationSummary}
    NextToken: string
end

local record ListConnectionsInput
    Catalog: string
    NextToken: string
    ConnectionType: string
    MaxResults: number
    OtherParticipantIdentifiers: {string}
end

local record ListConnectionsOutput
    ConnectionSummaries: {ConnectionSummary}
    NextToken: string
end

local record ListPartnersInput
    Catalog: string
    NextToken: string
end

local record ListPartnersOutput
    PartnerSummaryList: {PartnerSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    ResourceArn: string
    Tags: {Tag}
end

local record PutAllianceLeadContactInput
    Catalog: string
    Identifier: string
    AllianceLeadContact: AllianceLeadContact
    EmailVerificationCode: string
end

local record PutAllianceLeadContactOutput
    Catalog: string
    Arn: string
    Id: string
    AllianceLeadContact: AllianceLeadContact
end

local record PutProfileVisibilityInput
    Catalog: string
    Identifier: string
    Visibility: string
end

local record PutProfileVisibilityOutput
    Catalog: string
    Arn: string
    Id: string
    Visibility: string
    ProfileId: string
end

local record RejectConnectionInvitationInput
    Catalog: string
    Identifier: string
    ClientToken: string
    Reason: string
end

local record RejectConnectionInvitationOutput
    Catalog: string
    Id: string
    Arn: string
    ConnectionId: string
    ConnectionType: string
    CreatedAt: number
    UpdatedAt: number
    ExpiresAt: number
    OtherParticipantIdentifier: string
    ParticipantType: string
    Status: string
    InvitationMessage: string
    InviterEmail: string
    InviterName: string
end

local record SendEmailVerificationCodeInput
    Catalog: string
    Email: string
end

local record SendEmailVerificationCodeOutput
end

local record StartProfileUpdateTaskInput
    Catalog: string
    Identifier: string
    ClientToken: string
    TaskDetails: TaskDetails
end

local record StartProfileUpdateTaskOutput
    Catalog: string
    Arn: string
    Id: string
    TaskId: string
    TaskDetails: TaskDetails
    StartedAt: number
    Status: string
    EndedAt: number
    ErrorDetailList: {ErrorDetail}
end

local record StartVerificationInput
    ClientToken: string
    VerificationDetails: VerificationDetails
end

local record StartVerificationOutput
    VerificationType: string
    VerificationStatus: string
    VerificationStatusReason: string
    VerificationResponseDetails: VerificationResponseDetails
    StartedAt: number
    CompletedAt: number
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateConnectionPreferencesInput
    Catalog: string
    Revision: number
    AccessType: string
    ExcludedParticipantIdentifiers: {string}
end

local record UpdateConnectionPreferencesOutput
    Catalog: string
    Arn: string
    AccessType: string
    ExcludedParticipantIds: {string}
    UpdatedAt: number
    Revision: number
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorDetails: {ValidationError}
end

local type ParticipantType = "SENDER" | "RECEIVER"

local type VerificationStatus = "PENDING_CUSTOMER_ACTION" | "IN_PROGRESS" | "FAILED" | "SUCCEEDED" | "REJECTED"

local type ConnectionType = "OPPORTUNITY_COLLABORATION" | "SUBSIDIARY"

local type PrimarySolutionType = "SOFTWARE_PRODUCTS" | "CONSULTING_SERVICES" | "PROFESSIONAL_SERVICES" | "MANAGED_SERVICES" | "HARDWARE_PRODUCTS" | "COMMUNICATION_SERVICES" | "VALUE_ADDED_RESALE_AWS_SERVICES" | "TRAINING_SERVICES"

local type ProfileTaskStatus = "IN_PROGRESS" | "CANCELED" | "SUCCEEDED" | "FAILED"

local type InvitationStatus = "PENDING" | "ACCEPTED" | "REJECTED" | "CANCELED" | "EXPIRED"

local type ProfileVisibility = "PRIVATE" | "PUBLIC"

local type VerificationType = "BUSINESS_VERIFICATION" | "REGISTRANT_VERIFICATION"

local type AccessType = "ALLOW_ALL" | "DENY_ALL" | "ALLOW_BY_DEFAULT_DENY_SOME"

local record M
    AcceptConnectionInvitationInput: AcceptConnectionInvitationInput
    AcceptConnectionInvitationOutput: AcceptConnectionInvitationOutput
    AssociateAwsTrainingCertificationEmailDomainInput: AssociateAwsTrainingCertificationEmailDomainInput
    AssociateAwsTrainingCertificationEmailDomainOutput: AssociateAwsTrainingCertificationEmailDomainOutput
    CancelConnectionInput: CancelConnectionInput
    CancelConnectionOutput: CancelConnectionOutput
    CancelConnectionInvitationInput: CancelConnectionInvitationInput
    CancelConnectionInvitationOutput: CancelConnectionInvitationOutput
    CancelProfileUpdateTaskInput: CancelProfileUpdateTaskInput
    CancelProfileUpdateTaskOutput: CancelProfileUpdateTaskOutput
    CreateConnectionInvitationInput: CreateConnectionInvitationInput
    CreateConnectionInvitationOutput: CreateConnectionInvitationOutput
    CreatePartnerInput: CreatePartnerInput
    CreatePartnerOutput: CreatePartnerOutput
    DisassociateAwsTrainingCertificationEmailDomainInput: DisassociateAwsTrainingCertificationEmailDomainInput
    DisassociateAwsTrainingCertificationEmailDomainOutput: DisassociateAwsTrainingCertificationEmailDomainOutput
    GetAllianceLeadContactInput: GetAllianceLeadContactInput
    GetAllianceLeadContactOutput: GetAllianceLeadContactOutput
    GetConnectionInput: GetConnectionInput
    GetConnectionOutput: GetConnectionOutput
    GetConnectionInvitationInput: GetConnectionInvitationInput
    GetConnectionInvitationOutput: GetConnectionInvitationOutput
    GetConnectionPreferencesInput: GetConnectionPreferencesInput
    GetConnectionPreferencesOutput: GetConnectionPreferencesOutput
    GetPartnerInput: GetPartnerInput
    GetPartnerOutput: GetPartnerOutput
    GetProfileUpdateTaskInput: GetProfileUpdateTaskInput
    GetProfileUpdateTaskOutput: GetProfileUpdateTaskOutput
    GetProfileVisibilityInput: GetProfileVisibilityInput
    GetProfileVisibilityOutput: GetProfileVisibilityOutput
    GetVerificationInput: GetVerificationInput
    GetVerificationOutput: GetVerificationOutput
    ListConnectionInvitationsInput: ListConnectionInvitationsInput
    ListConnectionInvitationsOutput: ListConnectionInvitationsOutput
    ListConnectionsInput: ListConnectionsInput
    ListConnectionsOutput: ListConnectionsOutput
    ListPartnersInput: ListPartnersInput
    ListPartnersOutput: ListPartnersOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutAllianceLeadContactInput: PutAllianceLeadContactInput
    PutAllianceLeadContactOutput: PutAllianceLeadContactOutput
    PutProfileVisibilityInput: PutProfileVisibilityInput
    PutProfileVisibilityOutput: PutProfileVisibilityOutput
    RejectConnectionInvitationInput: RejectConnectionInvitationInput
    RejectConnectionInvitationOutput: RejectConnectionInvitationOutput
    SendEmailVerificationCodeInput: SendEmailVerificationCodeInput
    SendEmailVerificationCodeOutput: SendEmailVerificationCodeOutput
    StartProfileUpdateTaskInput: StartProfileUpdateTaskInput
    StartProfileUpdateTaskOutput: StartProfileUpdateTaskOutput
    StartVerificationInput: StartVerificationInput
    StartVerificationOutput: StartVerificationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateConnectionPreferencesInput: UpdateConnectionPreferencesInput
    UpdateConnectionPreferencesOutput: UpdateConnectionPreferencesOutput
end

return M
