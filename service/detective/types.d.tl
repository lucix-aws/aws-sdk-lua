local record AcceptInvitationInput
    GraphArn: string
end

local record AcceptInvitationOutput
end

local record BatchGetGraphMemberDatasourcesInput
    GraphArn: string
    AccountIds: {string}
end

local record BatchGetGraphMemberDatasourcesOutput
    MemberDatasources: {MembershipDatasources}
    UnprocessedAccounts: {UnprocessedAccount}
end

local record BatchGetMembershipDatasourcesInput
    GraphArns: {string}
end

local record BatchGetMembershipDatasourcesOutput
    MembershipDatasources: {MembershipDatasources}
    UnprocessedGraphs: {UnprocessedGraph}
end

local record CreateGraphInput
    Tags: {string : string}
end

local record CreateGraphOutput
    GraphArn: string
end

local record CreateMembersInput
    GraphArn: string
    Message: string
    DisableEmailNotification: boolean
    Accounts: {Account}
end

local record CreateMembersOutput
    Members: {MemberDetail}
    UnprocessedAccounts: {UnprocessedAccount}
end

local record DeleteGraphInput
    GraphArn: string
end

local record DeleteGraphOutput
end

local record DeleteMembersInput
    GraphArn: string
    AccountIds: {string}
end

local record DeleteMembersOutput
    AccountIds: {string}
    UnprocessedAccounts: {UnprocessedAccount}
end

local record DescribeOrganizationConfigurationInput
    GraphArn: string
end

local record DescribeOrganizationConfigurationOutput
    AutoEnable: boolean
end

local record DisableOrganizationAdminAccountInput
end

local record DisableOrganizationAdminAccountOutput
end

local record DisassociateMembershipInput
    GraphArn: string
end

local record DisassociateMembershipOutput
end

local record EnableOrganizationAdminAccountInput
    AccountId: string
end

local record EnableOrganizationAdminAccountOutput
end

local record GetInvestigationInput
    GraphArn: string
    InvestigationId: string
end

local record GetInvestigationOutput
    GraphArn: string
    InvestigationId: string
    EntityArn: string
    EntityType: string
    CreatedTime: number
    ScopeStartTime: number
    ScopeEndTime: number
    Status: string
    Severity: string
    State: string
end

local record GetMembersInput
    GraphArn: string
    AccountIds: {string}
end

local record GetMembersOutput
    MemberDetails: {MemberDetail}
    UnprocessedAccounts: {UnprocessedAccount}
end

local record ListDatasourcePackagesInput
    GraphArn: string
    NextToken: string
    MaxResults: number
end

local record ListDatasourcePackagesOutput
    DatasourcePackages: {string : DatasourcePackageIngestDetail}
    NextToken: string
end

local record ListGraphsInput
    NextToken: string
    MaxResults: number
end

local record ListGraphsOutput
    GraphList: {Graph}
    NextToken: string
end

local record ListIndicatorsInput
    GraphArn: string
    InvestigationId: string
    IndicatorType: string
    NextToken: string
    MaxResults: number
end

local record ListIndicatorsOutput
    GraphArn: string
    InvestigationId: string
    NextToken: string
    Indicators: {Indicator}
end

local record ListInvestigationsInput
    GraphArn: string
    NextToken: string
    MaxResults: number
    FilterCriteria: FilterCriteria
    SortCriteria: SortCriteria
end

local record ListInvestigationsOutput
    InvestigationDetails: {InvestigationDetail}
    NextToken: string
end

local record ListInvitationsInput
    NextToken: string
    MaxResults: number
end

local record ListInvitationsOutput
    Invitations: {MemberDetail}
    NextToken: string
end

local record ListMembersInput
    GraphArn: string
    NextToken: string
    MaxResults: number
end

local record ListMembersOutput
    MemberDetails: {MemberDetail}
    NextToken: string
end

local record ListOrganizationAdminAccountsInput
    NextToken: string
    MaxResults: number
end

local record ListOrganizationAdminAccountsOutput
    Administrators: {Administrator}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record RejectInvitationInput
    GraphArn: string
end

local record RejectInvitationOutput
end

local record StartInvestigationInput
    GraphArn: string
    EntityArn: string
    ScopeStartTime: number
    ScopeEndTime: number
end

local record StartInvestigationOutput
    InvestigationId: string
end

local record StartMonitoringMemberInput
    GraphArn: string
    AccountId: string
end

local record StartMonitoringMemberOutput
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

local record UpdateDatasourcePackagesInput
    GraphArn: string
    DatasourcePackages: {string}
end

local record UpdateDatasourcePackagesOutput
end

local record UpdateInvestigationStateInput
    GraphArn: string
    InvestigationId: string
    State: string
end

