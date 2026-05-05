local record AssociateMemberInput
    accountId: string
end

local record AssociateMemberOutput
    accountId: string
end

local record BatchAssociateCodeSecurityScanConfigurationInput
    associateConfigurationRequests: {AssociateConfigurationRequest}
end

local record BatchAssociateCodeSecurityScanConfigurationOutput
    failedAssociations: {FailedAssociationResult}
    successfulAssociations: {SuccessfulAssociationResult}
end

local record BatchDisassociateCodeSecurityScanConfigurationInput
    disassociateConfigurationRequests: {DisassociateConfigurationRequest}
end

local record BatchDisassociateCodeSecurityScanConfigurationOutput
    failedAssociations: {FailedAssociationResult}
    successfulAssociations: {SuccessfulAssociationResult}
end

local record BatchGetAccountStatusInput
    accountIds: {string}
end

local record BatchGetAccountStatusOutput
    accounts: {AccountState}
    failedAccounts: {FailedAccount}
end

local record BatchGetCodeSnippetInput
    findingArns: {string}
end

local record BatchGetCodeSnippetOutput
    codeSnippetResults: {CodeSnippetResult}
    errors: {CodeSnippetError}
end

local record BatchGetFindingDetailsInput
    findingArns: {string}
end

local record BatchGetFindingDetailsOutput
    findingDetails: {FindingDetail}
    errors: {FindingDetailsError}
end

local record BatchGetFreeTrialInfoInput
    accountIds: {string}
end

local record BatchGetFreeTrialInfoOutput
    accounts: {FreeTrialAccountInfo}
    failedAccounts: {FreeTrialInfoError}
end

local record BatchGetMemberEc2DeepInspectionStatusInput
    accountIds: {string}
end

local record BatchGetMemberEc2DeepInspectionStatusOutput
    accountIds: {MemberAccountEc2DeepInspectionStatusState}
    failedAccountIds: {FailedMemberAccountEc2DeepInspectionStatusState}
end

local record BatchUpdateMemberEc2DeepInspectionStatusInput
    accountIds: {MemberAccountEc2DeepInspectionStatus}
end

local record BatchUpdateMemberEc2DeepInspectionStatusOutput
    accountIds: {MemberAccountEc2DeepInspectionStatusState}
    failedAccountIds: {FailedMemberAccountEc2DeepInspectionStatusState}
end

local record CancelFindingsReportInput
    reportId: string
end

local record CancelFindingsReportOutput
    reportId: string
end

local record CancelSbomExportInput
    reportId: string
end

local record CancelSbomExportOutput
    reportId: string
end

local record CreateCisScanConfigurationInput
    scanName: string
    securityLevel: string
    schedule: Schedule
    targets: CreateCisTargets
    tags: {string : string}
end

local record CreateCisScanConfigurationOutput
    scanConfigurationArn: string
end

local record CreateCodeSecurityIntegrationInput
    name: string
    type: string
    details: CreateIntegrationDetail
    tags: {string : string}
end

local record CreateCodeSecurityIntegrationOutput
    integrationArn: string
    status: string
    authorizationUrl: string
end

local record CreateCodeSecurityScanConfigurationInput
    name: string
    level: string
    configuration: CodeSecurityScanConfiguration
    scopeSettings: ScopeSettings
    tags: {string : string}
end

local record CreateCodeSecurityScanConfigurationOutput
    scanConfigurationArn: string
end

local record CreateFilterInput
    action: string
    description: string
    filterCriteria: FilterCriteria
    name: string
    tags: {string : string}
    reason: string
end

local record CreateFilterOutput
    arn: string
end

local record CreateFindingsReportInput
    filterCriteria: FilterCriteria
    reportFormat: string
    s3Destination: Destination
end

local record CreateFindingsReportOutput
    reportId: string
end

local record CreateSbomExportInput
    resourceFilterCriteria: ResourceFilterCriteria
    reportFormat: string
    s3Destination: Destination
end

local record CreateSbomExportOutput
    reportId: string
end

local record DeleteCisScanConfigurationInput
    scanConfigurationArn: string
end

local record DeleteCisScanConfigurationOutput
    scanConfigurationArn: string
end

