local record AssociateLensesInput
    WorkloadId: string
    LensAliases: {string}
end

local record AssociateLensesOutput
end

local record AssociateProfilesInput
    WorkloadId: string
    ProfileArns: {string}
end

local record AssociateProfilesOutput
end

local record CreateLensShareInput
    LensAlias: string
    SharedWith: string
    ClientRequestToken: string
end

local record CreateLensShareOutput
    ShareId: string
end

local record CreateLensVersionInput
    LensAlias: string
    LensVersion: string
    IsMajorVersion: boolean
    ClientRequestToken: string
end

local record CreateLensVersionOutput
    LensArn: string
    LensVersion: string
end

local record CreateMilestoneInput
    WorkloadId: string
    MilestoneName: string
    ClientRequestToken: string
end

local record CreateMilestoneOutput
    WorkloadId: string
    MilestoneNumber: number
end

local record CreateProfileInput
    ProfileName: string
    ProfileDescription: string
    ProfileQuestions: {ProfileQuestionUpdate}
    ClientRequestToken: string
    Tags: {string : string}
end

local record CreateProfileOutput
    ProfileArn: string
    ProfileVersion: string
end

local record CreateProfileShareInput
    ProfileArn: string
    SharedWith: string
    ClientRequestToken: string
end

local record CreateProfileShareOutput
    ShareId: string
    ProfileArn: string
end

local record CreateReviewTemplateInput
    TemplateName: string
    Description: string
    Lenses: {string}
    Notes: string
    Tags: {string : string}
    ClientRequestToken: string
end

local record CreateReviewTemplateOutput
    TemplateArn: string
end

local record CreateTemplateShareInput
    TemplateArn: string
    SharedWith: string
    ClientRequestToken: string
end

local record CreateTemplateShareOutput
    TemplateArn: string
    ShareId: string
end

local record CreateWorkloadInput
    WorkloadName: string
    Description: string
    Environment: string
    AccountIds: {string}
    AwsRegions: {string}
    NonAwsRegions: {string}
    PillarPriorities: {string}
    ArchitecturalDesign: string
    ReviewOwner: string
    IndustryType: string
    Industry: string
    Lenses: {string}
    Notes: string
    ClientRequestToken: string
    Tags: {string : string}
    DiscoveryConfig: WorkloadDiscoveryConfig
    Applications: {string}
    ProfileArns: {string}
    ReviewTemplateArns: {string}
    JiraConfiguration: WorkloadJiraConfigurationInput
end

local record CreateWorkloadOutput
    WorkloadId: string
    WorkloadArn: string
end

local record CreateWorkloadShareInput
    WorkloadId: string
    SharedWith: string
    PermissionType: string
    ClientRequestToken: string
end

local record CreateWorkloadShareOutput
    WorkloadId: string
    ShareId: string
end

local record DeleteLensInput
    LensAlias: string
    ClientRequestToken: string
    LensStatus: string
end

local record DeleteLensOutput
end

local record DeleteLensShareInput
    ShareId: string
    LensAlias: string
    ClientRequestToken: string
end

local record DeleteLensShareOutput
end

local record DeleteProfileInput
    ProfileArn: string
    ClientRequestToken: string
end

local record DeleteProfileOutput
end

local record DeleteProfileShareInput
    ShareId: string
    ProfileArn: string
    ClientRequestToken: string
end

local record DeleteProfileShareOutput
end

local record DeleteReviewTemplateInput
    TemplateArn: string
    ClientRequestToken: string
end

local record DeleteReviewTemplateOutput
end

local record DeleteTemplateShareInput
    ShareId: string
    TemplateArn: string
    ClientRequestToken: string
end

local record DeleteTemplateShareOutput
end

local record DeleteWorkloadInput
    WorkloadId: string
    ClientRequestToken: string
end

local record DeleteWorkloadOutput
end

local record DeleteWorkloadShareInput
    ShareId: string
    WorkloadId: string
    ClientRequestToken: string
end