local record UpdateInvestigationStateOutput
end

local record UpdateOrganizationConfigurationInput
    GraphArn: string
    AutoEnable: boolean
end

local record UpdateOrganizationConfigurationOutput
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
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

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Resources: {string}
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Resources: {string}
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
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

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
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

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
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

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
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
    Resources: {string}
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Resources: {string}
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local record AccessDeniedException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
    SubErrorCode: string
    SubErrorCodeReason: string
end

local record InternalServerException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    ErrorCode: string
    ErrorCodeReason: string
end

local type EntityType = "IAM_ROLE" | "IAM_USER"

local type IndicatorType = "TTP_OBSERVED" | "IMPOSSIBLE_TRAVEL" | "FLAGGED_IP_ADDRESS" | "NEW_GEOLOCATION" | "NEW_ASO" | "NEW_USER_AGENT" | "RELATED_FINDING" | "RELATED_FINDING_GROUP"

local type Severity = "INFORMATIONAL" | "LOW" | "MEDIUM" | "HIGH" | "CRITICAL"

local type Status = "RUNNING" | "FAILED" | "SUCCESSFUL"

local type State = "ACTIVE" | "ARCHIVED"

local record M
    AcceptInvitationInput: AcceptInvitationInput
    AcceptInvitationOutput: AcceptInvitationOutput
    BatchGetGraphMemberDatasourcesInput: BatchGetGraphMemberDatasourcesInput
    BatchGetGraphMemberDatasourcesOutput: BatchGetGraphMemberDatasourcesOutput
    BatchGetMembershipDatasourcesInput: BatchGetMembershipDatasourcesInput
    BatchGetMembershipDatasourcesOutput: BatchGetMembershipDatasourcesOutput
    CreateGraphInput: CreateGraphInput
    CreateGraphOutput: CreateGraphOutput
    CreateMembersInput: CreateMembersInput
    CreateMembersOutput: CreateMembersOutput
    DeleteGraphInput: DeleteGraphInput
    DeleteGraphOutput: DeleteGraphOutput
    DeleteMembersInput: DeleteMembersInput
    DeleteMembersOutput: DeleteMembersOutput
    DescribeOrganizationConfigurationInput: DescribeOrganizationConfigurationInput
    DescribeOrganizationConfigurationOutput: DescribeOrganizationConfigurationOutput
    DisableOrganizationAdminAccountInput: DisableOrganizationAdminAccountInput
    DisableOrganizationAdminAccountOutput: DisableOrganizationAdminAccountOutput
    DisassociateMembershipInput: DisassociateMembershipInput
    DisassociateMembershipOutput: DisassociateMembershipOutput
    EnableOrganizationAdminAccountInput: EnableOrganizationAdminAccountInput
    EnableOrganizationAdminAccountOutput: EnableOrganizationAdminAccountOutput
    GetInvestigationInput: GetInvestigationInput
    GetInvestigationOutput: GetInvestigationOutput
    GetMembersInput: GetMembersInput
    GetMembersOutput: GetMembersOutput
    ListDatasourcePackagesInput: ListDatasourcePackagesInput
    ListDatasourcePackagesOutput: ListDatasourcePackagesOutput
    ListGraphsInput: ListGraphsInput
    ListGraphsOutput: ListGraphsOutput
    ListIndicatorsInput: ListIndicatorsInput
    ListIndicatorsOutput: ListIndicatorsOutput
    ListInvestigationsInput: ListInvestigationsInput
    ListInvestigationsOutput: ListInvestigationsOutput
    ListInvitationsInput: ListInvitationsInput
    ListInvitationsOutput: ListInvitationsOutput
    ListMembersInput: ListMembersInput
    ListMembersOutput: ListMembersOutput
    ListOrganizationAdminAccountsInput: ListOrganizationAdminAccountsInput
    ListOrganizationAdminAccountsOutput: ListOrganizationAdminAccountsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RejectInvitationInput: RejectInvitationInput
    RejectInvitationOutput: RejectInvitationOutput
    StartInvestigationInput: StartInvestigationInput
    StartInvestigationOutput: StartInvestigationOutput
    StartMonitoringMemberInput: StartMonitoringMemberInput
    StartMonitoringMemberOutput: StartMonitoringMemberOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDatasourcePackagesInput: UpdateDatasourcePackagesInput
    UpdateDatasourcePackagesOutput: UpdateDatasourcePackagesOutput
    UpdateInvestigationStateInput: UpdateInvestigationStateInput
    UpdateInvestigationStateOutput: UpdateInvestigationStateOutput
    UpdateOrganizationConfigurationInput: UpdateOrganizationConfigurationInput
    UpdateOrganizationConfigurationOutput: UpdateOrganizationConfigurationOutput
end

return M