local record DeleteCodeSecurityIntegrationInput
    integrationArn: string
end

local record DeleteCodeSecurityIntegrationOutput
    integrationArn: string
end

local record DeleteCodeSecurityScanConfigurationInput
    scanConfigurationArn: string
end

local record DeleteCodeSecurityScanConfigurationOutput
    scanConfigurationArn: string
end

local record DeleteFilterInput
    arn: string
end

local record DeleteFilterOutput
    arn: string
end

local record DescribeOrganizationConfigurationInput
end

local record DescribeOrganizationConfigurationOutput
    autoEnable: AutoEnable
    maxAccountLimitReached: boolean
end

local record DisableInput
    accountIds: {string}
    resourceTypes: {string}
end

local record DisableOutput
    accounts: {Account}
    failedAccounts: {FailedAccount}
end

local record DisableDelegatedAdminAccountInput
    delegatedAdminAccountId: string
end

local record DisableDelegatedAdminAccountOutput
    delegatedAdminAccountId: string
end

local record DisassociateMemberInput
    accountId: string
end

local record DisassociateMemberOutput
    accountId: string
end

local record EnableInput
    accountIds: {string}
    resourceTypes: {string}
    clientToken: string
end

local record EnableOutput
    accounts: {Account}
    failedAccounts: {FailedAccount}
end

local record EnableDelegatedAdminAccountInput
    delegatedAdminAccountId: string
    clientToken: string
end

local record EnableDelegatedAdminAccountOutput
    delegatedAdminAccountId: string
end

local record GetCisScanReportInput
    scanArn: string
    targetAccounts: {string}
    reportFormat: string
end

local record GetCisScanReportOutput
    url: string
    status: string
end

local record GetCisScanResultDetailsInput
    scanArn: string
    targetResourceId: string
    accountId: string
    filterCriteria: CisScanResultDetailsFilterCriteria
    sortBy: string
    sortOrder: string
    nextToken: string
    maxResults: number
end

local record GetCisScanResultDetailsOutput
    scanResultDetails: {CisScanResultDetails}
    nextToken: string
end

local record GetClustersForImageInput
    filter: ClusterForImageFilterCriteria
    maxResults: number
    nextToken: string
end

local record GetClustersForImageOutput
    cluster: {ClusterInformation}
    nextToken: string
end

local record GetCodeSecurityIntegrationInput
    integrationArn: string
    tags: {string : string}
end

local record GetCodeSecurityIntegrationOutput
    integrationArn: string
    name: string
    type: string
    status: string
    statusReason: string
    createdOn: number
    lastUpdateOn: number
    tags: {string : string}
    authorizationUrl: string
end

local record GetCodeSecurityScanInput
    resource: CodeSecurityResource
    scanId: string
end

local record GetCodeSecurityScanOutput
    scanId: string
    resource: CodeSecurityResource
    accountId: string
    status: string
    statusReason: string
    createdAt: number
    updatedAt: number
    lastCommitId: string
end

local record GetCodeSecurityScanConfigurationInput
    scanConfigurationArn: string
end

local record GetCodeSecurityScanConfigurationOutput
    scanConfigurationArn: string
    name: string
    configuration: CodeSecurityScanConfiguration
    level: string
    scopeSettings: ScopeSettings
    createdAt: number
    lastUpdatedAt: number
    tags: {string : string}
end

local record GetConfigurationInput
end

local record GetConfigurationOutput
    ecrConfiguration: EcrConfigurationState
    ec2Configuration: Ec2ConfigurationState
end

local record GetDelegatedAdminAccountInput
end

local record GetDelegatedAdminAccountOutput
    delegatedAdmin: DelegatedAdmin
end

local record GetEc2DeepInspectionConfigurationInput
end

local record GetEc2DeepInspectionConfigurationOutput
    packagePaths: {string}
    orgPackagePaths: {string}
    status: string
    errorMessage: string
end

local record GetEncryptionKeyInput
    scanType: string
    resourceType: string
end

local record GetEncryptionKeyOutput
    kmsKeyId: string
end

local record GetFindingsReportStatusInput
    reportId: string
end

local record GetFindingsReportStatusOutput
    reportId: string
    status: string
    errorCode: string
    errorMessage: string
    destination: Destination
    filterCriteria: FilterCriteria
