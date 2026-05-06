local record AcceptChannelHandshakeInput
    catalog: string
    identifier: string
end

local record AcceptChannelHandshakeOutput
    channelHandshakeDetail: AcceptChannelHandshakeDetail
end

local record CancelChannelHandshakeInput
    catalog: string
    identifier: string
end

local record CancelChannelHandshakeOutput
    channelHandshakeDetail: CancelChannelHandshakeDetail
end

local record CreateChannelHandshakeInput
    handshakeType: string
    catalog: string
    associatedResourceIdentifier: string
    payload: ChannelHandshakePayload
    clientToken: string
    tags: {Tag}
end

local record CreateChannelHandshakeOutput
    channelHandshakeDetail: CreateChannelHandshakeDetail
end

local record CreateProgramManagementAccountInput
    catalog: string
    program: string
    displayName: string
    accountId: string
    clientToken: string
    tags: {Tag}
end

local record CreateProgramManagementAccountOutput
    programManagementAccountDetail: CreateProgramManagementAccountDetail
end

local record CreateRelationshipInput
    catalog: string
    associationType: string
    programManagementAccountIdentifier: string
    associatedAccountId: string
    displayName: string
    resaleAccountModel: string
    sector: string
    clientToken: string
    tags: {Tag}
    requestedSupportPlan: SupportPlan
end

local record CreateRelationshipOutput
    relationshipDetail: CreateRelationshipDetail
end

local record DeleteProgramManagementAccountInput
    catalog: string
    identifier: string
    clientToken: string
end

local record DeleteProgramManagementAccountOutput
end

local record DeleteRelationshipInput
    catalog: string
    identifier: string
    programManagementAccountIdentifier: string
    clientToken: string
end

local record DeleteRelationshipOutput
end

local record GetRelationshipInput
    catalog: string
    programManagementAccountIdentifier: string
    identifier: string
end

local record GetRelationshipOutput
    relationshipDetail: RelationshipDetail
end

local record ListChannelHandshakesInput
    handshakeType: string
    catalog: string
    participantType: string
    maxResults: number
    statuses: {string}
    associatedResourceIdentifiers: {string}
    handshakeTypeFilters: ListChannelHandshakesTypeFilters
    handshakeTypeSort: ListChannelHandshakesTypeSort
    nextToken: string
end

local record ListChannelHandshakesOutput
    items: {ChannelHandshakeSummary}
    nextToken: string
end

local record ListProgramManagementAccountsInput
    catalog: string
    maxResults: number
    displayNames: {string}
    programs: {string}
    accountIds: {string}
    statuses: {string}
    sort: ListProgramManagementAccountsSortBase
    nextToken: string
end

local record ListProgramManagementAccountsOutput
    items: {ProgramManagementAccountSummary}
    nextToken: string
end

local record ListRelationshipsInput
    catalog: string
    maxResults: number
    associatedAccountIds: {string}
    associationTypes: {string}
    displayNames: {string}
    programManagementAccountIdentifiers: {string}
    sort: ListRelationshipsSortBase
    nextToken: string
end

local record ListRelationshipsOutput
    items: {RelationshipSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record RejectChannelHandshakeInput
    catalog: string
    identifier: string
end

local record RejectChannelHandshakeOutput
    channelHandshakeDetail: RejectChannelHandshakeDetail
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateProgramManagementAccountInput
    catalog: string
    identifier: string
    revision: string
    displayName: string
end

local record UpdateProgramManagementAccountOutput
    programManagementAccountDetail: UpdateProgramManagementAccountDetail
end

local record UpdateRelationshipInput
    catalog: string
    identifier: string
    programManagementAccountIdentifier: string
    revision: string
    displayName: string
    requestedSupportPlan: SupportPlan
end

local record UpdateRelationshipOutput
    relationshipDetail: UpdateRelationshipDetail
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local type Sector = "COMMERCIAL" | "GOVERNMENT" | "GOVERNMENT_EXCEPTION"

local type ParticipantType = "SENDER" | "RECEIVER"

local type AssociationType = "DOWNSTREAM_SELLER" | "END_CUSTOMER" | "INTERNAL"

local type HandshakeType = "START_SERVICE_PERIOD" | "REVOKE_SERVICE_PERIOD" | "PROGRAM_MANAGEMENT_ACCOUNT"

local type ResaleAccountModel = "DISTRIBUTOR" | "END_CUSTOMER" | "SOLUTION_PROVIDER"

local type Program = "SOLUTION_PROVIDER" | "DISTRIBUTION" | "DISTRIBUTION_SELLER"

local record M
    AcceptChannelHandshakeInput: AcceptChannelHandshakeInput
    AcceptChannelHandshakeOutput: AcceptChannelHandshakeOutput
    CancelChannelHandshakeInput: CancelChannelHandshakeInput
    CancelChannelHandshakeOutput: CancelChannelHandshakeOutput
    CreateChannelHandshakeInput: CreateChannelHandshakeInput
    CreateChannelHandshakeOutput: CreateChannelHandshakeOutput
    CreateProgramManagementAccountInput: CreateProgramManagementAccountInput
    CreateProgramManagementAccountOutput: CreateProgramManagementAccountOutput
    CreateRelationshipInput: CreateRelationshipInput
    CreateRelationshipOutput: CreateRelationshipOutput
    DeleteProgramManagementAccountInput: DeleteProgramManagementAccountInput
    DeleteProgramManagementAccountOutput: DeleteProgramManagementAccountOutput
    DeleteRelationshipInput: DeleteRelationshipInput
    DeleteRelationshipOutput: DeleteRelationshipOutput
    GetRelationshipInput: GetRelationshipInput
    GetRelationshipOutput: GetRelationshipOutput
    ListChannelHandshakesInput: ListChannelHandshakesInput
    ListChannelHandshakesOutput: ListChannelHandshakesOutput
    ListProgramManagementAccountsInput: ListProgramManagementAccountsInput
    ListProgramManagementAccountsOutput: ListProgramManagementAccountsOutput
    ListRelationshipsInput: ListRelationshipsInput
    ListRelationshipsOutput: ListRelationshipsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RejectChannelHandshakeInput: RejectChannelHandshakeInput
    RejectChannelHandshakeOutput: RejectChannelHandshakeOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateProgramManagementAccountInput: UpdateProgramManagementAccountInput
    UpdateProgramManagementAccountOutput: UpdateProgramManagementAccountOutput
    UpdateRelationshipInput: UpdateRelationshipInput
    UpdateRelationshipOutput: UpdateRelationshipOutput
end

return M
