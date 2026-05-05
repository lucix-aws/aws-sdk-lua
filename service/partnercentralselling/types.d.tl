local record AcceptEngagementInvitationInput
    Catalog: string
    Identifier: string
end

local record AcceptEngagementInvitationOutput
end

local record AssignOpportunityInput
    Catalog: string
    Identifier: string
    Assignee: AssigneeContact
end

local record AssignOpportunityOutput
end

local record AssociateOpportunityInput
    Catalog: string
    OpportunityIdentifier: string
    RelatedEntityType: string
    RelatedEntityIdentifier: string
end

local record AssociateOpportunityOutput
end

local record CreateEngagementInput
    Catalog: string
    ClientToken: string
    Title: string
    Description: string
    Contexts: {EngagementContextDetails}
end

local record CreateEngagementOutput
    Id: string
    Arn: string
    ModifiedAt: number
end

local record CreateEngagementContextInput
    Catalog: string
    EngagementIdentifier: string
    ClientToken: string
    Type: string
    Payload: EngagementContextPayload
end

local record CreateEngagementContextOutput
    EngagementId: string
    EngagementArn: string
    EngagementLastModifiedAt: number
    ContextId: string
end

local record CreateEngagementInvitationInput
    Catalog: string
    ClientToken: string
    EngagementIdentifier: string
    Invitation: Invitation
end

local record CreateEngagementInvitationOutput
    Id: string
    Arn: string
end

local record CreateOpportunityInput
    Catalog: string
    PrimaryNeedsFromAws: {string}
    NationalSecurity: string
    PartnerOpportunityIdentifier: string
    Customer: Customer
    Project: Project
    OpportunityType: string
    Marketing: Marketing
    SoftwareRevenue: SoftwareRevenue
    ClientToken: string
    LifeCycle: LifeCycle
    Origin: string
    OpportunityTeam: {Contact}
    Tags: {Tag}
end

local record CreateOpportunityOutput
    Id: string
    PartnerOpportunityIdentifier: string
    LastModifiedDate: number
end

local record CreateResourceSnapshotInput
    Catalog: string
    EngagementIdentifier: string
    ResourceType: string
    ResourceIdentifier: string
    ResourceSnapshotTemplateIdentifier: string
    ClientToken: string
end

local record CreateResourceSnapshotOutput
    Arn: string
    Revision: number
end

local record CreateResourceSnapshotJobInput
    Catalog: string
    ClientToken: string
    EngagementIdentifier: string
    ResourceType: string
    ResourceIdentifier: string
    ResourceSnapshotTemplateIdentifier: string
    Tags: {Tag}
end

local record CreateResourceSnapshotJobOutput
    Id: string
    Arn: string
end

local record DeleteResourceSnapshotJobInput
    Catalog: string
    ResourceSnapshotJobIdentifier: string
end

local record DeleteResourceSnapshotJobOutput
end

local record DisassociateOpportunityInput
    Catalog: string
    OpportunityIdentifier: string
    RelatedEntityType: string
    RelatedEntityIdentifier: string
end

local record DisassociateOpportunityOutput
end

local record GetAwsOpportunitySummaryInput
    Catalog: string
    RelatedOpportunityIdentifier: string
end

local record GetAwsOpportunitySummaryOutput
    RelatedOpportunityId: string
    Origin: string
    InvolvementType: string
    Visibility: string
    LifeCycle: AwsOpportunityLifeCycle
    OpportunityTeam: {AwsTeamMember}
    Insights: AwsOpportunityInsights
    InvolvementTypeChangeReason: string
    RelatedEntityIds: AwsOpportunityRelatedEntities
    Customer: AwsOpportunityCustomer
    Project: AwsOpportunityProject
    Catalog: string
end

local record GetEngagementInput
    Catalog: string
    Identifier: string
end

local record GetEngagementOutput
    Id: string
    Arn: string
    Title: string
    Description: string
    CreatedAt: number
    CreatedBy: string
    MemberCount: number
    ModifiedAt: number
    ModifiedBy: string
    Contexts: {EngagementContextDetails}
end

local record GetEngagementInvitationInput
    Catalog: string
    Identifier: string
end

local record GetEngagementInvitationOutput
    Arn: string
    PayloadType: string
    Id: string
    EngagementId: string
    EngagementTitle: string
    Status: string
    InvitationDate: number
    ExpirationDate: number
    SenderAwsAccountId: string
    SenderCompanyName: string
    Receiver: Receiver
    Catalog: string
    RejectionReason: string
    Payload: Payload
    InvitationMessage: string
    EngagementDescription: string
    ExistingMembers: {EngagementMemberSummary}
