local record AcceptAdministratorInvitationInput
    DetectorId: string
    AdministratorId: string
    InvitationId: string
end

local record AcceptAdministratorInvitationOutput
end

local record AcceptInvitationInput
    DetectorId: string
    MasterId: string
    InvitationId: string
end

local record AcceptInvitationOutput
end

local record ArchiveFindingsInput
    DetectorId: string
    FindingIds: {string}
end

local record ArchiveFindingsOutput
end

local record CreateDetectorInput
    Enable: boolean
    ClientToken: string
    FindingPublishingFrequency: string
    DataSources: DataSourceConfigurations
    Tags: {string : string}
    Features: {DetectorFeatureConfiguration}
end

local record CreateDetectorOutput
    DetectorId: string
    UnprocessedDataSources: UnprocessedDataSourcesResult
end

local record CreateFilterInput
    DetectorId: string
    Name: string
    Description: string
    Action: string
    Rank: number
    FindingCriteria: FindingCriteria
    ClientToken: string
    Tags: {string : string}
end

local record CreateFilterOutput
    Name: string
end

local record CreateIPSetInput
    DetectorId: string
    Name: string
    Format: string
    Location: string
    Activate: boolean
    ClientToken: string
    Tags: {string : string}
    ExpectedBucketOwner: string
end

local record CreateIPSetOutput
    IpSetId: string
end

local record CreateMalwareProtectionPlanInput
    ClientToken: string
    Role: string
    ProtectedResource: CreateProtectedResource
    Actions: MalwareProtectionPlanActions
    Tags: {string : string}
end

local record CreateMalwareProtectionPlanOutput
    MalwareProtectionPlanId: string
end

local record CreateMembersInput
    DetectorId: string
    AccountDetails: {AccountDetail}
end

local record CreateMembersOutput
    UnprocessedAccounts: {UnprocessedAccount}
end

local record CreatePublishingDestinationInput
    DetectorId: string
    DestinationType: string
    DestinationProperties: DestinationProperties
    ClientToken: string
    Tags: {string : string}
end

local record CreatePublishingDestinationOutput
    DestinationId: string
end

local record CreateSampleFindingsInput
    DetectorId: string
    FindingTypes: {string}
end

local record CreateSampleFindingsOutput
end

local record CreateThreatEntitySetInput
    DetectorId: string
    Name: string
    Format: string
    Location: string
    ExpectedBucketOwner: string
    Activate: boolean
    ClientToken: string
    Tags: {string : string}
end

local record CreateThreatEntitySetOutput
    ThreatEntitySetId: string
end

local record CreateThreatIntelSetInput
    DetectorId: string
    Name: string
    Format: string
    Location: string
    Activate: boolean
    ClientToken: string
    Tags: {string : string}
    ExpectedBucketOwner: string
end

local record CreateThreatIntelSetOutput
    ThreatIntelSetId: string
end

local record CreateTrustedEntitySetInput
    DetectorId: string
    Name: string
    Format: string
    Location: string
    ExpectedBucketOwner: string
    Activate: boolean
    ClientToken: string
    Tags: {string : string}
end

local record CreateTrustedEntitySetOutput
    TrustedEntitySetId: string
end

local record DeclineInvitationsInput
    AccountIds: {string}
end

local record DeclineInvitationsOutput
    UnprocessedAccounts: {UnprocessedAccount}
end

local record DeleteDetectorInput
    DetectorId: string
end

local record DeleteDetectorOutput
end

local record DeleteFilterInput
    DetectorId: string
    FilterName: string
end

local record DeleteFilterOutput
end

local record DeleteInvitationsInput
    AccountIds: {string}
end

local record DeleteInvitationsOutput
    UnprocessedAccounts: {UnprocessedAccount}
end

local record DeleteIPSetInput
    DetectorId: string
    IpSetId: string
end

local record DeleteIPSetOutput
end

local record DeleteMalwareProtectionPlanInput
    MalwareProtectionPlanId: string
end

local record DeleteMalwareProtectionPlanOutput
end

local record DeleteMembersInput
    DetectorId: string
    AccountIds: {string}
end

local record DeleteMembersOutput
    UnprocessedAccounts: {UnprocessedAccount}
end

local record DeletePublishingDestinationInput
    DetectorId: string
    DestinationId: string
end

local record DeletePublishingDestinationOutput
end

local record DeleteThreatEntitySetInput
    DetectorId: string
    ThreatEntitySetId: string
end

local record DeleteThreatEntitySetOutput
end

