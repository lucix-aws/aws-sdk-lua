local record CancelSessionInput
    SessionArn: string
end

local record CancelSessionOutput
end

local record CreateApprovalTeamInput
    ClientToken: string
    ApprovalStrategy: ApprovalStrategy
    Approvers: {ApprovalTeamRequestApprover}
    Description: string
    Policies: {PolicyReference}
    Name: string
    Tags: {string : string}
end

local record CreateApprovalTeamOutput
    CreationTime: number
    Arn: string
    Name: string
    VersionId: string
end

local record CreateIdentitySourceInput
    IdentitySourceParameters: IdentitySourceParameters
    ClientToken: string
    Tags: {string : string}
end

local record CreateIdentitySourceOutput
    IdentitySourceType: string
    IdentitySourceArn: string
    CreationTime: number
end

local record DeleteIdentitySourceInput
    IdentitySourceArn: string
end

local record DeleteIdentitySourceOutput
end

local record DeleteInactiveApprovalTeamVersionInput
    Arn: string
    VersionId: string
end

local record DeleteInactiveApprovalTeamVersionOutput
end

local record GetApprovalTeamInput
    Arn: string
end

local record GetApprovalTeamOutput
    CreationTime: number
    ApprovalStrategy: ApprovalStrategyResponse
    NumberOfApprovers: number
    Approvers: {GetApprovalTeamResponseApprover}
    Arn: string
    Description: string
    Name: string
    Status: string
    StatusCode: string
    StatusMessage: string
    UpdateSessionArn: string
    VersionId: string
    Policies: {PolicyReference}
    LastUpdateTime: number
    PendingUpdate: PendingUpdate
end

local record GetIdentitySourceInput
    IdentitySourceArn: string
end

local record GetIdentitySourceOutput
    IdentitySourceType: string
    IdentitySourceParameters: IdentitySourceParametersForGet
    IdentitySourceArn: string
    CreationTime: number
    Status: string
    StatusCode: string
    StatusMessage: string
end

local record GetPolicyVersionInput
    PolicyVersionArn: string
end

local record GetPolicyVersionOutput
    PolicyVersion: PolicyVersion
end

local record GetResourcePolicyInput
    ResourceArn: string
    PolicyName: string
    PolicyType: string
end

local record GetResourcePolicyOutput
    ResourceArn: string
    PolicyType: string
    PolicyVersionArn: string
    PolicyName: string
    PolicyDocument: string
end

local record GetSessionInput
    SessionArn: string
end

local record GetSessionOutput
    SessionArn: string
    ApprovalTeamArn: string
    ApprovalTeamName: string
    ProtectedResourceArn: string
    ApprovalStrategy: ApprovalStrategyResponse
    NumberOfApprovers: number
    InitiationTime: number
    ExpirationTime: number
    CompletionTime: number
    Description: string
    Metadata: {string : string}
    Status: string
    StatusCode: string
    StatusMessage: string
    ExecutionStatus: string
    ActionName: string
    RequesterServicePrincipal: string
    RequesterPrincipalArn: string
    RequesterAccountId: string
    RequesterRegion: string
    RequesterComment: string
    ActionCompletionStrategy: string
    ApproverResponses: {GetSessionResponseApproverResponse}
    AdditionalSecurityRequirements: {string}
end

local record ListApprovalTeamsInput
    MaxResults: number
    NextToken: string
end

local record ListApprovalTeamsOutput
    NextToken: string
    ApprovalTeams: {ListApprovalTeamsResponseApprovalTeam}
end

local record ListIdentitySourcesInput
    MaxResults: number
    NextToken: string
end

local record ListIdentitySourcesOutput
    NextToken: string
    IdentitySources: {IdentitySourceForList}
end

local record ListPoliciesInput
    MaxResults: number
    NextToken: string
end

local record ListPoliciesOutput
    NextToken: string
    Policies: {Policy}
end

local record ListPolicyVersionsInput
    MaxResults: number
    NextToken: string
    PolicyArn: string
end

local record ListPolicyVersionsOutput
    NextToken: string
    PolicyVersions: {PolicyVersionSummary}
end

local record ListResourcePoliciesInput
    ResourceArn: string
    MaxResults: number
    NextToken: string
end

local record ListResourcePoliciesOutput
    NextToken: string
    ResourcePolicies: {ListResourcePoliciesResponseResourcePolicy}
end

local record ListSessionsInput
    ApprovalTeamArn: string
    MaxResults: number
    NextToken: string
    Filters: {Filter}
end

local record ListSessionsOutput
    NextToken: string
    Sessions: {ListSessionsResponseSession}
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record StartActiveApprovalTeamDeletionInput
    PendingWindowDays: number
    Arn: string
end

