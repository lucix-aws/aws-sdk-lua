local record AcceptInvitationInput
    administratorAccountId: string
    invitationId: string
    masterAccount: string
end

local record AcceptInvitationOutput
end

local record BatchGetCustomDataIdentifiersInput
    ids: {string}
end

local record BatchGetCustomDataIdentifiersOutput
    customDataIdentifiers: {BatchGetCustomDataIdentifierSummary}
    notFoundIdentifierIds: {string}
end

local record BatchUpdateAutomatedDiscoveryAccountsInput
    accounts: {AutomatedDiscoveryAccountUpdate}
end

local record BatchUpdateAutomatedDiscoveryAccountsOutput
    errors: {AutomatedDiscoveryAccountUpdateError}
end

local record CreateAllowListInput
    clientToken: string
    criteria: AllowListCriteria
    description: string
    name: string
    tags: {string : string}
end

local record CreateAllowListOutput
    arn: string
    id: string
end

local record CreateClassificationJobInput
    allowListIds: {string}
    clientToken: string
    customDataIdentifierIds: {string}
    description: string
    initialRun: boolean
    jobType: string
    managedDataIdentifierIds: {string}
    managedDataIdentifierSelector: string
    name: string
    s3JobDefinition: S3JobDefinition
    samplingPercentage: number
    scheduleFrequency: JobScheduleFrequency
    tags: {string : string}
end

local record CreateClassificationJobOutput
    jobArn: string
    jobId: string
end

local record CreateCustomDataIdentifierInput
    clientToken: string
    description: string
    ignoreWords: {string}
    keywords: {string}
    maximumMatchDistance: number
    name: string
    regex: string
    severityLevels: {SeverityLevel}
    tags: {string : string}
end

local record CreateCustomDataIdentifierOutput
    customDataIdentifierId: string
end

local record CreateFindingsFilterInput
    action: string
    clientToken: string
    description: string
    findingCriteria: FindingCriteria
    name: string
    position: number
    tags: {string : string}
end

local record CreateFindingsFilterOutput
    arn: string
    id: string
end

local record CreateInvitationsInput
    accountIds: {string}
    disableEmailNotification: boolean
    message: string
end

local record CreateInvitationsOutput
    unprocessedAccounts: {UnprocessedAccount}
end

local record CreateMemberInput
    account: AccountDetail
    tags: {string : string}
end

local record CreateMemberOutput
    arn: string
end

local record CreateSampleFindingsInput
    findingTypes: {string}
end

local record CreateSampleFindingsOutput
end

local record DeclineInvitationsInput
    accountIds: {string}
end

local record DeclineInvitationsOutput
    unprocessedAccounts: {UnprocessedAccount}
end

local record DeleteAllowListInput
    id: string
    ignoreJobChecks: string
end

local record DeleteAllowListOutput
end

local record DeleteCustomDataIdentifierInput
    id: string
end

local record DeleteCustomDataIdentifierOutput
end

local record DeleteFindingsFilterInput
    id: string
end

local record DeleteFindingsFilterOutput
end

local record DeleteInvitationsInput
    accountIds: {string}
end

local record DeleteInvitationsOutput
    unprocessedAccounts: {UnprocessedAccount}
end

local record DeleteMemberInput
    id: string
end

local record DeleteMemberOutput
end

local record DescribeBucketsInput
    criteria: {string : BucketCriteriaAdditionalProperties}
    maxResults: number
    nextToken: string
    sortCriteria: BucketSortCriteria
end

local record DescribeBucketsOutput
    buckets: {BucketMetadata}
    nextToken: string
end

local record DescribeClassificationJobInput
    jobId: string
end

local record DescribeClassificationJobOutput
    allowListIds: {string}
    clientToken: string
    createdAt: number
    customDataIdentifierIds: {string}
    description: string
    initialRun: boolean
    jobArn: string
    jobId: string
    jobStatus: string
    jobType: string
    lastRunErrorStatus: LastRunErrorStatus
    lastRunTime: number
    managedDataIdentifierIds: {string}
    managedDataIdentifierSelector: string
    name: string
    s3JobDefinition: S3JobDefinition
    samplingPercentage: number
    scheduleFrequency: JobScheduleFrequency
    statistics: Statistics
    tags: {string : string}
    userPausedDetails: UserPausedDetails