local record DeleteThreatIntelSetInput
    DetectorId: string
    ThreatIntelSetId: string
end

local record DeleteThreatIntelSetOutput
end

local record DeleteTrustedEntitySetInput
    DetectorId: string
    TrustedEntitySetId: string
end

local record DeleteTrustedEntitySetOutput
end

local record DescribeMalwareScansInput
    DetectorId: string
    NextToken: string
    MaxResults: number
    FilterCriteria: FilterCriteria
    SortCriteria: SortCriteria
end

local record DescribeMalwareScansOutput
    Scans: {Scan}
    NextToken: string
end

local record DescribeOrganizationConfigurationInput
    DetectorId: string
    MaxResults: number
    NextToken: string
end

local record DescribeOrganizationConfigurationOutput
    AutoEnable: boolean
    MemberAccountLimitReached: boolean
    DataSources: OrganizationDataSourceConfigurationsResult
    Features: {OrganizationFeatureConfigurationResult}
    NextToken: string
    AutoEnableOrganizationMembers: string
end

local record DescribePublishingDestinationInput
    DetectorId: string
    DestinationId: string
end

local record DescribePublishingDestinationOutput
    DestinationId: string
    DestinationType: string
    Status: string
    PublishingFailureStartTimestamp: number
    DestinationProperties: DestinationProperties
    Tags: {string : string}
end

local record DisableOrganizationAdminAccountInput
    AdminAccountId: string
end

local record DisableOrganizationAdminAccountOutput
end

local record DisassociateFromAdministratorAccountInput
    DetectorId: string
end

local record DisassociateFromAdministratorAccountOutput
end

local record DisassociateFromMasterAccountInput
    DetectorId: string
end

local record DisassociateFromMasterAccountOutput
end

local record DisassociateMembersInput
    DetectorId: string
    AccountIds: {string}
end

local record DisassociateMembersOutput
    UnprocessedAccounts: {UnprocessedAccount}
end

local record EnableOrganizationAdminAccountInput
    AdminAccountId: string
end

local record EnableOrganizationAdminAccountOutput
end

local record GetAdministratorAccountInput
    DetectorId: string
end

local record GetAdministratorAccountOutput
    Administrator: Administrator
end

local record GetCoverageStatisticsInput
    DetectorId: string
    FilterCriteria: CoverageFilterCriteria
    StatisticsType: {string}
end

local record GetCoverageStatisticsOutput
    CoverageStatistics: CoverageStatistics
end

local record GetDetectorInput
    DetectorId: string
end

local record GetDetectorOutput
    CreatedAt: string
    FindingPublishingFrequency: string
    ServiceRole: string
    Status: string
    UpdatedAt: string
    DataSources: DataSourceConfigurationsResult
    Tags: {string : string}
    Features: {DetectorFeatureConfigurationResult}
end

local record GetFilterInput
    DetectorId: string
    FilterName: string
end

local record GetFilterOutput
    Name: string
    Description: string
    Action: string
    Rank: number
    FindingCriteria: FindingCriteria
    Tags: {string : string}
end

local record GetFindingsInput
    DetectorId: string
    FindingIds: {string}
    SortCriteria: SortCriteria
end

local record GetFindingsOutput
    Findings: {Finding}
end

local record GetFindingsStatisticsInput
    DetectorId: string
    FindingStatisticTypes: {string}
    FindingCriteria: FindingCriteria
    GroupBy: string
    OrderBy: string
    MaxResults: number
end

local record GetFindingsStatisticsOutput
    FindingStatistics: FindingStatistics
    NextToken: string
end

local record GetInvitationsCountInput
end

local record GetInvitationsCountOutput
    InvitationsCount: number
end

local record GetIPSetInput
    DetectorId: string
    IpSetId: string
end

local record GetIPSetOutput
    Name: string
    Format: string
    Location: string
    Status: string
    Tags: {string : string}
    ExpectedBucketOwner: string
end

local record GetMalwareProtectionPlanInput
    MalwareProtectionPlanId: string
end

local record GetMalwareProtectionPlanOutput
    Arn: string
    Role: string
    ProtectedResource: CreateProtectedResource
    Actions: MalwareProtectionPlanActions
    CreatedAt: number
    Status: string
    StatusReasons: {MalwareProtectionPlanStatusReason}
    Tags: {string : string}
end

local record GetMalwareScanInput
    ScanId: string
end