end

local record GetOpportunityInput
    Catalog: string
    Identifier: string
end

local record GetOpportunityOutput
    Catalog: string
    PrimaryNeedsFromAws: {string}
    NationalSecurity: string
    PartnerOpportunityIdentifier: string
    Customer: Customer
    Project: Project
    OpportunityType: string
    Marketing: Marketing
    SoftwareRevenue: SoftwareRevenue
    Id: string
    Arn: string
    LastModifiedDate: number
    CreatedDate: number
    RelatedEntityIdentifiers: RelatedEntityIdentifiers
    LifeCycle: LifeCycle
    OpportunityTeam: {Contact}
end

local record GetResourceSnapshotInput
    Catalog: string
    EngagementIdentifier: string
    ResourceType: string
    ResourceIdentifier: string
    ResourceSnapshotTemplateIdentifier: string
    Revision: number
end

local record GetResourceSnapshotOutput
    Catalog: string
    Arn: string
    CreatedBy: string
    CreatedAt: number
    EngagementId: string
    ResourceType: string
    ResourceId: string
    ResourceSnapshotTemplateName: string
    Revision: number
    Payload: ResourceSnapshotPayload
    TargetMemberAccounts: {string}
end

local record GetResourceSnapshotJobInput
    Catalog: string
    ResourceSnapshotJobIdentifier: string
end

local record GetResourceSnapshotJobOutput
    Catalog: string
    Id: string
    Arn: string
    EngagementId: string
    ResourceType: string
    ResourceId: string
    ResourceArn: string
    ResourceSnapshotTemplateName: string
    CreatedAt: number
    Status: string
    LastSuccessfulExecutionDate: number
    LastFailure: string
end

local record GetSellingSystemSettingsInput
    Catalog: string
end

local record GetSellingSystemSettingsOutput
    Catalog: string
    ResourceSnapshotJobRoleArn: string
end

local record ListEngagementByAcceptingInvitationTasksInput
    MaxResults: number
    NextToken: string
    Sort: ListTasksSortBase
    Catalog: string
    TaskStatus: {string}
    OpportunityIdentifier: {string}
    EngagementInvitationIdentifier: {string}
    TaskIdentifier: {string}
end

local record ListEngagementByAcceptingInvitationTasksOutput
    TaskSummaries: {ListEngagementByAcceptingInvitationTaskSummary}
    NextToken: string
end

local record ListEngagementFromOpportunityTasksInput
    MaxResults: number
    NextToken: string
    Sort: ListTasksSortBase
    Catalog: string
    TaskStatus: {string}
    TaskIdentifier: {string}
    OpportunityIdentifier: {string}
    EngagementIdentifier: {string}
end

local record ListEngagementFromOpportunityTasksOutput
    TaskSummaries: {ListEngagementFromOpportunityTaskSummary}
    NextToken: string
end

local record ListEngagementInvitationsInput
    Catalog: string
    MaxResults: number
    NextToken: string
    Sort: OpportunityEngagementInvitationSort
    PayloadType: {string}
    ParticipantType: string
    Status: {string}
    EngagementIdentifier: {string}
    SenderAwsAccountId: {string}
end

local record ListEngagementInvitationsOutput
    EngagementInvitationSummaries: {EngagementInvitationSummary}
    NextToken: string
end

local record ListEngagementMembersInput
    Catalog: string
    Identifier: string
    MaxResults: number
    NextToken: string
end

local record ListEngagementMembersOutput
    EngagementMemberList: {EngagementMember}
    NextToken: string
end

local record ListEngagementResourceAssociationsInput
    Catalog: string
    MaxResults: number
    NextToken: string
    EngagementIdentifier: string
    ResourceType: string
    ResourceIdentifier: string
    CreatedBy: string
end

local record ListEngagementResourceAssociationsOutput
    EngagementResourceAssociationSummaries: {EngagementResourceAssociationSummary}
    NextToken: string
end

local record ListEngagementsInput
    Catalog: string
    CreatedBy: {string}
    ExcludeCreatedBy: {string}
    ContextTypes: {string}
    ExcludeContextTypes: {string}
    Sort: EngagementSort
    MaxResults: number
    NextToken: string
    EngagementIdentifier: {string}
end

local record ListEngagementsOutput
    EngagementSummaryList: {EngagementSummary}
    NextToken: string
end