end

local record DescribeOrganizationConfigurationInput
end

local record DescribeOrganizationConfigurationOutput
    autoEnable: boolean
    maxAccountLimitReached: boolean
end

local record DisableMacieInput
end

local record DisableMacieOutput
end

local record DisableOrganizationAdminAccountInput
    adminAccountId: string
end

local record DisableOrganizationAdminAccountOutput
end

local record DisassociateFromAdministratorAccountInput
end

local record DisassociateFromAdministratorAccountOutput
end

local record DisassociateFromMasterAccountInput
end

local record DisassociateFromMasterAccountOutput
end

local record DisassociateMemberInput
    id: string
end

local record DisassociateMemberOutput
end

local record EnableMacieInput
    clientToken: string
    findingPublishingFrequency: string
    status: string
end

local record EnableMacieOutput
end

local record EnableOrganizationAdminAccountInput
    adminAccountId: string
    clientToken: string
end

local record EnableOrganizationAdminAccountOutput
end

local record GetAdministratorAccountInput
end

local record GetAdministratorAccountOutput
    administrator: Invitation
end

local record GetAllowListInput
    id: string
end

local record GetAllowListOutput
    arn: string
    createdAt: number
    criteria: AllowListCriteria
    description: string
    id: string
    name: string
    status: AllowListStatus
    tags: {string : string}
    updatedAt: number
end

local record GetAutomatedDiscoveryConfigurationInput
end

local record GetAutomatedDiscoveryConfigurationOutput
    autoEnableOrganizationMembers: string
    classificationScopeId: string
    disabledAt: number
    firstEnabledAt: number
    lastUpdatedAt: number
    sensitivityInspectionTemplateId: string
    status: string
end

local record GetBucketStatisticsInput
    accountId: string
end

local record GetBucketStatisticsOutput
    bucketCount: number
    bucketCountByEffectivePermission: BucketCountByEffectivePermission
    bucketCountByEncryptionType: BucketCountByEncryptionType
    bucketCountByObjectEncryptionRequirement: BucketCountPolicyAllowsUnencryptedObjectUploads
    bucketCountBySharedAccessType: BucketCountBySharedAccessType
    bucketStatisticsBySensitivity: BucketStatisticsBySensitivity
    classifiableObjectCount: number
    classifiableSizeInBytes: number
    lastUpdated: number
    objectCount: number
    sizeInBytes: number
    sizeInBytesCompressed: number
    unclassifiableObjectCount: ObjectLevelStatistics
    unclassifiableObjectSizeInBytes: ObjectLevelStatistics
end

local record GetClassificationExportConfigurationInput
end

local record GetClassificationExportConfigurationOutput
    configuration: ClassificationExportConfiguration
end

local record GetClassificationScopeInput
    id: string
end

local record GetClassificationScopeOutput
    id: string
    name: string
    s3: S3ClassificationScope
end

local record GetCustomDataIdentifierInput
    id: string
end

local record GetCustomDataIdentifierOutput
    arn: string
    createdAt: number
    deleted: boolean
    description: string
    id: string
    ignoreWords: {string}
    keywords: {string}
    maximumMatchDistance: number
    name: string
    regex: string
    severityLevels: {SeverityLevel}
    tags: {string : string}
end

local record GetFindingsInput
    findingIds: {string}
    sortCriteria: SortCriteria
end

local record GetFindingsOutput
    findings: {Finding}
end

local record GetFindingsFilterInput
    id: string
end

local record GetFindingsFilterOutput
    action: string
    arn: string
    description: string
    findingCriteria: FindingCriteria
    id: string
    name: string
    position: number
    tags: {string : string}
end

local record GetFindingsPublicationConfigurationInput
end

local record GetFindingsPublicationConfigurationOutput
    securityHubConfiguration: SecurityHubConfiguration
end

local record GetFindingStatisticsInput
    findingCriteria: FindingCriteria
    groupBy: string
    size: number
    sortCriteria: FindingStatisticsSortCriteria
end

local record GetFindingStatisticsOutput
    countsByGroup: {GroupCount}
end

local record GetInvitationsCountInput
end

local record GetInvitationsCountOutput
    invitationsCount: number
end

local record GetMacieSessionInput
end