local record GetMalwareScanOutput
    ScanId: string
    DetectorId: string
    AdminDetectorId: string
    ResourceArn: string
    ResourceType: string
    ScannedResourcesCount: number
    SkippedResourcesCount: number
    FailedResourcesCount: number
    ScannedResources: {ScannedResource}
    ScanConfiguration: ScanConfiguration
    ScanCategory: string
    ScanStatus: string
    ScanStatusReason: string
    ScanType: string
    ScanStartedAt: number
    ScanCompletedAt: number
    ScanResultDetails: GetMalwareScanResultDetails
end

local record GetMalwareScanSettingsInput
    DetectorId: string
end

local record GetMalwareScanSettingsOutput
    ScanResourceCriteria: ScanResourceCriteria
    EbsSnapshotPreservation: string
end

local record GetMasterAccountInput
    DetectorId: string
end

local record GetMasterAccountOutput
    Master: Master
end

local record GetMemberDetectorsInput
    DetectorId: string
    AccountIds: {string}
end

local record GetMemberDetectorsOutput
    MemberDataSourceConfigurations: {MemberDataSourceConfiguration}
    UnprocessedAccounts: {UnprocessedAccount}
end

local record GetMembersInput
    DetectorId: string
    AccountIds: {string}
end

local record GetMembersOutput
    Members: {Member}
    UnprocessedAccounts: {UnprocessedAccount}
end

local record GetOrganizationStatisticsInput
end

local record GetOrganizationStatisticsOutput
    OrganizationDetails: OrganizationDetails
end

local record GetRemainingFreeTrialDaysInput
    DetectorId: string
    AccountIds: {string}
end

local record GetRemainingFreeTrialDaysOutput
    Accounts: {AccountFreeTrialInfo}
    UnprocessedAccounts: {UnprocessedAccount}
end

local record GetThreatEntitySetInput
    DetectorId: string
    ThreatEntitySetId: string
end

local record GetThreatEntitySetOutput
    Name: string
    Format: string
    Location: string
    ExpectedBucketOwner: string
    Status: string
    Tags: {string : string}
    CreatedAt: number
    UpdatedAt: number
    ErrorDetails: string
end

local record GetThreatIntelSetInput
    DetectorId: string
    ThreatIntelSetId: string
end

local record GetThreatIntelSetOutput
    Name: string
    Format: string
    Location: string
    Status: string
    Tags: {string : string}
    ExpectedBucketOwner: string
end

local record GetTrustedEntitySetInput
    DetectorId: string
    TrustedEntitySetId: string
end

local record GetTrustedEntitySetOutput
    Name: string
    Format: string
    Location: string
    ExpectedBucketOwner: string
    Status: string
    Tags: {string : string}
    CreatedAt: number
    UpdatedAt: number
    ErrorDetails: string
end

local record GetUsageStatisticsInput
    DetectorId: string
    UsageStatisticType: string
    UsageCriteria: UsageCriteria
    Unit: string
    MaxResults: number
    NextToken: string
end

local record GetUsageStatisticsOutput
    UsageStatistics: UsageStatistics
    NextToken: string
end

local record InviteMembersInput
    DetectorId: string
    AccountIds: {string}
    DisableEmailNotification: boolean
    Message: string
end

local record InviteMembersOutput
    UnprocessedAccounts: {UnprocessedAccount}
end

local record ListCoverageInput
    DetectorId: string
    NextToken: string
    MaxResults: number
    FilterCriteria: CoverageFilterCriteria
    SortCriteria: CoverageSortCriteria
end

local record ListCoverageOutput
    Resources: {CoverageResource}
    NextToken: string
end

local record ListDetectorsInput
    MaxResults: number
    NextToken: string
end

local record ListDetectorsOutput
    DetectorIds: {string}
    NextToken: string
end

local record ListFiltersInput
    DetectorId: string
    MaxResults: number
    NextToken: string
end

local record ListFiltersOutput
    FilterNames: {string}
    NextToken: string
end

local record ListFindingsInput
    DetectorId: string
    FindingCriteria: FindingCriteria
    SortCriteria: SortCriteria
    MaxResults: number
    NextToken: string
end

local record ListFindingsOutput
    FindingIds: {string}
    NextToken: string
end

local record ListInvitationsInput
    MaxResults: number
    NextToken: string
end

local record ListInvitationsOutput
    Invitations: {Invitation}
    NextToken: string
end

local record ListIPSetsInput
    DetectorId: string
    MaxResults: number
    NextToken: string
end

local record ListIPSetsOutput
    IpSetIds: {string}
    NextToken: string
end