local record ListOpportunitiesInput
    Catalog: string
    MaxResults: number
    NextToken: string
    Sort: OpportunitySort
    LastModifiedDate: LastModifiedDate
    Identifier: {string}
    LifeCycleStage: {string}
    LifeCycleReviewStatus: {string}
    CustomerCompanyName: {string}
    CreatedDate: CreatedDateFilter
    TargetCloseDate: TargetCloseDateFilter
end

local record ListOpportunitiesOutput
    OpportunitySummaries: {OpportunitySummary}
    NextToken: string
end

local record ListOpportunityFromEngagementTasksInput
    MaxResults: number
    NextToken: string
    Sort: ListTasksSortBase
    Catalog: string
    TaskStatus: {string}
    TaskIdentifier: {string}
    OpportunityIdentifier: {string}
    EngagementIdentifier: {string}
    ContextIdentifier: {string}
end

local record ListOpportunityFromEngagementTasksOutput
    TaskSummaries: {ListOpportunityFromEngagementTaskSummary}
    NextToken: string
end

local record ListResourceSnapshotJobsInput
    Catalog: string
    MaxResults: number
    NextToken: string
    EngagementIdentifier: string
    Status: string
    Sort: SortObject
end

local record ListResourceSnapshotJobsOutput
    ResourceSnapshotJobSummaries: {ResourceSnapshotJobSummary}
    NextToken: string
end

local record ListResourceSnapshotsInput
    Catalog: string
    MaxResults: number
    NextToken: string
    EngagementIdentifier: string
    ResourceType: string
    ResourceIdentifier: string
    ResourceSnapshotTemplateIdentifier: string
    CreatedBy: string
end

local record ListResourceSnapshotsOutput
    ResourceSnapshotSummaries: {ResourceSnapshotSummary}
    NextToken: string
end

local record ListSolutionsInput
    Catalog: string
    MaxResults: number
    NextToken: string
    Sort: SolutionSort
    Status: {string}
    Identifier: {string}
    Category: {string}
end

local record ListSolutionsOutput
    SolutionSummaries: {SolutionBase}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record PutSellingSystemSettingsInput
    Catalog: string
    ResourceSnapshotJobRoleIdentifier: string
end

local record PutSellingSystemSettingsOutput
    Catalog: string
    ResourceSnapshotJobRoleArn: string
end

local record RejectEngagementInvitationInput
    Catalog: string
    Identifier: string
    RejectionReason: string
end

local record RejectEngagementInvitationOutput
end

local record StartEngagementByAcceptingInvitationTaskInput
    Catalog: string
    ClientToken: string
    Identifier: string
    Tags: {Tag}
end

local record StartEngagementByAcceptingInvitationTaskOutput
    TaskId: string
    TaskArn: string
    StartTime: number
    TaskStatus: string
    Message: string
    ReasonCode: string
    OpportunityId: string
    ResourceSnapshotJobId: string
    EngagementInvitationId: string
end

local record StartEngagementFromOpportunityTaskInput
    Catalog: string
    ClientToken: string
    Identifier: string
    AwsSubmission: AwsSubmission
    Tags: {Tag}
end

local record StartEngagementFromOpportunityTaskOutput
    TaskId: string
    TaskArn: string
    StartTime: number
    TaskStatus: string
    Message: string
    ReasonCode: string
    OpportunityId: string
    ResourceSnapshotJobId: string
    EngagementId: string
    EngagementInvitationId: string
end

local record StartOpportunityFromEngagementTaskInput
    Catalog: string
    ClientToken: string
    Identifier: string
    ContextIdentifier: string
    Tags: {Tag}
end

local record StartOpportunityFromEngagementTaskOutput
    TaskId: string
    TaskArn: string
    StartTime: number
    TaskStatus: string
    Message: string
    ReasonCode: string
    OpportunityId: string
    ResourceSnapshotJobId: string
    EngagementId: string
    ContextId: string
end

local record StartResourceSnapshotJobInput
    Catalog: string
    ResourceSnapshotJobIdentifier: string
end

local record StartResourceSnapshotJobOutput
end

local record StopResourceSnapshotJobInput
    Catalog: string
    ResourceSnapshotJobIdentifier: string
end

local record StopResourceSnapshotJobOutput
end

local record SubmitOpportunityInput
    Catalog: string
    Identifier: string
    InvolvementType: string
    Visibility: string
end

local record SubmitOpportunityOutput
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