end

local record GetMemberInput
    accountId: string
end

local record GetMemberOutput
    member: Member
end

local record GetSbomExportInput
    reportId: string
end

local record GetSbomExportOutput
    reportId: string
    format: string
    status: string
    errorCode: string
    errorMessage: string
    s3Destination: Destination
    filterCriteria: ResourceFilterCriteria
end

local record ListAccountPermissionsInput
    service: string
    maxResults: number
    nextToken: string
end

local record ListAccountPermissionsOutput
    permissions: {Permission}
    nextToken: string
end

local record ListCisScanConfigurationsInput
    filterCriteria: ListCisScanConfigurationsFilterCriteria
    sortBy: string
    sortOrder: string
    nextToken: string
    maxResults: number
end

local record ListCisScanConfigurationsOutput
    scanConfigurations: {CisScanConfiguration}
    nextToken: string
end

local record ListCisScanResultsAggregatedByChecksInput
    scanArn: string
    filterCriteria: CisScanResultsAggregatedByChecksFilterCriteria
    sortBy: string
    sortOrder: string
    nextToken: string
    maxResults: number
end

local record ListCisScanResultsAggregatedByChecksOutput
    checkAggregations: {CisCheckAggregation}
    nextToken: string
end

local record ListCisScanResultsAggregatedByTargetResourceInput
    scanArn: string
    filterCriteria: CisScanResultsAggregatedByTargetResourceFilterCriteria
    sortBy: string
    sortOrder: string
    nextToken: string
    maxResults: number
end

local record ListCisScanResultsAggregatedByTargetResourceOutput
    targetResourceAggregations: {CisTargetResourceAggregation}
    nextToken: string
end

local record ListCisScansInput
    filterCriteria: ListCisScansFilterCriteria
    detailLevel: string
    sortBy: string
    sortOrder: string
    nextToken: string
    maxResults: number
end

local record ListCisScansOutput
    scans: {CisScan}
    nextToken: string
end

local record ListCodeSecurityIntegrationsInput
    nextToken: string
    maxResults: number
end

local record ListCodeSecurityIntegrationsOutput
    integrations: {CodeSecurityIntegrationSummary}
    nextToken: string
end

local record ListCodeSecurityScanConfigurationAssociationsInput
    scanConfigurationArn: string
    nextToken: string
    maxResults: number
end

local record ListCodeSecurityScanConfigurationAssociationsOutput
    associations: {CodeSecurityScanConfigurationAssociationSummary}
    nextToken: string
end

local record ListCodeSecurityScanConfigurationsInput
    nextToken: string
    maxResults: number
end

local record ListCodeSecurityScanConfigurationsOutput
    configurations: {CodeSecurityScanConfigurationSummary}
    nextToken: string
end

local record ListCoverageInput
    maxResults: number
    nextToken: string
    filterCriteria: CoverageFilterCriteria
end

local record ListCoverageOutput
    nextToken: string
    coveredResources: {CoveredResource}
end

local record ListCoverageStatisticsInput
    filterCriteria: CoverageFilterCriteria
    groupBy: string
    nextToken: string
end

local record ListCoverageStatisticsOutput
    countsByGroup: {Counts}
    totalCounts: number
    nextToken: string
end

local record ListDelegatedAdminAccountsInput
    maxResults: number
    nextToken: string
end

local record ListDelegatedAdminAccountsOutput
    delegatedAdminAccounts: {DelegatedAdminAccount}
    nextToken: string
end

local record ListFiltersInput
    arns: {string}
    action: string
    nextToken: string
    maxResults: number
end

local record ListFiltersOutput
    filters: {Filter}
    nextToken: string
end

local record ListFindingAggregationsInput
    aggregationType: string
    nextToken: string
    maxResults: number
    accountIds: {StringFilter}
    aggregationRequest: AggregationRequest
end

local record ListFindingAggregationsOutput
    aggregationType: string
    responses: {AggregationResponse}
    nextToken: string
end

local record ListFindingsInput
    maxResults: number
    nextToken: string
    filterCriteria: FilterCriteria
    sortCriteria: SortCriteria
end