local record GetMacieSessionOutput
    createdAt: number
    findingPublishingFrequency: string
    serviceRole: string
    status: string
    updatedAt: number
end

local record GetMasterAccountInput
end

local record GetMasterAccountOutput
    master: Invitation
end

local record GetMemberInput
    id: string
end

local record GetMemberOutput
    accountId: string
    administratorAccountId: string
    arn: string
    email: string
    invitedAt: number
    masterAccountId: string
    relationshipStatus: string
    tags: {string : string}
    updatedAt: number
end

local record GetResourceProfileInput
    resourceArn: string
end

local record GetResourceProfileOutput
    profileUpdatedAt: number
    sensitivityScore: number
    sensitivityScoreOverridden: boolean
    statistics: ResourceStatistics
end

local record GetRevealConfigurationInput
end

local record GetRevealConfigurationOutput
    configuration: RevealConfiguration
    retrievalConfiguration: RetrievalConfiguration
end

local record GetSensitiveDataOccurrencesInput
    findingId: string
end

local record GetSensitiveDataOccurrencesOutput
    error: string
    sensitiveDataOccurrences: {string : {DetectedDataDetails}}
    status: string
end

local record GetSensitiveDataOccurrencesAvailabilityInput
    findingId: string
end

local record GetSensitiveDataOccurrencesAvailabilityOutput
    code: string
    reasons: {string}
end

local record GetSensitivityInspectionTemplateInput
    id: string
end

local record GetSensitivityInspectionTemplateOutput
    description: string
    excludes: SensitivityInspectionTemplateExcludes
    includes: SensitivityInspectionTemplateIncludes
    name: string
    sensitivityInspectionTemplateId: string
end

local record GetUsageStatisticsInput
    filterBy: {UsageStatisticsFilter}
    maxResults: number
    nextToken: string
    sortBy: UsageStatisticsSortBy
    timeRange: string
end

local record GetUsageStatisticsOutput
    nextToken: string
    records: {UsageRecord}
    timeRange: string
end

local record GetUsageTotalsInput
    timeRange: string
end

local record GetUsageTotalsOutput
    timeRange: string
    usageTotals: {UsageTotal}
end

local record ListAllowListsInput
    maxResults: number
    nextToken: string
end

local record ListAllowListsOutput
    allowLists: {AllowListSummary}
    nextToken: string
end

local record ListAutomatedDiscoveryAccountsInput
    accountIds: {string}
    maxResults: number
    nextToken: string
end

local record ListAutomatedDiscoveryAccountsOutput
    items: {AutomatedDiscoveryAccount}
    nextToken: string
end

local record ListClassificationJobsInput
    filterCriteria: ListJobsFilterCriteria
    maxResults: number
    nextToken: string
    sortCriteria: ListJobsSortCriteria
end

local record ListClassificationJobsOutput
    items: {JobSummary}
    nextToken: string
end

local record ListClassificationScopesInput
    name: string
    nextToken: string
end

local record ListClassificationScopesOutput
    classificationScopes: {ClassificationScopeSummary}
    nextToken: string
end

local record ListCustomDataIdentifiersInput
    maxResults: number
    nextToken: string
end

local record ListCustomDataIdentifiersOutput
    items: {CustomDataIdentifierSummary}
    nextToken: string
end

local record ListFindingsInput
    findingCriteria: FindingCriteria
    maxResults: number
    nextToken: string
    sortCriteria: SortCriteria
end

local record ListFindingsOutput
    findingIds: {string}
    nextToken: string
end

local record ListFindingsFiltersInput
    maxResults: number
    nextToken: string
end

local record ListFindingsFiltersOutput
    findingsFilterListItems: {FindingsFilterListItem}
    nextToken: string
end

local record ListInvitationsInput
    maxResults: number
    nextToken: string
end

local record ListInvitationsOutput
    invitations: {Invitation}
    nextToken: string
end

local record ListManagedDataIdentifiersInput
    nextToken: string
end

local record ListManagedDataIdentifiersOutput
    items: {ManagedDataIdentifierSummary}
    nextToken: string
end

local record ListMembersInput
    maxResults: number
    nextToken: string
    onlyAssociated: string
end

local record ListMembersOutput
    members: {Member}
    nextToken: string
end

local record ListOrganizationAdminAccountsInput
    maxResults: number
    nextToken: string