local record UpdateEngagementContextInput
    Catalog: string
    EngagementIdentifier: string
    ContextIdentifier: string
    EngagementLastModifiedAt: number
    Type: string
    Payload: UpdateEngagementContextPayload
end

local record UpdateEngagementContextOutput
    EngagementId: string
    EngagementArn: string
    EngagementLastModifiedAt: number
    ContextId: string
end

local record UpdateOpportunityInput
    Catalog: string
    PrimaryNeedsFromAws: {string}
    NationalSecurity: string
    PartnerOpportunityIdentifier: string
    Customer: Customer
    Project: Project
    OpportunityType: string
    Marketing: Marketing
    SoftwareRevenue: SoftwareRevenue
    LastModifiedDate: number
    Identifier: string
    LifeCycle: LifeCycle
end

local record UpdateOpportunityOutput
    Id: string
    LastModifiedDate: number
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local record AccessDeniedException
    Message: string
    Reason: string
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
    Reason: string
    ErrorList: {ValidationExceptionError}
end

local type EngagementInvitationPayloadType = "OpportunityInvitation" | "LeadInvitation"

local type EngagementContextType = "CustomerProject" | "Lead"

local type ReasonCode = "InvitationAccessDenied" | "InvitationValidationFailed" | "EngagementAccessDenied" | "OpportunityAccessDenied" | "ResourceSnapshotJobAccessDenied" | "ResourceSnapshotJobValidationFailed" | "ResourceSnapshotJobConflict" | "EngagementValidationFailed" | "EngagementConflict" | "OpportunitySubmissionFailed" | "EngagementInvitationConflict" | "InternalError" | "OpportunityValidationFailed" | "OpportunityConflict" | "ResourceSnapshotAccessDenied" | "ResourceSnapshotValidationFailed" | "ResourceSnapshotConflict" | "ServiceQuotaExceeded" | "RequestThrottled" | "ContextNotFound" | "CustomerProjectContextNotPermitted" | "DisqualifiedLeadNotPermitted"

local type ParticipantType = "SENDER" | "RECEIVER"

local type ResourceType = "Opportunity"

local type OpportunityOrigin = "AWS Referral" | "Partner Referral"

local type TaskStatus = "IN_PROGRESS" | "COMPLETE" | "FAILED"

local type InvitationStatus = "ACCEPTED" | "PENDING" | "REJECTED" | "EXPIRED"

local type SalesInvolvementType = "For Visibility Only" | "Co-Sell"

local type OpportunityType = "Net New Business" | "Flat Renewal" | "Expansion"

local type RelatedEntityType = "Solutions" | "AwsProducts" | "AwsMarketplaceOffers" | "AwsMarketplaceOfferSets"

local type InvolvementTypeChangeReason = "Expansion Opportunity" | "Change in Deal Information" | "Customer Requested" | "Technical Complexity" | "Risk Mitigation"

local type ResourceSnapshotJobStatus = "Running" | "Stopped"

local type NationalSecurity = "Yes" | "No"

local type Visibility = "Full" | "Limited"