local record DeleteWorkloadShareOutput
end

local record DisassociateLensesInput
    WorkloadId: string
    LensAliases: {string}
end

local record DisassociateLensesOutput
end

local record DisassociateProfilesInput
    WorkloadId: string
    ProfileArns: {string}
end

local record DisassociateProfilesOutput
end

local record ExportLensInput
    LensAlias: string
    LensVersion: string
end

local record ExportLensOutput
    LensJSON: string
end

local record GetAnswerInput
    WorkloadId: string
    LensAlias: string
    QuestionId: string
    MilestoneNumber: number
end

local record GetAnswerOutput
    WorkloadId: string
    MilestoneNumber: number
    LensAlias: string
    LensArn: string
    Answer: Answer
end

local record GetConsolidatedReportInput
    Format: string
    IncludeSharedResources: boolean
    NextToken: string
    MaxResults: number
end

local record GetConsolidatedReportOutput
    Metrics: {ConsolidatedReportMetric}
    NextToken: string
    Base64String: string
end

local record GetGlobalSettingsInput
end

local record GetGlobalSettingsOutput
    OrganizationSharingStatus: string
    DiscoveryIntegrationStatus: string
    JiraConfiguration: AccountJiraConfigurationOutput
end

local record GetLensInput
    LensAlias: string
    LensVersion: string
end

local record GetLensOutput
    Lens: Lens
end

local record GetLensReviewInput
    WorkloadId: string
    LensAlias: string
    MilestoneNumber: number
end

local record GetLensReviewOutput
    WorkloadId: string
    MilestoneNumber: number
    LensReview: LensReview
end

local record GetLensReviewReportInput
    WorkloadId: string
    LensAlias: string
    MilestoneNumber: number
end

local record GetLensReviewReportOutput
    WorkloadId: string
    MilestoneNumber: number
    LensReviewReport: LensReviewReport
end

local record GetLensVersionDifferenceInput
    LensAlias: string
    BaseLensVersion: string
    TargetLensVersion: string
end

local record GetLensVersionDifferenceOutput
    LensAlias: string
    LensArn: string
    BaseLensVersion: string
    TargetLensVersion: string
    LatestLensVersion: string
    VersionDifferences: VersionDifferences
end

local record GetMilestoneInput
    WorkloadId: string
    MilestoneNumber: number
end

local record GetMilestoneOutput
    WorkloadId: string
    Milestone: Milestone
end

local record GetProfileInput
    ProfileArn: string
    ProfileVersion: string
end

local record GetProfileOutput
    Profile: Profile
end

local record GetProfileTemplateInput
end

local record GetProfileTemplateOutput
    ProfileTemplate: ProfileTemplate
end

local record GetReviewTemplateInput
    TemplateArn: string
end

local record GetReviewTemplateOutput
    ReviewTemplate: ReviewTemplate
end

local record GetReviewTemplateAnswerInput
    TemplateArn: string
    LensAlias: string
    QuestionId: string
end

local record GetReviewTemplateAnswerOutput
    TemplateArn: string
    LensAlias: string
    Answer: ReviewTemplateAnswer
end

local record GetReviewTemplateLensReviewInput
    TemplateArn: string
    LensAlias: string
end

local record GetReviewTemplateLensReviewOutput
    TemplateArn: string
    LensReview: ReviewTemplateLensReview
end

local record GetWorkloadInput
    WorkloadId: string
end

local record GetWorkloadOutput
    Workload: Workload
end

local record ImportLensInput
    LensAlias: string
    JSONString: string
    ClientRequestToken: string
    Tags: {string : string}
end

local record ImportLensOutput
    LensArn: string
    Status: string
end

local record ListAnswersInput
    WorkloadId: string
    LensAlias: string
    PillarId: string
    MilestoneNumber: number
    NextToken: string
    MaxResults: number
    QuestionPriority: string
end

local record ListAnswersOutput
    WorkloadId: string
    MilestoneNumber: number
    LensAlias: string
    LensArn: string
    AnswerSummaries: {AnswerSummary}
    NextToken: string