end

local record ListOrganizationAdminAccountsOutput
    adminAccounts: {AdminAccount}
    nextToken: string
end

local record ListResourceProfileArtifactsInput
    nextToken: string
    resourceArn: string
end

local record ListResourceProfileArtifactsOutput
    artifacts: {ResourceProfileArtifact}
    nextToken: string
end

local record ListResourceProfileDetectionsInput
    maxResults: number
    nextToken: string
    resourceArn: string
end

local record ListResourceProfileDetectionsOutput
    detections: {Detection}
    nextToken: string
end

local record ListSensitivityInspectionTemplatesInput
    maxResults: number
    nextToken: string
end

local record ListSensitivityInspectionTemplatesOutput
    nextToken: string
    sensitivityInspectionTemplates: {SensitivityInspectionTemplatesEntry}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record PutClassificationExportConfigurationInput
    configuration: ClassificationExportConfiguration
end

local record PutClassificationExportConfigurationOutput
    configuration: ClassificationExportConfiguration
end

local record PutFindingsPublicationConfigurationInput
    clientToken: string
    securityHubConfiguration: SecurityHubConfiguration
end

local record PutFindingsPublicationConfigurationOutput
end

local record SearchResourcesInput
    bucketCriteria: SearchResourcesBucketCriteria
    maxResults: number
    nextToken: string
    sortCriteria: SearchResourcesSortCriteria
end

local record SearchResourcesOutput
    matchingResources: {MatchingResource}
    nextToken: string
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record TestCustomDataIdentifierInput
    ignoreWords: {string}
    keywords: {string}
    maximumMatchDistance: number
    regex: string
    sampleText: string
end

local record TestCustomDataIdentifierOutput
    matchCount: number
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAllowListInput
    criteria: AllowListCriteria
    description: string
    id: string
    name: string
end

local record UpdateAllowListOutput
    arn: string
    id: string
end

local record UpdateAutomatedDiscoveryConfigurationInput
    autoEnableOrganizationMembers: string
    status: string
end

local record UpdateAutomatedDiscoveryConfigurationOutput
end

local record UpdateClassificationJobInput
    jobId: string
    jobStatus: string
end

local record UpdateClassificationJobOutput
end

local record UpdateClassificationScopeInput
    id: string
    s3: S3ClassificationScopeUpdate
end

local record UpdateClassificationScopeOutput
end

local record UpdateFindingsFilterInput
    action: string
    clientToken: string
    description: string
    findingCriteria: FindingCriteria
    id: string
    name: string
    position: number
end

local record UpdateFindingsFilterOutput
    arn: string
    id: string
end

local record UpdateMacieSessionInput
    findingPublishingFrequency: string
    status: string
end

local record UpdateMacieSessionOutput
end

local record UpdateMemberSessionInput
    id: string
    status: string
end

local record UpdateMemberSessionOutput
end

local record UpdateOrganizationConfigurationInput
    autoEnable: boolean
end

local record UpdateOrganizationConfigurationOutput
end

local record UpdateResourceProfileInput
    resourceArn: string
    sensitivityScoreOverride: number
end

local record UpdateResourceProfileOutput
end

local record UpdateResourceProfileDetectionsInput
    resourceArn: string
    suppressDataIdentifiers: {SuppressDataIdentifier}
end

local record UpdateResourceProfileDetectionsOutput
end

local record UpdateRevealConfigurationInput
    configuration: RevealConfiguration
    retrievalConfiguration: UpdateRetrievalConfiguration
end

local record UpdateRevealConfigurationOutput
    configuration: RevealConfiguration
    retrievalConfiguration: RetrievalConfiguration
end

local record UpdateSensitivityInspectionTemplateInput
    description: string
    excludes: SensitivityInspectionTemplateExcludes
    id: string
    includes: SensitivityInspectionTemplateIncludes
end

local record UpdateSensitivityInspectionTemplateOutput
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnprocessableEntityException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local type FindingsFilterAction = "ARCHIVE" | "NOOP"

local type GroupBy = "resourcesAffected.s3Bucket.name" | "type" | "classificationDetails.jobId" | "severity.description"

local type TimeRange = "MONTH_TO_DATE" | "PAST_30_DAYS"

local type MacieStatus = "PAUSED" | "ENABLED"

