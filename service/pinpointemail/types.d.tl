local record CreateConfigurationSetInput
    ConfigurationSetName: string
    TrackingOptions: TrackingOptions
    DeliveryOptions: DeliveryOptions
    ReputationOptions: ReputationOptions
    SendingOptions: SendingOptions
    Tags: {Tag}
end

local record CreateConfigurationSetOutput
end

local record CreateConfigurationSetEventDestinationInput
    ConfigurationSetName: string
    EventDestinationName: string
    EventDestination: EventDestinationDefinition
end

local record CreateConfigurationSetEventDestinationOutput
end

local record CreateDedicatedIpPoolInput
    PoolName: string
    Tags: {Tag}
end

local record CreateDedicatedIpPoolOutput
end

local record CreateDeliverabilityTestReportInput
    ReportName: string
    FromEmailAddress: string
    Content: EmailContent
    Tags: {Tag}
end

local record CreateDeliverabilityTestReportOutput
    ReportId: string
    DeliverabilityTestStatus: string
end

local record CreateEmailIdentityInput
    EmailIdentity: string
    Tags: {Tag}
end

local record CreateEmailIdentityOutput
    IdentityType: string
    VerifiedForSendingStatus: boolean
    DkimAttributes: DkimAttributes
end

local record DeleteConfigurationSetInput
    ConfigurationSetName: string
end

local record DeleteConfigurationSetOutput
end

local record DeleteConfigurationSetEventDestinationInput
    ConfigurationSetName: string
    EventDestinationName: string
end

local record DeleteConfigurationSetEventDestinationOutput
end

local record DeleteDedicatedIpPoolInput
    PoolName: string
end

local record DeleteDedicatedIpPoolOutput
end

local record DeleteEmailIdentityInput
    EmailIdentity: string
end

local record DeleteEmailIdentityOutput
end

local record GetAccountInput
end

local record GetAccountOutput
    SendQuota: SendQuota
    SendingEnabled: boolean
    DedicatedIpAutoWarmupEnabled: boolean
    EnforcementStatus: string
    ProductionAccessEnabled: boolean
end

local record GetBlacklistReportsInput
    BlacklistItemNames: {string}
end

local record GetBlacklistReportsOutput
    BlacklistReport: {string : {BlacklistEntry}}
end

local record GetConfigurationSetInput
    ConfigurationSetName: string
end

local record GetConfigurationSetOutput
    ConfigurationSetName: string
    TrackingOptions: TrackingOptions
    DeliveryOptions: DeliveryOptions
    ReputationOptions: ReputationOptions
    SendingOptions: SendingOptions
    Tags: {Tag}
end

local record GetConfigurationSetEventDestinationsInput
    ConfigurationSetName: string
end

local record GetConfigurationSetEventDestinationsOutput
    EventDestinations: {EventDestination}
end

local record GetDedicatedIpInput
    Ip: string
end

local record GetDedicatedIpOutput
    DedicatedIp: DedicatedIp
end

local record GetDedicatedIpsInput
    PoolName: string
    NextToken: string
    PageSize: number
end

local record GetDedicatedIpsOutput
    DedicatedIps: {DedicatedIp}
    NextToken: string
end

local record GetDeliverabilityDashboardOptionsInput
end

local record GetDeliverabilityDashboardOptionsOutput
    DashboardEnabled: boolean
    SubscriptionExpiryDate: number
    AccountStatus: string
    ActiveSubscribedDomains: {DomainDeliverabilityTrackingOption}
    PendingExpirationSubscribedDomains: {DomainDeliverabilityTrackingOption}
end

local record GetDeliverabilityTestReportInput
    ReportId: string
end

local record GetDeliverabilityTestReportOutput
    DeliverabilityTestReport: DeliverabilityTestReport
    OverallPlacement: PlacementStatistics
    IspPlacements: {IspPlacement}
    Message: string
    Tags: {Tag}
end

local record GetDomainDeliverabilityCampaignInput
    CampaignId: string
end

local record GetDomainDeliverabilityCampaignOutput
    DomainDeliverabilityCampaign: DomainDeliverabilityCampaign
end

local record GetDomainStatisticsReportInput
    Domain: string
    StartDate: number
    EndDate: number