local record ListMalwareProtectionPlansInput
    NextToken: string
end

local record ListMalwareProtectionPlansOutput
    MalwareProtectionPlans: {MalwareProtectionPlanSummary}
    NextToken: string
end

local record ListMalwareScansInput
    MaxResults: number
    NextToken: string
    FilterCriteria: ListMalwareScansFilterCriteria
    SortCriteria: SortCriteria
end

local record ListMalwareScansOutput
    Scans: {MalwareScan}
    NextToken: string
end

local record ListMembersInput
    DetectorId: string
    MaxResults: number
    NextToken: string
    OnlyAssociated: string
end

local record ListMembersOutput
    Members: {Member}
    NextToken: string
end

local record ListOrganizationAdminAccountsInput
    MaxResults: number
    NextToken: string
end

local record ListOrganizationAdminAccountsOutput
    AdminAccounts: {AdminAccount}
    NextToken: string
end

local record ListPublishingDestinationsInput
    DetectorId: string
    MaxResults: number
    NextToken: string
end

local record ListPublishingDestinationsOutput
    Destinations: {Destination}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record ListThreatEntitySetsInput
    DetectorId: string
    MaxResults: number
    NextToken: string
end

local record ListThreatEntitySetsOutput
    ThreatEntitySetIds: {string}
    NextToken: string
end

local record ListThreatIntelSetsInput
    DetectorId: string
    MaxResults: number
    NextToken: string
end

local record ListThreatIntelSetsOutput
    ThreatIntelSetIds: {string}
    NextToken: string
end

local record ListTrustedEntitySetsInput
    DetectorId: string
    MaxResults: number
    NextToken: string
end

local record ListTrustedEntitySetsOutput
    TrustedEntitySetIds: {string}
    NextToken: string
end

local record SendObjectMalwareScanInput
    S3Object: S3ObjectForSendObjectMalwareScan
end

local record SendObjectMalwareScanOutput
end

local record StartMalwareScanInput
    ResourceArn: string
    ClientToken: string
    ScanConfiguration: StartMalwareScanConfiguration
end

local record StartMalwareScanOutput
    ScanId: string
end

local record StartMonitoringMembersInput
    DetectorId: string
    AccountIds: {string}
end

local record StartMonitoringMembersOutput
    UnprocessedAccounts: {UnprocessedAccount}
end

local record StopMonitoringMembersInput
    DetectorId: string
    AccountIds: {string}
end

local record StopMonitoringMembersOutput
    UnprocessedAccounts: {UnprocessedAccount}
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UnarchiveFindingsInput
    DetectorId: string
    FindingIds: {string}
end

local record UnarchiveFindingsOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateDetectorInput
    DetectorId: string
    Enable: boolean
    FindingPublishingFrequency: string
    DataSources: DataSourceConfigurations
    Features: {DetectorFeatureConfiguration}
end

local record UpdateDetectorOutput
end

local record UpdateFilterInput
    DetectorId: string
    FilterName: string
    Description: string
    Action: string
    Rank: number
    FindingCriteria: FindingCriteria
end

local record UpdateFilterOutput
    Name: string
end

local record UpdateFindingsFeedbackInput
    DetectorId: string
    FindingIds: {string}
    Feedback: string
    Comments: string
end

local record UpdateFindingsFeedbackOutput
end

local record UpdateIPSetInput
    DetectorId: string
    IpSetId: string
    Name: string
    Location: string
    Activate: boolean
    ExpectedBucketOwner: string
end

local record UpdateIPSetOutput
end

local record UpdateMalwareProtectionPlanInput
    MalwareProtectionPlanId: string
    Role: string
    Actions: MalwareProtectionPlanActions
    ProtectedResource: UpdateProtectedResource
end

local record UpdateMalwareProtectionPlanOutput
end

local record UpdateMalwareScanSettingsInput
    DetectorId: string
    ScanResourceCriteria: ScanResourceCriteria
    EbsSnapshotPreservation: string
end

local record UpdateMalwareScanSettingsOutput
end

local record UpdateMemberDetectorsInput
    DetectorId: string
    AccountIds: {string}
    DataSources: DataSourceConfigurations
    Features: {MemberFeaturesConfiguration}
end

local record UpdateMemberDetectorsOutput
    UnprocessedAccounts: {UnprocessedAccount}
end

local record UpdateOrganizationConfigurationInput
    DetectorId: string
    AutoEnable: boolean
    DataSources: OrganizationDataSourceConfigurations
    Features: {OrganizationFeatureConfiguration}
    AutoEnableOrganizationMembers: string