end

local record ListCheckDetailsInput
    WorkloadId: string
    NextToken: string
    MaxResults: number
    LensArn: string
    PillarId: string
    QuestionId: string
    ChoiceId: string
end

local record ListCheckDetailsOutput
    CheckDetails: {CheckDetail}
    NextToken: string
end

local record ListCheckSummariesInput
    WorkloadId: string
    NextToken: string
    MaxResults: number
    LensArn: string
    PillarId: string
    QuestionId: string
    ChoiceId: string
end

local record ListCheckSummariesOutput
    CheckSummaries: {CheckSummary}
    NextToken: string
end

local record ListLensesInput
    NextToken: string
    MaxResults: number
    LensType: string
    LensStatus: string
    LensName: string
end

local record ListLensesOutput
    LensSummaries: {LensSummary}
    NextToken: string
end

local record ListLensReviewImprovementsInput
    WorkloadId: string
    LensAlias: string
    PillarId: string
    MilestoneNumber: number
    NextToken: string
    MaxResults: number
    QuestionPriority: string
end

local record ListLensReviewImprovementsOutput
    WorkloadId: string
    MilestoneNumber: number
    LensAlias: string
    LensArn: string
    ImprovementSummaries: {ImprovementSummary}
    NextToken: string
end

local record ListLensReviewsInput
    WorkloadId: string
    MilestoneNumber: number
    NextToken: string
    MaxResults: number
end

local record ListLensReviewsOutput
    WorkloadId: string
    MilestoneNumber: number
    LensReviewSummaries: {LensReviewSummary}
    NextToken: string
end

local record ListLensSharesInput
    LensAlias: string
    SharedWithPrefix: string
    NextToken: string
    MaxResults: number
    Status: string
end

local record ListLensSharesOutput
    LensShareSummaries: {LensShareSummary}
    NextToken: string
end

local record ListMilestonesInput
    WorkloadId: string
    NextToken: string
    MaxResults: number
end

local record ListMilestonesOutput
    WorkloadId: string
    MilestoneSummaries: {MilestoneSummary}
    NextToken: string
end

local record ListNotificationsInput
    WorkloadId: string
    NextToken: string
    MaxResults: number
    ResourceArn: string
end

local record ListNotificationsOutput
    NotificationSummaries: {NotificationSummary}
    NextToken: string
end

local record ListProfileNotificationsInput
    WorkloadId: string
    NextToken: string
    MaxResults: number
end

local record ListProfileNotificationsOutput
    NotificationSummaries: {ProfileNotificationSummary}
    NextToken: string
end

local record ListProfilesInput
    ProfileNamePrefix: string
    ProfileOwnerType: string
    NextToken: string
    MaxResults: number
end

local record ListProfilesOutput
    ProfileSummaries: {ProfileSummary}
    NextToken: string
end

local record ListProfileSharesInput
    ProfileArn: string
    SharedWithPrefix: string
    NextToken: string
    MaxResults: number
    Status: string
end

local record ListProfileSharesOutput
    ProfileShareSummaries: {ProfileShareSummary}
    NextToken: string
end

local record ListReviewTemplateAnswersInput
    TemplateArn: string
    LensAlias: string
    PillarId: string
    NextToken: string
    MaxResults: number
end

local record ListReviewTemplateAnswersOutput
    TemplateArn: string
    LensAlias: string
    AnswerSummaries: {ReviewTemplateAnswerSummary}
    NextToken: string
end

local record ListReviewTemplatesInput
    NextToken: string
    MaxResults: number
end

local record ListReviewTemplatesOutput
    ReviewTemplates: {ReviewTemplateSummary}
    NextToken: string
end

local record ListShareInvitationsInput
    WorkloadNamePrefix: string
    LensNamePrefix: string
    ShareResourceType: string
    NextToken: string
    MaxResults: number
    ProfileNamePrefix: string
    TemplateNamePrefix: string