end

local record GetDomainStatisticsReportOutput
    OverallVolume: OverallVolume
    DailyVolumes: {DailyVolume}
end

local record GetEmailIdentityInput
    EmailIdentity: string
end

local record GetEmailIdentityOutput
    IdentityType: string
    FeedbackForwardingStatus: boolean
    VerifiedForSendingStatus: boolean
    DkimAttributes: DkimAttributes
    MailFromAttributes: MailFromAttributes
    Tags: {Tag}
end

local record ListConfigurationSetsInput
    NextToken: string
    PageSize: number
end

local record ListConfigurationSetsOutput
    ConfigurationSets: {string}
    NextToken: string
end

local record ListDedicatedIpPoolsInput
    NextToken: string
    PageSize: number
end

local record ListDedicatedIpPoolsOutput
    DedicatedIpPools: {string}
    NextToken: string
end

local record ListDeliverabilityTestReportsInput
    NextToken: string
    PageSize: number
end

local record ListDeliverabilityTestReportsOutput
    DeliverabilityTestReports: {DeliverabilityTestReport}
    NextToken: string
end

local record ListDomainDeliverabilityCampaignsInput
    StartDate: number
    EndDate: number
    SubscribedDomain: string
    NextToken: string
    PageSize: number
end

local record ListDomainDeliverabilityCampaignsOutput
    DomainDeliverabilityCampaigns: {DomainDeliverabilityCampaign}
    NextToken: string
end

local record ListEmailIdentitiesInput
    NextToken: string
    PageSize: number
end

local record ListEmailIdentitiesOutput
    EmailIdentities: {IdentityInfo}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record PutAccountDedicatedIpWarmupAttributesInput
    AutoWarmupEnabled: boolean
end

local record PutAccountDedicatedIpWarmupAttributesOutput
end

local record PutAccountSendingAttributesInput
    SendingEnabled: boolean
end

local record PutAccountSendingAttributesOutput
end

local record PutConfigurationSetDeliveryOptionsInput
    ConfigurationSetName: string
    TlsPolicy: string
    SendingPoolName: string
end

local record PutConfigurationSetDeliveryOptionsOutput
end

local record PutConfigurationSetReputationOptionsInput
    ConfigurationSetName: string
    ReputationMetricsEnabled: boolean
end

local record PutConfigurationSetReputationOptionsOutput
end

local record PutConfigurationSetSendingOptionsInput
    ConfigurationSetName: string
    SendingEnabled: boolean
end

local record PutConfigurationSetSendingOptionsOutput
end

local record PutConfigurationSetTrackingOptionsInput
    ConfigurationSetName: string
    CustomRedirectDomain: string
end

local record PutConfigurationSetTrackingOptionsOutput
end

local record PutDedicatedIpInPoolInput
    Ip: string
    DestinationPoolName: string
end

local record PutDedicatedIpInPoolOutput
end

local record PutDedicatedIpWarmupAttributesInput
    Ip: string
    WarmupPercentage: number
end

local record PutDedicatedIpWarmupAttributesOutput
end

local record PutDeliverabilityDashboardOptionInput
    DashboardEnabled: boolean
    SubscribedDomains: {DomainDeliverabilityTrackingOption}
end

local record PutDeliverabilityDashboardOptionOutput
end

local record PutEmailIdentityDkimAttributesInput
    EmailIdentity: string
    SigningEnabled: boolean
end

local record PutEmailIdentityDkimAttributesOutput
end

local record PutEmailIdentityFeedbackAttributesInput
    EmailIdentity: string
    EmailForwardingEnabled: boolean
end

local record PutEmailIdentityFeedbackAttributesOutput
end

local record PutEmailIdentityMailFromAttributesInput
    EmailIdentity: string
    MailFromDomain: string
    BehaviorOnMxFailure: string
end

local record PutEmailIdentityMailFromAttributesOutput
end

local record SendEmailInput
    FromEmailAddress: string
    Destination: Destination
    ReplyToAddresses: {string}
    FeedbackForwardingEmailAddress: string
    Content: EmailContent
    EmailTags: {MessageTag}
    ConfigurationSetName: string