end

local record UpdateOrganizationConfigurationOutput
end

local record UpdatePublishingDestinationInput
    DetectorId: string
    DestinationId: string
    DestinationProperties: DestinationProperties
end

local record UpdatePublishingDestinationOutput
end

local record UpdateThreatEntitySetInput
    DetectorId: string
    ThreatEntitySetId: string
    Name: string
    Location: string
    ExpectedBucketOwner: string
    Activate: boolean
end

local record UpdateThreatEntitySetOutput
end

local record UpdateThreatIntelSetInput
    DetectorId: string
    ThreatIntelSetId: string
    Name: string
    Location: string
    Activate: boolean
    ExpectedBucketOwner: string
end

local record UpdateThreatIntelSetOutput
end

local record UpdateTrustedEntitySetInput
    DetectorId: string
    TrustedEntitySetId: string
    Name: string
    Location: string
    ExpectedBucketOwner: string
    Activate: boolean
end

local record UpdateTrustedEntitySetOutput
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record AccessDeniedException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record AccessDeniedException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record ConflictException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record AccessDeniedException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record AccessDeniedException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record ResourceNotFoundException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record AccessDeniedException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record ResourceNotFoundException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record ResourceNotFoundException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record AccessDeniedException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record AccessDeniedException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record AccessDeniedException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record ConflictException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record AccessDeniedException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record AccessDeniedException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record AccessDeniedException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record AccessDeniedException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record ResourceNotFoundException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record AccessDeniedException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local record BadRequestException
    Message: string
    Type: string
end

local record InternalServerErrorException
    Message: string
    Type: string
end

local type IpSetFormat = "TXT" | "STIX" | "OTX_CSV" | "ALIEN_VAULT" | "PROOF_POINT" | "FIRE_EYE"

local type ThreatIntelSetFormat = "TXT" | "STIX" | "OTX_CSV" | "ALIEN_VAULT" | "PROOF_POINT" | "FIRE_EYE"

local type ThreatEntitySetFormat = "TXT" | "STIX" | "OTX_CSV" | "ALIEN_VAULT" | "PROOF_POINT" | "FIRE_EYE"

local type MalwareProtectionScanStatus = "RUNNING" | "COMPLETED" | "COMPLETED_WITH_ISSUES" | "FAILED" | "SKIPPED"

local type MalwareProtectionResourceType = "EBS_RECOVERY_POINT" | "EBS_SNAPSHOT" | "EBS_VOLUME" | "EC2_AMI" | "EC2_INSTANCE" | "EC2_RECOVERY_POINT" | "S3_RECOVERY_POINT" | "S3_BUCKET"

local type UsageStatisticType = "SUM_BY_ACCOUNT" | "SUM_BY_DATA_SOURCE" | "SUM_BY_RESOURCE" | "TOP_RESOURCES" | "SUM_BY_FEATURES" | "TOP_ACCOUNTS_BY_FEATURE"

local type AutoEnableMembers = "NEW" | "ALL" | "NONE"

local type TrustedEntitySetFormat = "TXT" | "STIX" | "OTX_CSV" | "ALIEN_VAULT" | "PROOF_POINT" | "FIRE_EYE"

local type PublishingStatus = "PENDING_VERIFICATION" | "PUBLISHING" | "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY" | "STOPPED"

local type Feedback = "USEFUL" | "NOT_USEFUL"

local type FindingPublishingFrequency = "FIFTEEN_MINUTES" | "ONE_HOUR" | "SIX_HOURS"

local type IpSetStatus = "INACTIVE" | "ACTIVATING" | "ACTIVE" | "DEACTIVATING" | "ERROR" | "DELETE_PENDING" | "DELETED"

local type EbsSnapshotPreservation = "NO_RETENTION" | "RETENTION_WITH_FINDING"

local type GroupByType = "ACCOUNT" | "DATE" | "FINDING_TYPE" | "RESOURCE" | "SEVERITY"

local type ScanStatusReason = "ACCESS_DENIED" | "RESOURCE_NOT_FOUND" | "SNAPSHOT_SIZE_LIMIT_EXCEEDED" | "RESOURCE_UNAVAILABLE" | "INCONSISTENT_SOURCE" | "INCREMENTAL_NO_DIFFERENCE" | "NO_EBS_VOLUMES_FOUND" | "UNSUPPORTED_PRODUCT_CODE_TYPE" | "AMI_SNAPSHOT_LIMIT_EXCEEDED" | "UNRELATED_RESOURCES" | "BASE_RESOURCE_NOT_SCANNED" | "BASE_CREATED_AFTER_TARGET" | "UNSUPPORTED_FOR_INCREMENTAL" | "UNSUPPORTED_AMI" | "UNSUPPORTED_SNAPSHOT" | "UNSUPPORTED_COMPOSITE_RECOVERY_POINT" | "ALL_FILES_SKIPPED_OR_FAILED"