end

local record ListShareInvitationsOutput
    ShareInvitationSummaries: {ShareInvitationSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    WorkloadArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record ListTemplateSharesInput
    TemplateArn: string
    SharedWithPrefix: string
    NextToken: string
    MaxResults: number
    Status: string
end

local record ListTemplateSharesOutput
    TemplateArn: string
    TemplateShareSummaries: {TemplateShareSummary}
    NextToken: string
end

local record ListWorkloadsInput
    WorkloadNamePrefix: string
    NextToken: string
    MaxResults: number
end

local record ListWorkloadsOutput
    WorkloadSummaries: {WorkloadSummary}
    NextToken: string
end

local record ListWorkloadSharesInput
    WorkloadId: string
    SharedWithPrefix: string
    NextToken: string
    MaxResults: number
    Status: string
end

local record ListWorkloadSharesOutput
    WorkloadId: string
    WorkloadShareSummaries: {WorkloadShareSummary}
    NextToken: string
end

local record TagResourceInput
    WorkloadArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    WorkloadArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAnswerInput
    WorkloadId: string
    LensAlias: string
    QuestionId: string
    SelectedChoices: {string}
    ChoiceUpdates: {string : ChoiceUpdate}
    Notes: string
    IsApplicable: boolean
    Reason: string
end

local record UpdateAnswerOutput
    WorkloadId: string
    LensAlias: string
    LensArn: string
    Answer: Answer
end

local record UpdateGlobalSettingsInput
    OrganizationSharingStatus: string
    DiscoveryIntegrationStatus: string
    JiraConfiguration: AccountJiraConfigurationInput
end

local record UpdateGlobalSettingsOutput
end

local record UpdateIntegrationInput
    WorkloadId: string
    ClientRequestToken: string
    IntegratingService: string
end

local record UpdateIntegrationOutput
end

local record UpdateLensReviewInput
    WorkloadId: string
    LensAlias: string
    LensNotes: string
    PillarNotes: {string : string}
    JiraConfiguration: JiraSelectedQuestionConfiguration
end

local record UpdateLensReviewOutput
    WorkloadId: string
    LensReview: LensReview
end

local record UpdateProfileInput
    ProfileArn: string
    ProfileDescription: string
    ProfileQuestions: {ProfileQuestionUpdate}
end

local record UpdateProfileOutput
    Profile: Profile
end

local record UpdateReviewTemplateInput
    TemplateArn: string
    TemplateName: string
    Description: string
    Notes: string
    LensesToAssociate: {string}
    LensesToDisassociate: {string}
end

local record UpdateReviewTemplateOutput
    ReviewTemplate: ReviewTemplate
end

local record UpdateReviewTemplateAnswerInput
    TemplateArn: string
    LensAlias: string
    QuestionId: string
    SelectedChoices: {string}
    ChoiceUpdates: {string : ChoiceUpdate}
    Notes: string
    IsApplicable: boolean
    Reason: string
end

local record UpdateReviewTemplateAnswerOutput
    TemplateArn: string
    LensAlias: string
    Answer: ReviewTemplateAnswer
end

local record UpdateReviewTemplateLensReviewInput
    TemplateArn: string
    LensAlias: string
    LensNotes: string
    PillarNotes: {string : string}
end

local record UpdateReviewTemplateLensReviewOutput
    TemplateArn: string
    LensReview: ReviewTemplateLensReview
end

local record UpdateShareInvitationInput
    ShareInvitationId: string
    ShareInvitationAction: string
end

local record UpdateShareInvitationOutput
    ShareInvitation: ShareInvitation
end

local record UpdateWorkloadInput
    WorkloadId: string
    WorkloadName: string
    Description: string
    Environment: string
    AccountIds: {string}
    AwsRegions: {string}
    NonAwsRegions: {string}
    PillarPriorities: {string}
    ArchitecturalDesign: string
    ReviewOwner: string
    IsReviewOwnerUpdateAcknowledged: boolean
    IndustryType: string
    Industry: string
    Notes: string
    ImprovementStatus: string
    DiscoveryConfig: WorkloadDiscoveryConfig
    Applications: {string}
    JiraConfiguration: WorkloadJiraConfigurationInput
end

local record UpdateWorkloadOutput
    Workload: Workload
end

local record UpdateWorkloadShareInput
    ShareId: string
    WorkloadId: string
    PermissionType: string
end

local record UpdateWorkloadShareOutput
    WorkloadId: string
    WorkloadShare: WorkloadShare
end

local record UpgradeLensReviewInput
    WorkloadId: string
    LensAlias: string
    MilestoneName: string
    ClientRequestToken: string
end

local record UpgradeLensReviewOutput
end

local record UpgradeProfileVersionInput
    WorkloadId: string
    ProfileArn: string
    MilestoneName: string
    ClientRequestToken: string
end

local record UpgradeProfileVersionOutput
end

local record UpgradeReviewTemplateLensReviewInput
    TemplateArn: string
    LensAlias: string
    ClientRequestToken: string
end

local record UpgradeReviewTemplateLensReviewOutput
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
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
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
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
end

local record InternalServerException
    Message: string
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
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
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
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
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
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
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
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
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
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
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
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
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
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
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
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record InternalServerException
    Message: string
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
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local type IntegratingService = "JIRA"

local type LensStatusType = "ALL" | "DRAFT" | "PUBLISHED"

local type OrganizationSharingStatus = "ENABLED" | "DISABLED"

local type ShareInvitationAction = "ACCEPT" | "REJECT"

local type ProfileOwnerType = "SELF" | "SHARED"

local type WorkloadEnvironment = "PRODUCTION" | "PREPRODUCTION"

local type ShareResourceType = "WORKLOAD" | "LENS" | "PROFILE" | "TEMPLATE"

local type ShareStatus = "ACCEPTED" | "REJECTED" | "PENDING" | "REVOKED" | "EXPIRED" | "ASSOCIATING" | "ASSOCIATED" | "FAILED"

local type AnswerReason = "OUT_OF_SCOPE" | "BUSINESS_PRIORITIES" | "ARCHITECTURE_CONSTRAINTS" | "OTHER" | "NONE"

local type DiscoveryIntegrationStatus = "ENABLED" | "DISABLED"

local type WorkloadImprovementStatus = "NOT_APPLICABLE" | "NOT_STARTED" | "IN_PROGRESS" | "COMPLETE" | "RISK_ACKNOWLEDGED"

local type LensType = "AWS_OFFICIAL" | "CUSTOM_SHARED" | "CUSTOM_SELF"

local type ImportLensStatus = "IN_PROGRESS" | "COMPLETE" | "ERROR"

local type ReportFormat = "PDF" | "JSON"

local type PermissionType = "READONLY" | "CONTRIBUTOR"

local type QuestionPriority = "PRIORITIZED" | "NONE"

local record M
    AssociateLensesInput: AssociateLensesInput
    AssociateLensesOutput: AssociateLensesOutput
    AssociateProfilesInput: AssociateProfilesInput
    AssociateProfilesOutput: AssociateProfilesOutput
    CreateLensShareInput: CreateLensShareInput
    CreateLensShareOutput: CreateLensShareOutput
    CreateLensVersionInput: CreateLensVersionInput
    CreateLensVersionOutput: CreateLensVersionOutput
    CreateMilestoneInput: CreateMilestoneInput
    CreateMilestoneOutput: CreateMilestoneOutput
    CreateProfileInput: CreateProfileInput
    CreateProfileOutput: CreateProfileOutput
    CreateProfileShareInput: CreateProfileShareInput
    CreateProfileShareOutput: CreateProfileShareOutput
    CreateReviewTemplateInput: CreateReviewTemplateInput
    CreateReviewTemplateOutput: CreateReviewTemplateOutput
    CreateTemplateShareInput: CreateTemplateShareInput
    CreateTemplateShareOutput: CreateTemplateShareOutput
    CreateWorkloadInput: CreateWorkloadInput
    CreateWorkloadOutput: CreateWorkloadOutput
    CreateWorkloadShareInput: CreateWorkloadShareInput
    CreateWorkloadShareOutput: CreateWorkloadShareOutput
    DeleteLensInput: DeleteLensInput
    DeleteLensOutput: DeleteLensOutput
    DeleteLensShareInput: DeleteLensShareInput
    DeleteLensShareOutput: DeleteLensShareOutput
    DeleteProfileInput: DeleteProfileInput
    DeleteProfileOutput: DeleteProfileOutput
    DeleteProfileShareInput: DeleteProfileShareInput
    DeleteProfileShareOutput: DeleteProfileShareOutput
    DeleteReviewTemplateInput: DeleteReviewTemplateInput
    DeleteReviewTemplateOutput: DeleteReviewTemplateOutput
    DeleteTemplateShareInput: DeleteTemplateShareInput
    DeleteTemplateShareOutput: DeleteTemplateShareOutput
    DeleteWorkloadInput: DeleteWorkloadInput
    DeleteWorkloadOutput: DeleteWorkloadOutput
    DeleteWorkloadShareInput: DeleteWorkloadShareInput
    DeleteWorkloadShareOutput: DeleteWorkloadShareOutput
    DisassociateLensesInput: DisassociateLensesInput
    DisassociateLensesOutput: DisassociateLensesOutput
    DisassociateProfilesInput: DisassociateProfilesInput
    DisassociateProfilesOutput: DisassociateProfilesOutput
    ExportLensInput: ExportLensInput
    ExportLensOutput: ExportLensOutput
    GetAnswerInput: GetAnswerInput
    GetAnswerOutput: GetAnswerOutput
    GetConsolidatedReportInput: GetConsolidatedReportInput
    GetConsolidatedReportOutput: GetConsolidatedReportOutput
    GetGlobalSettingsInput: GetGlobalSettingsInput
    GetGlobalSettingsOutput: GetGlobalSettingsOutput
    GetLensInput: GetLensInput
    GetLensOutput: GetLensOutput
    GetLensReviewInput: GetLensReviewInput
    GetLensReviewOutput: GetLensReviewOutput
    GetLensReviewReportInput: GetLensReviewReportInput
    GetLensReviewReportOutput: GetLensReviewReportOutput
    GetLensVersionDifferenceInput: GetLensVersionDifferenceInput
    GetLensVersionDifferenceOutput: GetLensVersionDifferenceOutput
    GetMilestoneInput: GetMilestoneInput
    GetMilestoneOutput: GetMilestoneOutput
    GetProfileInput: GetProfileInput
    GetProfileOutput: GetProfileOutput
    GetProfileTemplateInput: GetProfileTemplateInput
    GetProfileTemplateOutput: GetProfileTemplateOutput
    GetReviewTemplateInput: GetReviewTemplateInput
    GetReviewTemplateOutput: GetReviewTemplateOutput
    GetReviewTemplateAnswerInput: GetReviewTemplateAnswerInput
    GetReviewTemplateAnswerOutput: GetReviewTemplateAnswerOutput
    GetReviewTemplateLensReviewInput: GetReviewTemplateLensReviewInput
    GetReviewTemplateLensReviewOutput: GetReviewTemplateLensReviewOutput
    GetWorkloadInput: GetWorkloadInput
    GetWorkloadOutput: GetWorkloadOutput
    ImportLensInput: ImportLensInput
    ImportLensOutput: ImportLensOutput
    ListAnswersInput: ListAnswersInput
    ListAnswersOutput: ListAnswersOutput
    ListCheckDetailsInput: ListCheckDetailsInput
    ListCheckDetailsOutput: ListCheckDetailsOutput
    ListCheckSummariesInput: ListCheckSummariesInput
    ListCheckSummariesOutput: ListCheckSummariesOutput
    ListLensesInput: ListLensesInput
    ListLensesOutput: ListLensesOutput
    ListLensReviewImprovementsInput: ListLensReviewImprovementsInput
    ListLensReviewImprovementsOutput: ListLensReviewImprovementsOutput
    ListLensReviewsInput: ListLensReviewsInput
    ListLensReviewsOutput: ListLensReviewsOutput
    ListLensSharesInput: ListLensSharesInput
    ListLensSharesOutput: ListLensSharesOutput
    ListMilestonesInput: ListMilestonesInput
    ListMilestonesOutput: ListMilestonesOutput
    ListNotificationsInput: ListNotificationsInput
    ListNotificationsOutput: ListNotificationsOutput
    ListProfileNotificationsInput: ListProfileNotificationsInput
    ListProfileNotificationsOutput: ListProfileNotificationsOutput
    ListProfilesInput: ListProfilesInput
    ListProfilesOutput: ListProfilesOutput
    ListProfileSharesInput: ListProfileSharesInput
    ListProfileSharesOutput: ListProfileSharesOutput
    ListReviewTemplateAnswersInput: ListReviewTemplateAnswersInput
    ListReviewTemplateAnswersOutput: ListReviewTemplateAnswersOutput
    ListReviewTemplatesInput: ListReviewTemplatesInput
    ListReviewTemplatesOutput: ListReviewTemplatesOutput
    ListShareInvitationsInput: ListShareInvitationsInput
    ListShareInvitationsOutput: ListShareInvitationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTemplateSharesInput: ListTemplateSharesInput
    ListTemplateSharesOutput: ListTemplateSharesOutput
    ListWorkloadsInput: ListWorkloadsInput
    ListWorkloadsOutput: ListWorkloadsOutput
    ListWorkloadSharesInput: ListWorkloadSharesInput
    ListWorkloadSharesOutput: ListWorkloadSharesOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAnswerInput: UpdateAnswerInput
    UpdateAnswerOutput: UpdateAnswerOutput
    UpdateGlobalSettingsInput: UpdateGlobalSettingsInput
    UpdateGlobalSettingsOutput: UpdateGlobalSettingsOutput
    UpdateIntegrationInput: UpdateIntegrationInput
    UpdateIntegrationOutput: UpdateIntegrationOutput
    UpdateLensReviewInput: UpdateLensReviewInput
    UpdateLensReviewOutput: UpdateLensReviewOutput
    UpdateProfileInput: UpdateProfileInput
    UpdateProfileOutput: UpdateProfileOutput
    UpdateReviewTemplateInput: UpdateReviewTemplateInput
    UpdateReviewTemplateOutput: UpdateReviewTemplateOutput
    UpdateReviewTemplateAnswerInput: UpdateReviewTemplateAnswerInput
    UpdateReviewTemplateAnswerOutput: UpdateReviewTemplateAnswerOutput
    UpdateReviewTemplateLensReviewInput: UpdateReviewTemplateLensReviewInput
    UpdateReviewTemplateLensReviewOutput: UpdateReviewTemplateLensReviewOutput
    UpdateShareInvitationInput: UpdateShareInvitationInput
    UpdateShareInvitationOutput: UpdateShareInvitationOutput
    UpdateWorkloadInput: UpdateWorkloadInput
    UpdateWorkloadOutput: UpdateWorkloadOutput
    UpdateWorkloadShareInput: UpdateWorkloadShareInput
    UpdateWorkloadShareOutput: UpdateWorkloadShareOutput
    UpgradeLensReviewInput: UpgradeLensReviewInput
    UpgradeLensReviewOutput: UpgradeLensReviewOutput
    UpgradeProfileVersionInput: UpgradeProfileVersionInput
    UpgradeProfileVersionOutput: UpgradeProfileVersionOutput
    UpgradeReviewTemplateLensReviewInput: UpgradeReviewTemplateLensReviewInput
    UpgradeReviewTemplateLensReviewOutput: UpgradeReviewTemplateLensReviewOutput
end

return M