local record M
    AcceptEngagementInvitationInput: AcceptEngagementInvitationInput
    AcceptEngagementInvitationOutput: AcceptEngagementInvitationOutput
    AssignOpportunityInput: AssignOpportunityInput
    AssignOpportunityOutput: AssignOpportunityOutput
    AssociateOpportunityInput: AssociateOpportunityInput
    AssociateOpportunityOutput: AssociateOpportunityOutput
    CreateEngagementInput: CreateEngagementInput
    CreateEngagementOutput: CreateEngagementOutput
    CreateEngagementContextInput: CreateEngagementContextInput
    CreateEngagementContextOutput: CreateEngagementContextOutput
    CreateEngagementInvitationInput: CreateEngagementInvitationInput
    CreateEngagementInvitationOutput: CreateEngagementInvitationOutput
    CreateOpportunityInput: CreateOpportunityInput
    CreateOpportunityOutput: CreateOpportunityOutput
    CreateResourceSnapshotInput: CreateResourceSnapshotInput
    CreateResourceSnapshotOutput: CreateResourceSnapshotOutput
    CreateResourceSnapshotJobInput: CreateResourceSnapshotJobInput
    CreateResourceSnapshotJobOutput: CreateResourceSnapshotJobOutput
    DeleteResourceSnapshotJobInput: DeleteResourceSnapshotJobInput
    DeleteResourceSnapshotJobOutput: DeleteResourceSnapshotJobOutput
    DisassociateOpportunityInput: DisassociateOpportunityInput
    DisassociateOpportunityOutput: DisassociateOpportunityOutput
    GetAwsOpportunitySummaryInput: GetAwsOpportunitySummaryInput
    GetAwsOpportunitySummaryOutput: GetAwsOpportunitySummaryOutput
    GetEngagementInput: GetEngagementInput
    GetEngagementOutput: GetEngagementOutput
    GetEngagementInvitationInput: GetEngagementInvitationInput
    GetEngagementInvitationOutput: GetEngagementInvitationOutput
    GetOpportunityInput: GetOpportunityInput
    GetOpportunityOutput: GetOpportunityOutput
    GetResourceSnapshotInput: GetResourceSnapshotInput
    GetResourceSnapshotOutput: GetResourceSnapshotOutput
    GetResourceSnapshotJobInput: GetResourceSnapshotJobInput
    GetResourceSnapshotJobOutput: GetResourceSnapshotJobOutput
    GetSellingSystemSettingsInput: GetSellingSystemSettingsInput
    GetSellingSystemSettingsOutput: GetSellingSystemSettingsOutput
    ListEngagementByAcceptingInvitationTasksInput: ListEngagementByAcceptingInvitationTasksInput
    ListEngagementByAcceptingInvitationTasksOutput: ListEngagementByAcceptingInvitationTasksOutput
    ListEngagementFromOpportunityTasksInput: ListEngagementFromOpportunityTasksInput
    ListEngagementFromOpportunityTasksOutput: ListEngagementFromOpportunityTasksOutput
    ListEngagementInvitationsInput: ListEngagementInvitationsInput
    ListEngagementInvitationsOutput: ListEngagementInvitationsOutput
    ListEngagementMembersInput: ListEngagementMembersInput
    ListEngagementMembersOutput: ListEngagementMembersOutput
    ListEngagementResourceAssociationsInput: ListEngagementResourceAssociationsInput
    ListEngagementResourceAssociationsOutput: ListEngagementResourceAssociationsOutput
    ListEngagementsInput: ListEngagementsInput
    ListEngagementsOutput: ListEngagementsOutput
    ListOpportunitiesInput: ListOpportunitiesInput
    ListOpportunitiesOutput: ListOpportunitiesOutput
    ListOpportunityFromEngagementTasksInput: ListOpportunityFromEngagementTasksInput
    ListOpportunityFromEngagementTasksOutput: ListOpportunityFromEngagementTasksOutput
    ListResourceSnapshotJobsInput: ListResourceSnapshotJobsInput
    ListResourceSnapshotJobsOutput: ListResourceSnapshotJobsOutput
    ListResourceSnapshotsInput: ListResourceSnapshotsInput
    ListResourceSnapshotsOutput: ListResourceSnapshotsOutput
    ListSolutionsInput: ListSolutionsInput
    ListSolutionsOutput: ListSolutionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutSellingSystemSettingsInput: PutSellingSystemSettingsInput
    PutSellingSystemSettingsOutput: PutSellingSystemSettingsOutput
    RejectEngagementInvitationInput: RejectEngagementInvitationInput
    RejectEngagementInvitationOutput: RejectEngagementInvitationOutput
    StartEngagementByAcceptingInvitationTaskInput: StartEngagementByAcceptingInvitationTaskInput
    StartEngagementByAcceptingInvitationTaskOutput: StartEngagementByAcceptingInvitationTaskOutput
    StartEngagementFromOpportunityTaskInput: StartEngagementFromOpportunityTaskInput
    StartEngagementFromOpportunityTaskOutput: StartEngagementFromOpportunityTaskOutput
    StartOpportunityFromEngagementTaskInput: StartOpportunityFromEngagementTaskInput
    StartOpportunityFromEngagementTaskOutput: StartOpportunityFromEngagementTaskOutput
    StartResourceSnapshotJobInput: StartResourceSnapshotJobInput
    StartResourceSnapshotJobOutput: StartResourceSnapshotJobOutput
    StopResourceSnapshotJobInput: StopResourceSnapshotJobInput
    StopResourceSnapshotJobOutput: StopResourceSnapshotJobOutput
    SubmitOpportunityInput: SubmitOpportunityInput
    SubmitOpportunityOutput: SubmitOpportunityOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateEngagementContextInput: UpdateEngagementContextInput
    UpdateEngagementContextOutput: UpdateEngagementContextOutput
    UpdateOpportunityInput: UpdateOpportunityInput
    UpdateOpportunityOutput: UpdateOpportunityOutput
end

return M