local type DestinationType = "S3"

local type MalwareProtectionPlanStatus = "ACTIVE" | "WARNING" | "ERROR"

local type TrustedEntitySetStatus = "INACTIVE" | "ACTIVATING" | "ACTIVE" | "DEACTIVATING" | "ERROR" | "DELETE_PENDING" | "DELETED"

local type OrderBy = "ASC" | "DESC"

local type DetectorStatus = "ENABLED" | "DISABLED"

local type MalwareProtectionScanType = "BACKUP_INITIATED" | "ON_DEMAND" | "GUARDDUTY_INITIATED"

local type ThreatEntitySetStatus = "INACTIVE" | "ACTIVATING" | "ACTIVE" | "DEACTIVATING" | "ERROR" | "DELETE_PENDING" | "DELETED"

local type ThreatIntelSetStatus = "INACTIVE" | "ACTIVATING" | "ACTIVE" | "DEACTIVATING" | "ERROR" | "DELETE_PENDING" | "DELETED"

local type FilterAction = "NOOP" | "ARCHIVE"

local type ScanCategory = "FULL_SCAN" | "INCREMENTAL_SCAN"

local record M
    AcceptAdministratorInvitationInput: AcceptAdministratorInvitationInput
    AcceptAdministratorInvitationOutput: AcceptAdministratorInvitationOutput
    AcceptInvitationInput: AcceptInvitationInput
    AcceptInvitationOutput: AcceptInvitationOutput
    ArchiveFindingsInput: ArchiveFindingsInput
    ArchiveFindingsOutput: ArchiveFindingsOutput
    CreateDetectorInput: CreateDetectorInput
    CreateDetectorOutput: CreateDetectorOutput
    CreateFilterInput: CreateFilterInput
    CreateFilterOutput: CreateFilterOutput
    CreateIPSetInput: CreateIPSetInput
    CreateIPSetOutput: CreateIPSetOutput
    CreateMalwareProtectionPlanInput: CreateMalwareProtectionPlanInput
    CreateMalwareProtectionPlanOutput: CreateMalwareProtectionPlanOutput
    CreateMembersInput: CreateMembersInput
    CreateMembersOutput: CreateMembersOutput
    CreatePublishingDestinationInput: CreatePublishingDestinationInput
    CreatePublishingDestinationOutput: CreatePublishingDestinationOutput
    CreateSampleFindingsInput: CreateSampleFindingsInput
    CreateSampleFindingsOutput: CreateSampleFindingsOutput
    CreateThreatEntitySetInput: CreateThreatEntitySetInput
    CreateThreatEntitySetOutput: CreateThreatEntitySetOutput
    CreateThreatIntelSetInput: CreateThreatIntelSetInput
    CreateThreatIntelSetOutput: CreateThreatIntelSetOutput
    CreateTrustedEntitySetInput: CreateTrustedEntitySetInput
    CreateTrustedEntitySetOutput: CreateTrustedEntitySetOutput
    DeclineInvitationsInput: DeclineInvitationsInput
    DeclineInvitationsOutput: DeclineInvitationsOutput
    DeleteDetectorInput: DeleteDetectorInput
    DeleteDetectorOutput: DeleteDetectorOutput
    DeleteFilterInput: DeleteFilterInput
    DeleteFilterOutput: DeleteFilterOutput
    DeleteInvitationsInput: DeleteInvitationsInput
    DeleteInvitationsOutput: DeleteInvitationsOutput
    DeleteIPSetInput: DeleteIPSetInput
    DeleteIPSetOutput: DeleteIPSetOutput
    DeleteMalwareProtectionPlanInput: DeleteMalwareProtectionPlanInput
    DeleteMalwareProtectionPlanOutput: DeleteMalwareProtectionPlanOutput
    DeleteMembersInput: DeleteMembersInput
    DeleteMembersOutput: DeleteMembersOutput
    DeletePublishingDestinationInput: DeletePublishingDestinationInput
    DeletePublishingDestinationOutput: DeletePublishingDestinationOutput
    DeleteThreatEntitySetInput: DeleteThreatEntitySetInput
    DeleteThreatEntitySetOutput: DeleteThreatEntitySetOutput
    DeleteThreatIntelSetInput: DeleteThreatIntelSetInput
    DeleteThreatIntelSetOutput: DeleteThreatIntelSetOutput
    DeleteTrustedEntitySetInput: DeleteTrustedEntitySetInput
    DeleteTrustedEntitySetOutput: DeleteTrustedEntitySetOutput
    DescribeMalwareScansInput: DescribeMalwareScansInput
    DescribeMalwareScansOutput: DescribeMalwareScansOutput
    DescribeOrganizationConfigurationInput: DescribeOrganizationConfigurationInput
    DescribeOrganizationConfigurationOutput: DescribeOrganizationConfigurationOutput
    DescribePublishingDestinationInput: DescribePublishingDestinationInput
    DescribePublishingDestinationOutput: DescribePublishingDestinationOutput
    DisableOrganizationAdminAccountInput: DisableOrganizationAdminAccountInput
    DisableOrganizationAdminAccountOutput: DisableOrganizationAdminAccountOutput
    DisassociateFromAdministratorAccountInput: DisassociateFromAdministratorAccountInput
    DisassociateFromAdministratorAccountOutput: DisassociateFromAdministratorAccountOutput
    DisassociateFromMasterAccountInput: DisassociateFromMasterAccountInput
    DisassociateFromMasterAccountOutput: DisassociateFromMasterAccountOutput
    DisassociateMembersInput: DisassociateMembersInput
    DisassociateMembersOutput: DisassociateMembersOutput
    EnableOrganizationAdminAccountInput: EnableOrganizationAdminAccountInput
    EnableOrganizationAdminAccountOutput: EnableOrganizationAdminAccountOutput
    GetAdministratorAccountInput: GetAdministratorAccountInput
    GetAdministratorAccountOutput: GetAdministratorAccountOutput
    GetCoverageStatisticsInput: GetCoverageStatisticsInput
    GetCoverageStatisticsOutput: GetCoverageStatisticsOutput
    GetDetectorInput: GetDetectorInput
    GetDetectorOutput: GetDetectorOutput
    GetFilterInput: GetFilterInput
    GetFilterOutput: GetFilterOutput
    GetFindingsInput: GetFindingsInput
    GetFindingsOutput: GetFindingsOutput
    GetFindingsStatisticsInput: GetFindingsStatisticsInput
    GetFindingsStatisticsOutput: GetFindingsStatisticsOutput
    GetInvitationsCountInput: GetInvitationsCountInput
    GetInvitationsCountOutput: GetInvitationsCountOutput
    GetIPSetInput: GetIPSetInput
    GetIPSetOutput: GetIPSetOutput
    GetMalwareProtectionPlanInput: GetMalwareProtectionPlanInput
    GetMalwareProtectionPlanOutput: GetMalwareProtectionPlanOutput
    GetMalwareScanInput: GetMalwareScanInput
    GetMalwareScanOutput: GetMalwareScanOutput
    GetMalwareScanSettingsInput: GetMalwareScanSettingsInput
    GetMalwareScanSettingsOutput: GetMalwareScanSettingsOutput
    GetMasterAccountInput: GetMasterAccountInput
    GetMasterAccountOutput: GetMasterAccountOutput
    GetMemberDetectorsInput: GetMemberDetectorsInput
    GetMemberDetectorsOutput: GetMemberDetectorsOutput
    GetMembersInput: GetMembersInput
    GetMembersOutput: GetMembersOutput
    GetOrganizationStatisticsInput: GetOrganizationStatisticsInput
    GetOrganizationStatisticsOutput: GetOrganizationStatisticsOutput
    GetRemainingFreeTrialDaysInput: GetRemainingFreeTrialDaysInput
    GetRemainingFreeTrialDaysOutput: GetRemainingFreeTrialDaysOutput
    GetThreatEntitySetInput: GetThreatEntitySetInput
    GetThreatEntitySetOutput: GetThreatEntitySetOutput
    GetThreatIntelSetInput: GetThreatIntelSetInput
    GetThreatIntelSetOutput: GetThreatIntelSetOutput
    GetTrustedEntitySetInput: GetTrustedEntitySetInput
    GetTrustedEntitySetOutput: GetTrustedEntitySetOutput
    GetUsageStatisticsInput: GetUsageStatisticsInput
    GetUsageStatisticsOutput: GetUsageStatisticsOutput
    InviteMembersInput: InviteMembersInput
    InviteMembersOutput: InviteMembersOutput
    ListCoverageInput: ListCoverageInput
    ListCoverageOutput: ListCoverageOutput
    ListDetectorsInput: ListDetectorsInput
    ListDetectorsOutput: ListDetectorsOutput
    ListFiltersInput: ListFiltersInput
    ListFiltersOutput: ListFiltersOutput
    ListFindingsInput: ListFindingsInput
    ListFindingsOutput: ListFindingsOutput
    ListInvitationsInput: ListInvitationsInput
    ListInvitationsOutput: ListInvitationsOutput
    ListIPSetsInput: ListIPSetsInput
    ListIPSetsOutput: ListIPSetsOutput
    ListMalwareProtectionPlansInput: ListMalwareProtectionPlansInput
    ListMalwareProtectionPlansOutput: ListMalwareProtectionPlansOutput
    ListMalwareScansInput: ListMalwareScansInput
    ListMalwareScansOutput: ListMalwareScansOutput
    ListMembersInput: ListMembersInput
    ListMembersOutput: ListMembersOutput
    ListOrganizationAdminAccountsInput: ListOrganizationAdminAccountsInput
    ListOrganizationAdminAccountsOutput: ListOrganizationAdminAccountsOutput
    ListPublishingDestinationsInput: ListPublishingDestinationsInput
    ListPublishingDestinationsOutput: ListPublishingDestinationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListThreatEntitySetsInput: ListThreatEntitySetsInput
    ListThreatEntitySetsOutput: ListThreatEntitySetsOutput
    ListThreatIntelSetsInput: ListThreatIntelSetsInput
    ListThreatIntelSetsOutput: ListThreatIntelSetsOutput
    ListTrustedEntitySetsInput: ListTrustedEntitySetsInput
    ListTrustedEntitySetsOutput: ListTrustedEntitySetsOutput
    SendObjectMalwareScanInput: SendObjectMalwareScanInput
    SendObjectMalwareScanOutput: SendObjectMalwareScanOutput
    StartMalwareScanInput: StartMalwareScanInput
    StartMalwareScanOutput: StartMalwareScanOutput
    StartMonitoringMembersInput: StartMonitoringMembersInput
    StartMonitoringMembersOutput: StartMonitoringMembersOutput
    StopMonitoringMembersInput: StopMonitoringMembersInput
    StopMonitoringMembersOutput: StopMonitoringMembersOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UnarchiveFindingsInput: UnarchiveFindingsInput
    UnarchiveFindingsOutput: UnarchiveFindingsOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDetectorInput: UpdateDetectorInput
    UpdateDetectorOutput: UpdateDetectorOutput
    UpdateFilterInput: UpdateFilterInput
    UpdateFilterOutput: UpdateFilterOutput
    UpdateFindingsFeedbackInput: UpdateFindingsFeedbackInput
    UpdateFindingsFeedbackOutput: UpdateFindingsFeedbackOutput
    UpdateIPSetInput: UpdateIPSetInput
    UpdateIPSetOutput: UpdateIPSetOutput
    UpdateMalwareProtectionPlanInput: UpdateMalwareProtectionPlanInput
    UpdateMalwareProtectionPlanOutput: UpdateMalwareProtectionPlanOutput
    UpdateMalwareScanSettingsInput: UpdateMalwareScanSettingsInput
    UpdateMalwareScanSettingsOutput: UpdateMalwareScanSettingsOutput
    UpdateMemberDetectorsInput: UpdateMemberDetectorsInput
    UpdateMemberDetectorsOutput: UpdateMemberDetectorsOutput
    UpdateOrganizationConfigurationInput: UpdateOrganizationConfigurationInput
    UpdateOrganizationConfigurationOutput: UpdateOrganizationConfigurationOutput
    UpdatePublishingDestinationInput: UpdatePublishingDestinationInput
    UpdatePublishingDestinationOutput: UpdatePublishingDestinationOutput
    UpdateThreatEntitySetInput: UpdateThreatEntitySetInput
    UpdateThreatEntitySetOutput: UpdateThreatEntitySetOutput
    UpdateThreatIntelSetInput: UpdateThreatIntelSetInput
    UpdateThreatIntelSetOutput: UpdateThreatIntelSetOutput
    UpdateTrustedEntitySetInput: UpdateTrustedEntitySetInput
    UpdateTrustedEntitySetOutput: UpdateTrustedEntitySetOutput
end

return M