end

local record SendEmailOutput
    MessageId: string
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

local record UpdateConfigurationSetEventDestinationInput
    ConfigurationSetName: string
    EventDestinationName: string
    EventDestination: EventDestinationDefinition
end

local record UpdateConfigurationSetEventDestinationOutput
end

local record AlreadyExistsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AlreadyExistsException
    message: string
end

local record BadRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AlreadyExistsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record LimitExceededException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccountSuspendedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record LimitExceededException
    message: string
end

local record MailFromDomainNotVerifiedException
    message: string
end

local record MessageRejected
    message: string
end

local record NotFoundException
    message: string
end

local record SendingPausedException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record LimitExceededException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AlreadyExistsException
    message: string
end

local record BadRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccountSuspendedException
    message: string
end

local record BadRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record MailFromDomainNotVerifiedException
    message: string
end

local record MessageRejected
    message: string
end

local record NotFoundException
    message: string
end

local record SendingPausedException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local type DeliverabilityDashboardAccountStatus = "ACTIVE" | "PENDING_EXPIRATION" | "DISABLED"

local type IdentityType = "EMAIL_ADDRESS" | "DOMAIN" | "MANAGED_DOMAIN"

local type DeliverabilityTestStatus = "IN_PROGRESS" | "COMPLETED"

local type BehaviorOnMxFailure = "USE_DEFAULT_VALUE" | "REJECT_MESSAGE"

local type TlsPolicy = "REQUIRE" | "OPTIONAL"