local record ListFindingsOutput
    nextToken: string
    findings: {Finding}
end

local record ListMembersInput
    onlyAssociated: boolean
    maxResults: number
    nextToken: string
end

local record ListMembersOutput
    members: {Member}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListUsageTotalsInput
    maxResults: number
    nextToken: string
    accountIds: {string}
end

local record ListUsageTotalsOutput
    nextToken: string
    totals: {UsageTotal}
end

local record ResetEncryptionKeyInput
    scanType: string
    resourceType: string
end

local record ResetEncryptionKeyOutput
end

local record SearchVulnerabilitiesInput
    filterCriteria: SearchVulnerabilitiesFilterCriteria
    nextToken: string
end

local record SearchVulnerabilitiesOutput
    vulnerabilities: {Vulnerability}
    nextToken: string
end

local record SendCisSessionHealthInput
    scanJobId: string
    sessionToken: string
end

local record SendCisSessionHealthOutput
end

local record SendCisSessionTelemetryInput
    scanJobId: string
    sessionToken: string
    messages: {CisSessionMessage}
end

local record SendCisSessionTelemetryOutput
end

local record StartCisSessionInput
    scanJobId: string
    message: StartCisSessionMessage
end

local record StartCisSessionOutput
end

local record StartCodeSecurityScanInput
    clientToken: string
    resource: CodeSecurityResource
end

local record StartCodeSecurityScanOutput
    scanId: string
    status: string
end

local record StopCisSessionInput
    scanJobId: string
    sessionToken: string
    message: StopCisSessionMessage
end

local record StopCisSessionOutput
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateCisScanConfigurationInput
    scanConfigurationArn: string
    scanName: string
    securityLevel: string
    schedule: Schedule
    targets: UpdateCisTargets
end

local record UpdateCisScanConfigurationOutput
    scanConfigurationArn: string
end

local record UpdateCodeSecurityIntegrationInput
    integrationArn: string
    details: UpdateIntegrationDetails
end

local record UpdateCodeSecurityIntegrationOutput
    integrationArn: string
    status: string
end

local record UpdateCodeSecurityScanConfigurationInput
    scanConfigurationArn: string
    configuration: CodeSecurityScanConfiguration
end

local record UpdateCodeSecurityScanConfigurationOutput
    scanConfigurationArn: string
end

local record UpdateConfigurationInput
    ecrConfiguration: EcrConfiguration
    ec2Configuration: Ec2Configuration
end

local record UpdateConfigurationOutput
end

local record UpdateEc2DeepInspectionConfigurationInput
    activateDeepInspection: boolean
    packagePaths: {string}
end

local record UpdateEc2DeepInspectionConfigurationOutput
    packagePaths: {string}
    orgPackagePaths: {string}
    status: string
    errorMessage: string
end

local record UpdateEncryptionKeyInput
    kmsKeyId: string
    scanType: string
    resourceType: string
end

local record UpdateEncryptionKeyOutput
end

local record UpdateFilterInput
    action: string
    description: string
    filterCriteria: FilterCriteria
    name: string
    filterArn: string
    reason: string
end

local record UpdateFilterOutput
    arn: string
end

local record UpdateOrganizationConfigurationInput
    autoEnable: AutoEnable
end

local record UpdateOrganizationConfigurationOutput
    autoEnable: AutoEnable
end

local record UpdateOrgEc2DeepInspectionConfigurationInput
    orgPackagePaths: {string}
end

local record UpdateOrgEc2DeepInspectionConfigurationOutput
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record BadRequestException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local type CisScanResultsAggregatedByChecksSortBy = "CHECK_ID" | "TITLE" | "PLATFORM" | "FAILED_COUNTS" | "SECURITY_LEVEL"

local type CisScanConfigurationsSortBy = "SCAN_NAME" | "SCAN_CONFIGURATION_ARN"

local type CisScanResultDetailsSortBy = "CHECK_ID" | "STATUS"

local type IntegrationType = "GITLAB_SELF_MANAGED" | "GITHUB"

local type CisReportFormat = "PDF" | "CSV"