local record StartActiveApprovalTeamDeletionOutput
    DeletionCompletionTime: number
    DeletionStartTime: number
end

local record StartApprovalTeamBaselineInput
    Arn: string
    ApproverIds: {string}
end

local record StartApprovalTeamBaselineOutput
    BaselineSessionArn: string
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateApprovalTeamInput
    ApprovalStrategy: ApprovalStrategy
    Approvers: {ApprovalTeamRequestApprover}
    Description: string
    Arn: string
    UpdateActions: {string}
end

local record UpdateApprovalTeamOutput
    VersionId: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record TooManyTagsException
    Message: string
    ResourceName: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local type IdentitySourceStatusCode = "ACCESS_DENIED" | "DELETION_FAILED" | "IDC_INSTANCE_NOT_FOUND" | "IDC_INSTANCE_NOT_VALID"

local type ActionCompletionStrategy = "AUTO_COMPLETION_UPON_APPROVAL"

local type PolicyType = "AWS_MANAGED" | "AWS_RAM"

local type SessionExecutionStatus = "EXECUTED" | "FAILED" | "PENDING"

local type ApprovalTeamStatus = "ACTIVE" | "INACTIVE" | "DELETING" | "PENDING"

local type ApprovalTeamStatusCode = "VALIDATING" | "PENDING_ACTIVATION" | "FAILED_VALIDATION" | "FAILED_ACTIVATION" | "UPDATE_PENDING_APPROVAL" | "UPDATE_PENDING_ACTIVATION" | "UPDATE_FAILED_APPROVAL" | "UPDATE_FAILED_ACTIVATION" | "UPDATE_FAILED_VALIDATION" | "DELETE_PENDING_APPROVAL" | "DELETE_FAILED_APPROVAL" | "DELETE_FAILED_VALIDATION"

local type IdentitySourceType = "IAM_IDENTITY_CENTER"

local type SessionStatusCode = "REJECTED" | "EXPIRED" | "CONFIGURATION_CHANGED" | "ALL_APPROVERS_IN_SESSION"

local type IdentitySourceStatus = "CREATING" | "ACTIVE" | "DELETING" | "ERROR"

local type SessionStatus = "PENDING" | "CANCELLED" | "APPROVED" | "FAILED" | "CREATING"

local record M
    CancelSessionInput: CancelSessionInput
    CancelSessionOutput: CancelSessionOutput
    CreateApprovalTeamInput: CreateApprovalTeamInput
    CreateApprovalTeamOutput: CreateApprovalTeamOutput
    CreateIdentitySourceInput: CreateIdentitySourceInput
    CreateIdentitySourceOutput: CreateIdentitySourceOutput
    DeleteIdentitySourceInput: DeleteIdentitySourceInput
    DeleteIdentitySourceOutput: DeleteIdentitySourceOutput
    DeleteInactiveApprovalTeamVersionInput: DeleteInactiveApprovalTeamVersionInput
    DeleteInactiveApprovalTeamVersionOutput: DeleteInactiveApprovalTeamVersionOutput
    GetApprovalTeamInput: GetApprovalTeamInput
    GetApprovalTeamOutput: GetApprovalTeamOutput
    GetIdentitySourceInput: GetIdentitySourceInput
    GetIdentitySourceOutput: GetIdentitySourceOutput
    GetPolicyVersionInput: GetPolicyVersionInput
    GetPolicyVersionOutput: GetPolicyVersionOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    GetSessionInput: GetSessionInput
    GetSessionOutput: GetSessionOutput
    ListApprovalTeamsInput: ListApprovalTeamsInput
    ListApprovalTeamsOutput: ListApprovalTeamsOutput
    ListIdentitySourcesInput: ListIdentitySourcesInput
    ListIdentitySourcesOutput: ListIdentitySourcesOutput
    ListPoliciesInput: ListPoliciesInput
    ListPoliciesOutput: ListPoliciesOutput
    ListPolicyVersionsInput: ListPolicyVersionsInput
    ListPolicyVersionsOutput: ListPolicyVersionsOutput
    ListResourcePoliciesInput: ListResourcePoliciesInput
    ListResourcePoliciesOutput: ListResourcePoliciesOutput
    ListSessionsInput: ListSessionsInput
    ListSessionsOutput: ListSessionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartActiveApprovalTeamDeletionInput: StartActiveApprovalTeamDeletionInput
    StartActiveApprovalTeamDeletionOutput: StartActiveApprovalTeamDeletionOutput
    StartApprovalTeamBaselineInput: StartApprovalTeamBaselineInput
    StartApprovalTeamBaselineOutput: StartApprovalTeamBaselineOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApprovalTeamInput: UpdateApprovalTeamInput
    UpdateApprovalTeamOutput: UpdateApprovalTeamOutput
end

return M