local record M
    CreateConfigurationSetInput: CreateConfigurationSetInput
    CreateConfigurationSetOutput: CreateConfigurationSetOutput
    CreateConfigurationSetEventDestinationInput: CreateConfigurationSetEventDestinationInput
    CreateConfigurationSetEventDestinationOutput: CreateConfigurationSetEventDestinationOutput
    CreateDedicatedIpPoolInput: CreateDedicatedIpPoolInput
    CreateDedicatedIpPoolOutput: CreateDedicatedIpPoolOutput
    CreateDeliverabilityTestReportInput: CreateDeliverabilityTestReportInput
    CreateDeliverabilityTestReportOutput: CreateDeliverabilityTestReportOutput
    CreateEmailIdentityInput: CreateEmailIdentityInput
    CreateEmailIdentityOutput: CreateEmailIdentityOutput
    DeleteConfigurationSetInput: DeleteConfigurationSetInput
    DeleteConfigurationSetOutput: DeleteConfigurationSetOutput
    DeleteConfigurationSetEventDestinationInput: DeleteConfigurationSetEventDestinationInput
    DeleteConfigurationSetEventDestinationOutput: DeleteConfigurationSetEventDestinationOutput
    DeleteDedicatedIpPoolInput: DeleteDedicatedIpPoolInput
    DeleteDedicatedIpPoolOutput: DeleteDedicatedIpPoolOutput
    DeleteEmailIdentityInput: DeleteEmailIdentityInput
    DeleteEmailIdentityOutput: DeleteEmailIdentityOutput
    GetAccountInput: GetAccountInput
    GetAccountOutput: GetAccountOutput
    GetBlacklistReportsInput: GetBlacklistReportsInput
    GetBlacklistReportsOutput: GetBlacklistReportsOutput
    GetConfigurationSetInput: GetConfigurationSetInput
    GetConfigurationSetOutput: GetConfigurationSetOutput
    GetConfigurationSetEventDestinationsInput: GetConfigurationSetEventDestinationsInput
    GetConfigurationSetEventDestinationsOutput: GetConfigurationSetEventDestinationsOutput
    GetDedicatedIpInput: GetDedicatedIpInput
    GetDedicatedIpOutput: GetDedicatedIpOutput
    GetDedicatedIpsInput: GetDedicatedIpsInput
    GetDedicatedIpsOutput: GetDedicatedIpsOutput
    GetDeliverabilityDashboardOptionsInput: GetDeliverabilityDashboardOptionsInput
    GetDeliverabilityDashboardOptionsOutput: GetDeliverabilityDashboardOptionsOutput
    GetDeliverabilityTestReportInput: GetDeliverabilityTestReportInput
    GetDeliverabilityTestReportOutput: GetDeliverabilityTestReportOutput
    GetDomainDeliverabilityCampaignInput: GetDomainDeliverabilityCampaignInput
    GetDomainDeliverabilityCampaignOutput: GetDomainDeliverabilityCampaignOutput
    GetDomainStatisticsReportInput: GetDomainStatisticsReportInput
    GetDomainStatisticsReportOutput: GetDomainStatisticsReportOutput
    GetEmailIdentityInput: GetEmailIdentityInput
    GetEmailIdentityOutput: GetEmailIdentityOutput
    ListConfigurationSetsInput: ListConfigurationSetsInput
    ListConfigurationSetsOutput: ListConfigurationSetsOutput
    ListDedicatedIpPoolsInput: ListDedicatedIpPoolsInput
    ListDedicatedIpPoolsOutput: ListDedicatedIpPoolsOutput
    ListDeliverabilityTestReportsInput: ListDeliverabilityTestReportsInput
    ListDeliverabilityTestReportsOutput: ListDeliverabilityTestReportsOutput
    ListDomainDeliverabilityCampaignsInput: ListDomainDeliverabilityCampaignsInput
    ListDomainDeliverabilityCampaignsOutput: ListDomainDeliverabilityCampaignsOutput
    ListEmailIdentitiesInput: ListEmailIdentitiesInput
    ListEmailIdentitiesOutput: ListEmailIdentitiesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutAccountDedicatedIpWarmupAttributesInput: PutAccountDedicatedIpWarmupAttributesInput
    PutAccountDedicatedIpWarmupAttributesOutput: PutAccountDedicatedIpWarmupAttributesOutput
    PutAccountSendingAttributesInput: PutAccountSendingAttributesInput
    PutAccountSendingAttributesOutput: PutAccountSendingAttributesOutput
    PutConfigurationSetDeliveryOptionsInput: PutConfigurationSetDeliveryOptionsInput
    PutConfigurationSetDeliveryOptionsOutput: PutConfigurationSetDeliveryOptionsOutput
    PutConfigurationSetReputationOptionsInput: PutConfigurationSetReputationOptionsInput
    PutConfigurationSetReputationOptionsOutput: PutConfigurationSetReputationOptionsOutput
    PutConfigurationSetSendingOptionsInput: PutConfigurationSetSendingOptionsInput
    PutConfigurationSetSendingOptionsOutput: PutConfigurationSetSendingOptionsOutput
    PutConfigurationSetTrackingOptionsInput: PutConfigurationSetTrackingOptionsInput
    PutConfigurationSetTrackingOptionsOutput: PutConfigurationSetTrackingOptionsOutput
    PutDedicatedIpInPoolInput: PutDedicatedIpInPoolInput
    PutDedicatedIpInPoolOutput: PutDedicatedIpInPoolOutput
    PutDedicatedIpWarmupAttributesInput: PutDedicatedIpWarmupAttributesInput
    PutDedicatedIpWarmupAttributesOutput: PutDedicatedIpWarmupAttributesOutput
    PutDeliverabilityDashboardOptionInput: PutDeliverabilityDashboardOptionInput
    PutDeliverabilityDashboardOptionOutput: PutDeliverabilityDashboardOptionOutput
    PutEmailIdentityDkimAttributesInput: PutEmailIdentityDkimAttributesInput
    PutEmailIdentityDkimAttributesOutput: PutEmailIdentityDkimAttributesOutput
    PutEmailIdentityFeedbackAttributesInput: PutEmailIdentityFeedbackAttributesInput
    PutEmailIdentityFeedbackAttributesOutput: PutEmailIdentityFeedbackAttributesOutput
    PutEmailIdentityMailFromAttributesInput: PutEmailIdentityMailFromAttributesInput
    PutEmailIdentityMailFromAttributesOutput: PutEmailIdentityMailFromAttributesOutput
    SendEmailInput: SendEmailInput
    SendEmailOutput: SendEmailOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateConfigurationSetEventDestinationInput: UpdateConfigurationSetEventDestinationInput
    UpdateConfigurationSetEventDestinationOutput: UpdateConfigurationSetEventDestinationOutput
end

return M