local type AvailabilityCode = "AVAILABLE" | "UNAVAILABLE"

local type AutoEnableMode = "ALL" | "NEW" | "NONE"

local type JobType = "ONE_TIME" | "SCHEDULED"

local type FindingPublishingFrequency = "FIFTEEN_MINUTES" | "ONE_HOUR" | "SIX_HOURS"

local type JobStatus = "RUNNING" | "PAUSED" | "CANCELLED" | "COMPLETE" | "IDLE" | "USER_PAUSED"

local type ManagedDataIdentifierSelector = "ALL" | "EXCLUDE" | "INCLUDE" | "NONE" | "RECOMMENDED"

local type RelationshipStatus = "Enabled" | "Paused" | "Invited" | "Created" | "Removed" | "Resigned" | "EmailVerificationInProgress" | "EmailVerificationFailed" | "RegionDisabled" | "AccountSuspended"

local type AutomatedDiscoveryStatus = "ENABLED" | "DISABLED"

local type RevealRequestStatus = "SUCCESS" | "PROCESSING" | "ERROR"

local record M
    AcceptInvitationInput: AcceptInvitationInput
    AcceptInvitationOutput: AcceptInvitationOutput
    BatchGetCustomDataIdentifiersInput: BatchGetCustomDataIdentifiersInput
    BatchGetCustomDataIdentifiersOutput: BatchGetCustomDataIdentifiersOutput
    BatchUpdateAutomatedDiscoveryAccountsInput: BatchUpdateAutomatedDiscoveryAccountsInput
    BatchUpdateAutomatedDiscoveryAccountsOutput: BatchUpdateAutomatedDiscoveryAccountsOutput
    CreateAllowListInput: CreateAllowListInput
    CreateAllowListOutput: CreateAllowListOutput
    CreateClassificationJobInput: CreateClassificationJobInput
    CreateClassificationJobOutput: CreateClassificationJobOutput
    CreateCustomDataIdentifierInput: CreateCustomDataIdentifierInput
    CreateCustomDataIdentifierOutput: CreateCustomDataIdentifierOutput
    CreateFindingsFilterInput: CreateFindingsFilterInput
    CreateFindingsFilterOutput: CreateFindingsFilterOutput
    CreateInvitationsInput: CreateInvitationsInput
    CreateInvitationsOutput: CreateInvitationsOutput
    CreateMemberInput: CreateMemberInput
    CreateMemberOutput: CreateMemberOutput
    CreateSampleFindingsInput: CreateSampleFindingsInput
    CreateSampleFindingsOutput: CreateSampleFindingsOutput
    DeclineInvitationsInput: DeclineInvitationsInput
    DeclineInvitationsOutput: DeclineInvitationsOutput
    DeleteAllowListInput: DeleteAllowListInput
    DeleteAllowListOutput: DeleteAllowListOutput
    DeleteCustomDataIdentifierInput: DeleteCustomDataIdentifierInput
    DeleteCustomDataIdentifierOutput: DeleteCustomDataIdentifierOutput
    DeleteFindingsFilterInput: DeleteFindingsFilterInput
    DeleteFindingsFilterOutput: DeleteFindingsFilterOutput
    DeleteInvitationsInput: DeleteInvitationsInput
    DeleteInvitationsOutput: DeleteInvitationsOutput
    DeleteMemberInput: DeleteMemberInput
    DeleteMemberOutput: DeleteMemberOutput
    DescribeBucketsInput: DescribeBucketsInput
    DescribeBucketsOutput: DescribeBucketsOutput
    DescribeClassificationJobInput: DescribeClassificationJobInput
    DescribeClassificationJobOutput: DescribeClassificationJobOutput
    DescribeOrganizationConfigurationInput: DescribeOrganizationConfigurationInput
    DescribeOrganizationConfigurationOutput: DescribeOrganizationConfigurationOutput
    DisableMacieInput: DisableMacieInput
    DisableMacieOutput: DisableMacieOutput
    DisableOrganizationAdminAccountInput: DisableOrganizationAdminAccountInput
    DisableOrganizationAdminAccountOutput: DisableOrganizationAdminAccountOutput
    DisassociateFromAdministratorAccountInput: DisassociateFromAdministratorAccountInput
    DisassociateFromAdministratorAccountOutput: DisassociateFromAdministratorAccountOutput
    DisassociateFromMasterAccountInput: DisassociateFromMasterAccountInput
    DisassociateFromMasterAccountOutput: DisassociateFromMasterAccountOutput
    DisassociateMemberInput: DisassociateMemberInput
    DisassociateMemberOutput: DisassociateMemberOutput
    EnableMacieInput: EnableMacieInput
    EnableMacieOutput: EnableMacieOutput
    EnableOrganizationAdminAccountInput: EnableOrganizationAdminAccountInput
    EnableOrganizationAdminAccountOutput: EnableOrganizationAdminAccountOutput
    GetAdministratorAccountInput: GetAdministratorAccountInput
    GetAdministratorAccountOutput: GetAdministratorAccountOutput
    GetAllowListInput: GetAllowListInput
    GetAllowListOutput: GetAllowListOutput
    GetAutomatedDiscoveryConfigurationInput: GetAutomatedDiscoveryConfigurationInput
    GetAutomatedDiscoveryConfigurationOutput: GetAutomatedDiscoveryConfigurationOutput
    GetBucketStatisticsInput: GetBucketStatisticsInput
    GetBucketStatisticsOutput: GetBucketStatisticsOutput
    GetClassificationExportConfigurationInput: GetClassificationExportConfigurationInput
    GetClassificationExportConfigurationOutput: GetClassificationExportConfigurationOutput
    GetClassificationScopeInput: GetClassificationScopeInput
    GetClassificationScopeOutput: GetClassificationScopeOutput
    GetCustomDataIdentifierInput: GetCustomDataIdentifierInput
    GetCustomDataIdentifierOutput: GetCustomDataIdentifierOutput
    GetFindingsInput: GetFindingsInput
    GetFindingsOutput: GetFindingsOutput
    GetFindingsFilterInput: GetFindingsFilterInput
    GetFindingsFilterOutput: GetFindingsFilterOutput
    GetFindingsPublicationConfigurationInput: GetFindingsPublicationConfigurationInput
    GetFindingsPublicationConfigurationOutput: GetFindingsPublicationConfigurationOutput
    GetFindingStatisticsInput: GetFindingStatisticsInput
    GetFindingStatisticsOutput: GetFindingStatisticsOutput
    GetInvitationsCountInput: GetInvitationsCountInput
    GetInvitationsCountOutput: GetInvitationsCountOutput
    GetMacieSessionInput: GetMacieSessionInput
    GetMacieSessionOutput: GetMacieSessionOutput
    GetMasterAccountInput: GetMasterAccountInput
    GetMasterAccountOutput: GetMasterAccountOutput
    GetMemberInput: GetMemberInput
    GetMemberOutput: GetMemberOutput
    GetResourceProfileInput: GetResourceProfileInput
    GetResourceProfileOutput: GetResourceProfileOutput
    GetRevealConfigurationInput: GetRevealConfigurationInput
    GetRevealConfigurationOutput: GetRevealConfigurationOutput
    GetSensitiveDataOccurrencesInput: GetSensitiveDataOccurrencesInput
    GetSensitiveDataOccurrencesOutput: GetSensitiveDataOccurrencesOutput
    GetSensitiveDataOccurrencesAvailabilityInput: GetSensitiveDataOccurrencesAvailabilityInput
    GetSensitiveDataOccurrencesAvailabilityOutput: GetSensitiveDataOccurrencesAvailabilityOutput
    GetSensitivityInspectionTemplateInput: GetSensitivityInspectionTemplateInput
    GetSensitivityInspectionTemplateOutput: GetSensitivityInspectionTemplateOutput
    GetUsageStatisticsInput: GetUsageStatisticsInput
    GetUsageStatisticsOutput: GetUsageStatisticsOutput
    GetUsageTotalsInput: GetUsageTotalsInput
    GetUsageTotalsOutput: GetUsageTotalsOutput
    ListAllowListsInput: ListAllowListsInput
    ListAllowListsOutput: ListAllowListsOutput
    ListAutomatedDiscoveryAccountsInput: ListAutomatedDiscoveryAccountsInput
    ListAutomatedDiscoveryAccountsOutput: ListAutomatedDiscoveryAccountsOutput
    ListClassificationJobsInput: ListClassificationJobsInput
    ListClassificationJobsOutput: ListClassificationJobsOutput
    ListClassificationScopesInput: ListClassificationScopesInput
    ListClassificationScopesOutput: ListClassificationScopesOutput
    ListCustomDataIdentifiersInput: ListCustomDataIdentifiersInput
    ListCustomDataIdentifiersOutput: ListCustomDataIdentifiersOutput
    ListFindingsInput: ListFindingsInput
    ListFindingsOutput: ListFindingsOutput
    ListFindingsFiltersInput: ListFindingsFiltersInput
    ListFindingsFiltersOutput: ListFindingsFiltersOutput
    ListInvitationsInput: ListInvitationsInput
    ListInvitationsOutput: ListInvitationsOutput
    ListManagedDataIdentifiersInput: ListManagedDataIdentifiersInput
    ListManagedDataIdentifiersOutput: ListManagedDataIdentifiersOutput
    ListMembersInput: ListMembersInput
    ListMembersOutput: ListMembersOutput
    ListOrganizationAdminAccountsInput: ListOrganizationAdminAccountsInput
    ListOrganizationAdminAccountsOutput: ListOrganizationAdminAccountsOutput
    ListResourceProfileArtifactsInput: ListResourceProfileArtifactsInput
    ListResourceProfileArtifactsOutput: ListResourceProfileArtifactsOutput
    ListResourceProfileDetectionsInput: ListResourceProfileDetectionsInput
    ListResourceProfileDetectionsOutput: ListResourceProfileDetectionsOutput
    ListSensitivityInspectionTemplatesInput: ListSensitivityInspectionTemplatesInput
    ListSensitivityInspectionTemplatesOutput: ListSensitivityInspectionTemplatesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutClassificationExportConfigurationInput: PutClassificationExportConfigurationInput
    PutClassificationExportConfigurationOutput: PutClassificationExportConfigurationOutput
    PutFindingsPublicationConfigurationInput: PutFindingsPublicationConfigurationInput
    PutFindingsPublicationConfigurationOutput: PutFindingsPublicationConfigurationOutput
    SearchResourcesInput: SearchResourcesInput
    SearchResourcesOutput: SearchResourcesOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TestCustomDataIdentifierInput: TestCustomDataIdentifierInput
    TestCustomDataIdentifierOutput: TestCustomDataIdentifierOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAllowListInput: UpdateAllowListInput
    UpdateAllowListOutput: UpdateAllowListOutput
    UpdateAutomatedDiscoveryConfigurationInput: UpdateAutomatedDiscoveryConfigurationInput
    UpdateAutomatedDiscoveryConfigurationOutput: UpdateAutomatedDiscoveryConfigurationOutput
    UpdateClassificationJobInput: UpdateClassificationJobInput
    UpdateClassificationJobOutput: UpdateClassificationJobOutput
    UpdateClassificationScopeInput: UpdateClassificationScopeInput
    UpdateClassificationScopeOutput: UpdateClassificationScopeOutput
    UpdateFindingsFilterInput: UpdateFindingsFilterInput
    UpdateFindingsFilterOutput: UpdateFindingsFilterOutput
    UpdateMacieSessionInput: UpdateMacieSessionInput
    UpdateMacieSessionOutput: UpdateMacieSessionOutput
    UpdateMemberSessionInput: UpdateMemberSessionInput
    UpdateMemberSessionOutput: UpdateMemberSessionOutput
    UpdateOrganizationConfigurationInput: UpdateOrganizationConfigurationInput
    UpdateOrganizationConfigurationOutput: UpdateOrganizationConfigurationOutput
    UpdateResourceProfileInput: UpdateResourceProfileInput
    UpdateResourceProfileOutput: UpdateResourceProfileOutput
    UpdateResourceProfileDetectionsInput: UpdateResourceProfileDetectionsInput
    UpdateResourceProfileDetectionsOutput: UpdateResourceProfileDetectionsOutput
    UpdateRevealConfigurationInput: UpdateRevealConfigurationInput
    UpdateRevealConfigurationOutput: UpdateRevealConfigurationOutput
    UpdateSensitivityInspectionTemplateInput: UpdateSensitivityInspectionTemplateInput
    UpdateSensitivityInspectionTemplateOutput: UpdateSensitivityInspectionTemplateOutput
end

return M