local type CisScanResultsAggregatedByTargetResourceSortBy = "RESOURCE_ID" | "FAILED_COUNTS" | "ACCOUNT_ID" | "PLATFORM" | "TARGET_STATUS" | "TARGET_STATUS_REASON"

local type CisSecurityLevel = "LEVEL_1" | "LEVEL_2"

local type CisReportStatus = "SUCCEEDED" | "FAILED" | "IN_PROGRESS"

local type CodeScanStatus = "IN_PROGRESS" | "SUCCESSFUL" | "FAILED" | "SKIPPED"

local type ConfigurationLevel = "ORGANIZATION" | "ACCOUNT"

local type IntegrationStatus = "PENDING" | "IN_PROGRESS" | "ACTIVE" | "INACTIVE" | "DISABLING"

local type ListCisScansSortBy = "STATUS" | "SCHEDULED_BY" | "SCAN_START_DATE" | "FAILED_CHECKS"

local type ListCisScansDetailLevel = "ORGANIZATION" | "MEMBER"

local type CisSortOrder = "ASC" | "DESC"

local record M
    AssociateMemberInput: AssociateMemberInput
    AssociateMemberOutput: AssociateMemberOutput
    BatchAssociateCodeSecurityScanConfigurationInput: BatchAssociateCodeSecurityScanConfigurationInput
    BatchAssociateCodeSecurityScanConfigurationOutput: BatchAssociateCodeSecurityScanConfigurationOutput
    BatchDisassociateCodeSecurityScanConfigurationInput: BatchDisassociateCodeSecurityScanConfigurationInput
    BatchDisassociateCodeSecurityScanConfigurationOutput: BatchDisassociateCodeSecurityScanConfigurationOutput
    BatchGetAccountStatusInput: BatchGetAccountStatusInput
    BatchGetAccountStatusOutput: BatchGetAccountStatusOutput
    BatchGetCodeSnippetInput: BatchGetCodeSnippetInput
    BatchGetCodeSnippetOutput: BatchGetCodeSnippetOutput
    BatchGetFindingDetailsInput: BatchGetFindingDetailsInput
    BatchGetFindingDetailsOutput: BatchGetFindingDetailsOutput
    BatchGetFreeTrialInfoInput: BatchGetFreeTrialInfoInput
    BatchGetFreeTrialInfoOutput: BatchGetFreeTrialInfoOutput
    BatchGetMemberEc2DeepInspectionStatusInput: BatchGetMemberEc2DeepInspectionStatusInput
    BatchGetMemberEc2DeepInspectionStatusOutput: BatchGetMemberEc2DeepInspectionStatusOutput
    BatchUpdateMemberEc2DeepInspectionStatusInput: BatchUpdateMemberEc2DeepInspectionStatusInput
    BatchUpdateMemberEc2DeepInspectionStatusOutput: BatchUpdateMemberEc2DeepInspectionStatusOutput
    CancelFindingsReportInput: CancelFindingsReportInput
    CancelFindingsReportOutput: CancelFindingsReportOutput
    CancelSbomExportInput: CancelSbomExportInput
    CancelSbomExportOutput: CancelSbomExportOutput
    CreateCisScanConfigurationInput: CreateCisScanConfigurationInput
    CreateCisScanConfigurationOutput: CreateCisScanConfigurationOutput
    CreateCodeSecurityIntegrationInput: CreateCodeSecurityIntegrationInput
    CreateCodeSecurityIntegrationOutput: CreateCodeSecurityIntegrationOutput
    CreateCodeSecurityScanConfigurationInput: CreateCodeSecurityScanConfigurationInput
    CreateCodeSecurityScanConfigurationOutput: CreateCodeSecurityScanConfigurationOutput
    CreateFilterInput: CreateFilterInput
    CreateFilterOutput: CreateFilterOutput
    CreateFindingsReportInput: CreateFindingsReportInput
    CreateFindingsReportOutput: CreateFindingsReportOutput
    CreateSbomExportInput: CreateSbomExportInput
    CreateSbomExportOutput: CreateSbomExportOutput
    DeleteCisScanConfigurationInput: DeleteCisScanConfigurationInput
    DeleteCisScanConfigurationOutput: DeleteCisScanConfigurationOutput
    DeleteCodeSecurityIntegrationInput: DeleteCodeSecurityIntegrationInput
    DeleteCodeSecurityIntegrationOutput: DeleteCodeSecurityIntegrationOutput
    DeleteCodeSecurityScanConfigurationInput: DeleteCodeSecurityScanConfigurationInput
    DeleteCodeSecurityScanConfigurationOutput: DeleteCodeSecurityScanConfigurationOutput
    DeleteFilterInput: DeleteFilterInput
    DeleteFilterOutput: DeleteFilterOutput
    DescribeOrganizationConfigurationInput: DescribeOrganizationConfigurationInput
    DescribeOrganizationConfigurationOutput: DescribeOrganizationConfigurationOutput
    DisableInput: DisableInput
    DisableOutput: DisableOutput
    DisableDelegatedAdminAccountInput: DisableDelegatedAdminAccountInput
    DisableDelegatedAdminAccountOutput: DisableDelegatedAdminAccountOutput
    DisassociateMemberInput: DisassociateMemberInput
    DisassociateMemberOutput: DisassociateMemberOutput
    EnableInput: EnableInput
    EnableOutput: EnableOutput
    EnableDelegatedAdminAccountInput: EnableDelegatedAdminAccountInput
    EnableDelegatedAdminAccountOutput: EnableDelegatedAdminAccountOutput
    GetCisScanReportInput: GetCisScanReportInput
    GetCisScanReportOutput: GetCisScanReportOutput
    GetCisScanResultDetailsInput: GetCisScanResultDetailsInput
    GetCisScanResultDetailsOutput: GetCisScanResultDetailsOutput
    GetClustersForImageInput: GetClustersForImageInput
    GetClustersForImageOutput: GetClustersForImageOutput
    GetCodeSecurityIntegrationInput: GetCodeSecurityIntegrationInput
    GetCodeSecurityIntegrationOutput: GetCodeSecurityIntegrationOutput
    GetCodeSecurityScanInput: GetCodeSecurityScanInput
    GetCodeSecurityScanOutput: GetCodeSecurityScanOutput
    GetCodeSecurityScanConfigurationInput: GetCodeSecurityScanConfigurationInput
    GetCodeSecurityScanConfigurationOutput: GetCodeSecurityScanConfigurationOutput
    GetConfigurationInput: GetConfigurationInput
    GetConfigurationOutput: GetConfigurationOutput
    GetDelegatedAdminAccountInput: GetDelegatedAdminAccountInput
    GetDelegatedAdminAccountOutput: GetDelegatedAdminAccountOutput
    GetEc2DeepInspectionConfigurationInput: GetEc2DeepInspectionConfigurationInput
    GetEc2DeepInspectionConfigurationOutput: GetEc2DeepInspectionConfigurationOutput
    GetEncryptionKeyInput: GetEncryptionKeyInput
    GetEncryptionKeyOutput: GetEncryptionKeyOutput
    GetFindingsReportStatusInput: GetFindingsReportStatusInput
    GetFindingsReportStatusOutput: GetFindingsReportStatusOutput
    GetMemberInput: GetMemberInput
    GetMemberOutput: GetMemberOutput
    GetSbomExportInput: GetSbomExportInput
    GetSbomExportOutput: GetSbomExportOutput
    ListAccountPermissionsInput: ListAccountPermissionsInput
    ListAccountPermissionsOutput: ListAccountPermissionsOutput
    ListCisScanConfigurationsInput: ListCisScanConfigurationsInput
    ListCisScanConfigurationsOutput: ListCisScanConfigurationsOutput
    ListCisScanResultsAggregatedByChecksInput: ListCisScanResultsAggregatedByChecksInput
    ListCisScanResultsAggregatedByChecksOutput: ListCisScanResultsAggregatedByChecksOutput
    ListCisScanResultsAggregatedByTargetResourceInput: ListCisScanResultsAggregatedByTargetResourceInput
    ListCisScanResultsAggregatedByTargetResourceOutput: ListCisScanResultsAggregatedByTargetResourceOutput
    ListCisScansInput: ListCisScansInput
    ListCisScansOutput: ListCisScansOutput
    ListCodeSecurityIntegrationsInput: ListCodeSecurityIntegrationsInput
    ListCodeSecurityIntegrationsOutput: ListCodeSecurityIntegrationsOutput
    ListCodeSecurityScanConfigurationAssociationsInput: ListCodeSecurityScanConfigurationAssociationsInput
    ListCodeSecurityScanConfigurationAssociationsOutput: ListCodeSecurityScanConfigurationAssociationsOutput
    ListCodeSecurityScanConfigurationsInput: ListCodeSecurityScanConfigurationsInput
    ListCodeSecurityScanConfigurationsOutput: ListCodeSecurityScanConfigurationsOutput
    ListCoverageInput: ListCoverageInput
    ListCoverageOutput: ListCoverageOutput
    ListCoverageStatisticsInput: ListCoverageStatisticsInput
    ListCoverageStatisticsOutput: ListCoverageStatisticsOutput
    ListDelegatedAdminAccountsInput: ListDelegatedAdminAccountsInput
    ListDelegatedAdminAccountsOutput: ListDelegatedAdminAccountsOutput
    ListFiltersInput: ListFiltersInput
    ListFiltersOutput: ListFiltersOutput
    ListFindingAggregationsInput: ListFindingAggregationsInput
    ListFindingAggregationsOutput: ListFindingAggregationsOutput
    ListFindingsInput: ListFindingsInput
    ListFindingsOutput: ListFindingsOutput
    ListMembersInput: ListMembersInput
    ListMembersOutput: ListMembersOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListUsageTotalsInput: ListUsageTotalsInput
    ListUsageTotalsOutput: ListUsageTotalsOutput
    ResetEncryptionKeyInput: ResetEncryptionKeyInput
    ResetEncryptionKeyOutput: ResetEncryptionKeyOutput
    SearchVulnerabilitiesInput: SearchVulnerabilitiesInput
    SearchVulnerabilitiesOutput: SearchVulnerabilitiesOutput
    SendCisSessionHealthInput: SendCisSessionHealthInput
    SendCisSessionHealthOutput: SendCisSessionHealthOutput
    SendCisSessionTelemetryInput: SendCisSessionTelemetryInput
    SendCisSessionTelemetryOutput: SendCisSessionTelemetryOutput
    StartCisSessionInput: StartCisSessionInput
    StartCisSessionOutput: StartCisSessionOutput
    StartCodeSecurityScanInput: StartCodeSecurityScanInput
    StartCodeSecurityScanOutput: StartCodeSecurityScanOutput
    StopCisSessionInput: StopCisSessionInput
    StopCisSessionOutput: StopCisSessionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateCisScanConfigurationInput: UpdateCisScanConfigurationInput
    UpdateCisScanConfigurationOutput: UpdateCisScanConfigurationOutput
    UpdateCodeSecurityIntegrationInput: UpdateCodeSecurityIntegrationInput
    UpdateCodeSecurityIntegrationOutput: UpdateCodeSecurityIntegrationOutput
    UpdateCodeSecurityScanConfigurationInput: UpdateCodeSecurityScanConfigurationInput
    UpdateCodeSecurityScanConfigurationOutput: UpdateCodeSecurityScanConfigurationOutput
    UpdateConfigurationInput: UpdateConfigurationInput
    UpdateConfigurationOutput: UpdateConfigurationOutput
    UpdateEc2DeepInspectionConfigurationInput: UpdateEc2DeepInspectionConfigurationInput
    UpdateEc2DeepInspectionConfigurationOutput: UpdateEc2DeepInspectionConfigurationOutput
    UpdateEncryptionKeyInput: UpdateEncryptionKeyInput
    UpdateEncryptionKeyOutput: UpdateEncryptionKeyOutput
    UpdateFilterInput: UpdateFilterInput
    UpdateFilterOutput: UpdateFilterOutput
    UpdateOrganizationConfigurationInput: UpdateOrganizationConfigurationInput
    UpdateOrganizationConfigurationOutput: UpdateOrganizationConfigurationOutput
    UpdateOrgEc2DeepInspectionConfigurationInput: UpdateOrgEc2DeepInspectionConfigurationInput
    UpdateOrgEc2DeepInspectionConfigurationOutput: UpdateOrgEc2DeepInspectionConfigurationOutput
end

return M
