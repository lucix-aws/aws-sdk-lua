local record BatchGetMetricDataInput
    Queries: {BatchGetMetricDataQuery}
end

local record BatchGetMetricDataOutput
    Results: {MetricDataResult}
    Errors: {MetricDataError}
end

local record CancelExportJobInput
    JobId: string
end

local record CancelExportJobOutput
end

local record CreateConfigurationSetInput
    ConfigurationSetName: string
    TrackingOptions: TrackingOptions
    DeliveryOptions: DeliveryOptions
    ReputationOptions: ReputationOptions
    SendingOptions: SendingOptions
    Tags: {Tag}
    SuppressionOptions: SuppressionOptions
    VdmOptions: VdmOptions
    ArchivingOptions: ArchivingOptions
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

local record CreateContactInput
    ContactListName: string
    EmailAddress: string
    TopicPreferences: {TopicPreference}
    UnsubscribeAll: boolean
    AttributesData: string
end

local record CreateContactOutput
end

local record CreateContactListInput
    ContactListName: string
    Topics: {Topic}
    Description: string
    Tags: {Tag}
end

local record CreateContactListOutput
end

local record CreateCustomVerificationEmailTemplateInput
    TemplateName: string
    FromEmailAddress: string
    TemplateSubject: string
    TemplateContent: string
    Tags: {Tag}
    SuccessRedirectionURL: string
    FailureRedirectionURL: string
end

local record CreateCustomVerificationEmailTemplateOutput
end

local record CreateDedicatedIpPoolInput
    PoolName: string
    Tags: {Tag}
    ScalingMode: string
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
    DkimSigningAttributes: DkimSigningAttributes
    ConfigurationSetName: string
end

local record CreateEmailIdentityOutput
    IdentityType: string
    VerifiedForSendingStatus: boolean
    DkimAttributes: DkimAttributes
end

local record CreateEmailIdentityPolicyInput
    EmailIdentity: string
    PolicyName: string
    Policy: string
end

local record CreateEmailIdentityPolicyOutput
end

local record CreateEmailTemplateInput
    TemplateName: string
    TemplateContent: EmailTemplateContent
    Tags: {Tag}
end

local record CreateEmailTemplateOutput
end

local record CreateExportJobInput
    ExportDataSource: ExportDataSource
    ExportDestination: ExportDestination
end

local record CreateExportJobOutput
    JobId: string
end

local record CreateImportJobInput
    ImportDestination: ImportDestination
    ImportDataSource: ImportDataSource
end

local record CreateImportJobOutput
    JobId: string
end

local record CreateMultiRegionEndpointInput
    EndpointName: string
    Details: Details
    Tags: {Tag}
end

local record CreateMultiRegionEndpointOutput
    Status: string
    EndpointId: string
end

local record CreateTenantInput
    TenantName: string
    Tags: {Tag}
end

local record CreateTenantOutput
    TenantName: string
    TenantId: string
    TenantArn: string
    CreatedTimestamp: number
    Tags: {Tag}
    SendingStatus: string
end

local record CreateTenantResourceAssociationInput
    TenantName: string
    ResourceArn: string
end

local record CreateTenantResourceAssociationOutput
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

local record DeleteContactInput
    ContactListName: string
    EmailAddress: string
end

local record DeleteContactOutput
end

local record DeleteContactListInput
    ContactListName: string
end

local record DeleteContactListOutput
end

local record DeleteCustomVerificationEmailTemplateInput
    TemplateName: string
end

local record DeleteCustomVerificationEmailTemplateOutput
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

local record DeleteEmailIdentityPolicyInput
    EmailIdentity: string
    PolicyName: string
end

local record DeleteEmailIdentityPolicyOutput
end

local record DeleteEmailTemplateInput
    TemplateName: string
end

local record DeleteEmailTemplateOutput
end

local record DeleteMultiRegionEndpointInput
    EndpointName: string
end

local record DeleteMultiRegionEndpointOutput
    Status: string
end

local record DeleteSuppressedDestinationInput
    EmailAddress: string
end

local record DeleteSuppressedDestinationOutput
end

local record DeleteTenantInput
    TenantName: string
end

local record DeleteTenantOutput
end

local record DeleteTenantResourceAssociationInput
    TenantName: string
    ResourceArn: string
end

local record DeleteTenantResourceAssociationOutput
end

local record GetAccountInput
end

local record GetAccountOutput
    DedicatedIpAutoWarmupEnabled: boolean
    EnforcementStatus: string
    ProductionAccessEnabled: boolean
    SendQuota: SendQuota
    SendingEnabled: boolean
    SuppressionAttributes: SuppressionAttributes
    Details: AccountDetails
    VdmAttributes: VdmAttributes
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
    SuppressionOptions: SuppressionOptions
    VdmOptions: VdmOptions
    ArchivingOptions: ArchivingOptions
end

local record GetConfigurationSetEventDestinationsInput
    ConfigurationSetName: string
end

local record GetConfigurationSetEventDestinationsOutput
    EventDestinations: {EventDestination}
end

local record GetContactInput
    ContactListName: string
    EmailAddress: string
end

local record GetContactOutput
    ContactListName: string
    EmailAddress: string
    TopicPreferences: {TopicPreference}
    TopicDefaultPreferences: {TopicPreference}
    UnsubscribeAll: boolean
    AttributesData: string
    CreatedTimestamp: number
    LastUpdatedTimestamp: number
end

local record GetContactListInput
    ContactListName: string
end

local record GetContactListOutput
    ContactListName: string
    Topics: {Topic}
    Description: string
    CreatedTimestamp: number
    LastUpdatedTimestamp: number
    Tags: {Tag}
end

local record GetCustomVerificationEmailTemplateInput
    TemplateName: string
end

local record GetCustomVerificationEmailTemplateOutput
    TemplateName: string
    FromEmailAddress: string
    TemplateSubject: string
    TemplateContent: string
    Tags: {Tag}
    SuccessRedirectionURL: string
    FailureRedirectionURL: string
end

local record GetDedicatedIpInput
    Ip: string
end

local record GetDedicatedIpOutput
    DedicatedIp: DedicatedIp
end

local record GetDedicatedIpPoolInput
    PoolName: string
end

local record GetDedicatedIpPoolOutput
    DedicatedIpPool: DedicatedIpPool
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

local record GetEmailAddressInsightsInput
    EmailAddress: string
end

local record GetEmailAddressInsightsOutput
    MailboxValidation: MailboxValidation
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
    Policies: {string : string}
    Tags: {Tag}
    ConfigurationSetName: string
    VerificationStatus: string
    VerificationInfo: VerificationInfo
end

local record GetEmailIdentityPoliciesInput
    EmailIdentity: string
end

local record GetEmailIdentityPoliciesOutput
    Policies: {string : string}
end

local record GetEmailTemplateInput
    TemplateName: string
end

local record GetEmailTemplateOutput
    TemplateName: string
    TemplateContent: EmailTemplateContent
    Tags: {Tag}
end

local record GetExportJobInput
    JobId: string
end

local record GetExportJobOutput
    JobId: string
    ExportSourceType: string
    JobStatus: string
    ExportDestination: ExportDestination
    ExportDataSource: ExportDataSource
    CreatedTimestamp: number
    CompletedTimestamp: number
    FailureInfo: FailureInfo
    Statistics: ExportStatistics
end

local record GetImportJobInput
    JobId: string
end

local record GetImportJobOutput
    JobId: string
    ImportDestination: ImportDestination
    ImportDataSource: ImportDataSource
    FailureInfo: FailureInfo
    JobStatus: string
    CreatedTimestamp: number
    CompletedTimestamp: number
    ProcessedRecordsCount: number
    FailedRecordsCount: number
end

local record GetMessageInsightsInput
    MessageId: string
end

local record GetMessageInsightsOutput
    MessageId: string
    FromEmailAddress: string
    Subject: string
    EmailTags: {MessageTag}
    Insights: {EmailInsights}
end

local record GetMultiRegionEndpointInput
    EndpointName: string
end

local record GetMultiRegionEndpointOutput
    EndpointName: string
    EndpointId: string
    Routes: {Route}
    Status: string
    CreatedTimestamp: number
    LastUpdatedTimestamp: number
end

local record GetReputationEntityInput
    ReputationEntityReference: string
    ReputationEntityType: string
end

local record GetReputationEntityOutput
    ReputationEntity: ReputationEntity
end

local record GetSuppressedDestinationInput
    EmailAddress: string
end

local record GetSuppressedDestinationOutput
    SuppressedDestination: SuppressedDestination
end

local record GetTenantInput
    TenantName: string
end

local record GetTenantOutput
    Tenant: Tenant
end

local record ListConfigurationSetsInput
    NextToken: string
    PageSize: number
end

local record ListConfigurationSetsOutput
    ConfigurationSets: {string}
    NextToken: string
end

local record ListContactListsInput
    PageSize: number
    NextToken: string
end

local record ListContactListsOutput
    ContactLists: {ContactList}
    NextToken: string
end

local record ListContactsInput
    ContactListName: string
    Filter: ListContactsFilter
    PageSize: number
    NextToken: string
end

local record ListContactsOutput
    Contacts: {Contact}
    NextToken: string
end

local record ListCustomVerificationEmailTemplatesInput
    NextToken: string
    PageSize: number
end

local record ListCustomVerificationEmailTemplatesOutput
    CustomVerificationEmailTemplates: {CustomVerificationEmailTemplateMetadata}
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

local record ListEmailTemplatesInput
    NextToken: string
    PageSize: number
end

local record ListEmailTemplatesOutput
    TemplatesMetadata: {EmailTemplateMetadata}
    NextToken: string
end

local record ListExportJobsInput
    NextToken: string
    PageSize: number
    ExportSourceType: string
    JobStatus: string
end

local record ListExportJobsOutput
    ExportJobs: {ExportJobSummary}
    NextToken: string
end

local record ListImportJobsInput
    ImportDestinationType: string
    NextToken: string
    PageSize: number
end

local record ListImportJobsOutput
    ImportJobs: {ImportJobSummary}
    NextToken: string
end

local record ListMultiRegionEndpointsInput
    NextToken: string
    PageSize: number
end

local record ListMultiRegionEndpointsOutput
    MultiRegionEndpoints: {MultiRegionEndpoint}
    NextToken: string
end

local record ListRecommendationsInput
    Filter: {string : string}
    NextToken: string
    PageSize: number
end

local record ListRecommendationsOutput
    Recommendations: {Recommendation}
    NextToken: string
end

local record ListReputationEntitiesInput
    Filter: {string : string}
    NextToken: string
    PageSize: number
end

local record ListReputationEntitiesOutput
    ReputationEntities: {ReputationEntity}
    NextToken: string
end

local record ListResourceTenantsInput
    ResourceArn: string
    PageSize: number
    NextToken: string
end

local record ListResourceTenantsOutput
    ResourceTenants: {ResourceTenantMetadata}
    NextToken: string
end

local record ListSuppressedDestinationsInput
    Reasons: {string}
    StartDate: number
    EndDate: number
    NextToken: string
    PageSize: number
end

local record ListSuppressedDestinationsOutput
    SuppressedDestinationSummaries: {SuppressedDestinationSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ListTenantResourcesInput
    TenantName: string
    Filter: {string : string}
    PageSize: number
    NextToken: string
end

local record ListTenantResourcesOutput
    TenantResources: {TenantResource}
    NextToken: string
end

local record ListTenantsInput
    NextToken: string
    PageSize: number
end

local record ListTenantsOutput
    Tenants: {TenantInfo}
    NextToken: string
end

local record PutAccountDedicatedIpWarmupAttributesInput
    AutoWarmupEnabled: boolean
end

local record PutAccountDedicatedIpWarmupAttributesOutput
end

local record PutAccountDetailsInput
    MailType: string
    WebsiteURL: string
    ContactLanguage: string
    UseCaseDescription: string
    AdditionalContactEmailAddresses: {string}
    ProductionAccessEnabled: boolean
end

local record PutAccountDetailsOutput
end

local record PutAccountSendingAttributesInput
    SendingEnabled: boolean
end

local record PutAccountSendingAttributesOutput
end

local record PutAccountSuppressionAttributesInput
    SuppressedReasons: {string}
    ValidationAttributes: SuppressionValidationAttributes
end

local record PutAccountSuppressionAttributesOutput
end

local record PutAccountVdmAttributesInput
    VdmAttributes: VdmAttributes
end

local record PutAccountVdmAttributesOutput
end

local record PutConfigurationSetArchivingOptionsInput
    ConfigurationSetName: string
    ArchiveArn: string
end

local record PutConfigurationSetArchivingOptionsOutput
end

local record PutConfigurationSetDeliveryOptionsInput
    ConfigurationSetName: string
    TlsPolicy: string
    SendingPoolName: string
    MaxDeliverySeconds: number
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

local record PutConfigurationSetSuppressionOptionsInput
    ConfigurationSetName: string
    SuppressedReasons: {string}
    ValidationOptions: SuppressionValidationOptions
end

local record PutConfigurationSetSuppressionOptionsOutput
end

local record PutConfigurationSetTrackingOptionsInput
    ConfigurationSetName: string
    CustomRedirectDomain: string
    HttpsPolicy: string
end

local record PutConfigurationSetTrackingOptionsOutput
end

local record PutConfigurationSetVdmOptionsInput
    ConfigurationSetName: string
    VdmOptions: VdmOptions
end

local record PutConfigurationSetVdmOptionsOutput
end

local record PutDedicatedIpInPoolInput
    Ip: string
    DestinationPoolName: string
end

local record PutDedicatedIpInPoolOutput
end

local record PutDedicatedIpPoolScalingAttributesInput
    PoolName: string
    ScalingMode: string
end

local record PutDedicatedIpPoolScalingAttributesOutput
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

local record PutEmailIdentityConfigurationSetAttributesInput
    EmailIdentity: string
    ConfigurationSetName: string
end

local record PutEmailIdentityConfigurationSetAttributesOutput
end

local record PutEmailIdentityDkimAttributesInput
    EmailIdentity: string
    SigningEnabled: boolean
end

local record PutEmailIdentityDkimAttributesOutput
end

local record PutEmailIdentityDkimSigningAttributesInput
    EmailIdentity: string
    SigningAttributesOrigin: string
    SigningAttributes: DkimSigningAttributes
end

local record PutEmailIdentityDkimSigningAttributesOutput
    DkimStatus: string
    DkimTokens: {string}
    SigningHostedZone: string
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

local record PutSuppressedDestinationInput
    EmailAddress: string
    Reason: string
end

local record PutSuppressedDestinationOutput
end

local record SendBulkEmailInput
    FromEmailAddress: string
    FromEmailAddressIdentityArn: string
    ReplyToAddresses: {string}
    FeedbackForwardingEmailAddress: string
    FeedbackForwardingEmailAddressIdentityArn: string
    DefaultEmailTags: {MessageTag}
    DefaultContent: BulkEmailContent
    BulkEmailEntries: {BulkEmailEntry}
    ConfigurationSetName: string
    EndpointId: string
    TenantName: string
end

local record SendBulkEmailOutput
    BulkEmailEntryResults: {BulkEmailEntryResult}
end

local record SendCustomVerificationEmailInput
    EmailAddress: string
    TemplateName: string
    ConfigurationSetName: string
end

local record SendCustomVerificationEmailOutput
    MessageId: string
end

local record SendEmailInput
    FromEmailAddress: string
    FromEmailAddressIdentityArn: string
    Destination: Destination
    ReplyToAddresses: {string}
    FeedbackForwardingEmailAddress: string
    FeedbackForwardingEmailAddressIdentityArn: string
    Content: EmailContent
    EmailTags: {MessageTag}
    ConfigurationSetName: string
    EndpointId: string
    TenantName: string
    ListManagementOptions: ListManagementOptions
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

local record TestRenderEmailTemplateInput
    TemplateName: string
    TemplateData: string
end

local record TestRenderEmailTemplateOutput
    RenderedTemplate: string
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

local record UpdateContactInput
    ContactListName: string
    EmailAddress: string
    TopicPreferences: {TopicPreference}
    UnsubscribeAll: boolean
    AttributesData: string
end

local record UpdateContactOutput
end

local record UpdateContactListInput
    ContactListName: string
    Topics: {Topic}
    Description: string
end

local record UpdateContactListOutput
end

local record UpdateCustomVerificationEmailTemplateInput
    TemplateName: string
    FromEmailAddress: string
    TemplateSubject: string
    TemplateContent: string
    SuccessRedirectionURL: string
    FailureRedirectionURL: string
end

local record UpdateCustomVerificationEmailTemplateOutput
end

local record UpdateEmailIdentityPolicyInput
    EmailIdentity: string
    PolicyName: string
    Policy: string
end

local record UpdateEmailIdentityPolicyOutput
end

local record UpdateEmailTemplateInput
    TemplateName: string
    TemplateContent: EmailTemplateContent
end

local record UpdateEmailTemplateOutput
end

local record UpdateReputationEntityCustomerManagedStatusInput
    ReputationEntityType: string
    ReputationEntityReference: string
    SendingStatus: string
end

local record UpdateReputationEntityCustomerManagedStatusOutput
end

local record UpdateReputationEntityPolicyInput
    ReputationEntityType: string
    ReputationEntityReference: string
    ReputationEntityPolicy: string
end

local record UpdateReputationEntityPolicyOutput
end

local record BadRequestException
    message: string
end

local record InternalServiceErrorException
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

local record LimitExceededException
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

local record AlreadyExistsException
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

local record AlreadyExistsException
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

local record AlreadyExistsException
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

local record InvalidNextTokenException
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

local record ConflictException
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

local record ConflictException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record TooManyRequestsException
    message: string
end

local type SendingStatus = "ENABLED" | "REINSTATED" | "DISABLED"

local type ExportSourceType = "METRICS_DATA" | "MESSAGE_INSIGHTS"

local type ReputationEntityType = "RESOURCE"

local type ScalingMode = "STANDARD" | "MANAGED"

local type IdentityType = "EMAIL_ADDRESS" | "DOMAIN" | "MANAGED_DOMAIN"

local type VerificationStatus = "PENDING" | "SUCCESS" | "FAILED" | "TEMPORARY_FAILURE" | "NOT_STARTED"

local type SuppressionListReason = "BOUNCE" | "COMPLAINT"

local type TlsPolicy = "REQUIRE" | "OPTIONAL"

local type JobStatus = "CREATED" | "PROCESSING" | "COMPLETED" | "FAILED" | "CANCELLED"

local type HttpsPolicy = "REQUIRE" | "REQUIRE_OPEN_ONLY" | "OPTIONAL"

local type DkimStatus = "PENDING" | "SUCCESS" | "FAILED" | "TEMPORARY_FAILURE" | "NOT_STARTED"

local type DeliverabilityDashboardAccountStatus = "ACTIVE" | "PENDING_EXPIRATION" | "DISABLED"

local type Status = "CREATING" | "READY" | "FAILED" | "DELETING"

local type ImportDestinationType = "SUPPRESSION_LIST" | "CONTACT_LIST"

local type DkimSigningAttributesOrigin = "AWS_SES" | "EXTERNAL" | "AWS_SES_AF_SOUTH_1" | "AWS_SES_EU_NORTH_1" | "AWS_SES_AP_SOUTH_1" | "AWS_SES_EU_WEST_3" | "AWS_SES_EU_WEST_2" | "AWS_SES_EU_SOUTH_1" | "AWS_SES_EU_WEST_1" | "AWS_SES_AP_NORTHEAST_3" | "AWS_SES_AP_NORTHEAST_2" | "AWS_SES_ME_SOUTH_1" | "AWS_SES_AP_NORTHEAST_1" | "AWS_SES_IL_CENTRAL_1" | "AWS_SES_SA_EAST_1" | "AWS_SES_CA_CENTRAL_1" | "AWS_SES_AP_SOUTHEAST_1" | "AWS_SES_AP_SOUTHEAST_2" | "AWS_SES_AP_SOUTHEAST_3" | "AWS_SES_EU_CENTRAL_1" | "AWS_SES_US_EAST_1" | "AWS_SES_US_EAST_2" | "AWS_SES_US_WEST_1" | "AWS_SES_US_WEST_2" | "AWS_SES_ME_CENTRAL_1" | "AWS_SES_AP_SOUTH_2" | "AWS_SES_EU_CENTRAL_2" | "AWS_SES_AP_SOUTHEAST_5" | "AWS_SES_CA_WEST_1"

local type ContactLanguage = "EN" | "JA"

local type BehaviorOnMxFailure = "USE_DEFAULT_VALUE" | "REJECT_MESSAGE"

local type DeliverabilityTestStatus = "IN_PROGRESS" | "COMPLETED"

local type MailType = "MARKETING" | "TRANSACTIONAL"

local record M
    BatchGetMetricDataInput: BatchGetMetricDataInput
    BatchGetMetricDataOutput: BatchGetMetricDataOutput
    CancelExportJobInput: CancelExportJobInput
    CancelExportJobOutput: CancelExportJobOutput
    CreateConfigurationSetInput: CreateConfigurationSetInput
    CreateConfigurationSetOutput: CreateConfigurationSetOutput
    CreateConfigurationSetEventDestinationInput: CreateConfigurationSetEventDestinationInput
    CreateConfigurationSetEventDestinationOutput: CreateConfigurationSetEventDestinationOutput
    CreateContactInput: CreateContactInput
    CreateContactOutput: CreateContactOutput
    CreateContactListInput: CreateContactListInput
    CreateContactListOutput: CreateContactListOutput
    CreateCustomVerificationEmailTemplateInput: CreateCustomVerificationEmailTemplateInput
    CreateCustomVerificationEmailTemplateOutput: CreateCustomVerificationEmailTemplateOutput
    CreateDedicatedIpPoolInput: CreateDedicatedIpPoolInput
    CreateDedicatedIpPoolOutput: CreateDedicatedIpPoolOutput
    CreateDeliverabilityTestReportInput: CreateDeliverabilityTestReportInput
    CreateDeliverabilityTestReportOutput: CreateDeliverabilityTestReportOutput
    CreateEmailIdentityInput: CreateEmailIdentityInput
    CreateEmailIdentityOutput: CreateEmailIdentityOutput
    CreateEmailIdentityPolicyInput: CreateEmailIdentityPolicyInput
    CreateEmailIdentityPolicyOutput: CreateEmailIdentityPolicyOutput
    CreateEmailTemplateInput: CreateEmailTemplateInput
    CreateEmailTemplateOutput: CreateEmailTemplateOutput
    CreateExportJobInput: CreateExportJobInput
    CreateExportJobOutput: CreateExportJobOutput
    CreateImportJobInput: CreateImportJobInput
    CreateImportJobOutput: CreateImportJobOutput
    CreateMultiRegionEndpointInput: CreateMultiRegionEndpointInput
    CreateMultiRegionEndpointOutput: CreateMultiRegionEndpointOutput
    CreateTenantInput: CreateTenantInput
    CreateTenantOutput: CreateTenantOutput
    CreateTenantResourceAssociationInput: CreateTenantResourceAssociationInput
    CreateTenantResourceAssociationOutput: CreateTenantResourceAssociationOutput
    DeleteConfigurationSetInput: DeleteConfigurationSetInput
    DeleteConfigurationSetOutput: DeleteConfigurationSetOutput
    DeleteConfigurationSetEventDestinationInput: DeleteConfigurationSetEventDestinationInput
    DeleteConfigurationSetEventDestinationOutput: DeleteConfigurationSetEventDestinationOutput
    DeleteContactInput: DeleteContactInput
    DeleteContactOutput: DeleteContactOutput
    DeleteContactListInput: DeleteContactListInput
    DeleteContactListOutput: DeleteContactListOutput
    DeleteCustomVerificationEmailTemplateInput: DeleteCustomVerificationEmailTemplateInput
    DeleteCustomVerificationEmailTemplateOutput: DeleteCustomVerificationEmailTemplateOutput
    DeleteDedicatedIpPoolInput: DeleteDedicatedIpPoolInput
    DeleteDedicatedIpPoolOutput: DeleteDedicatedIpPoolOutput
    DeleteEmailIdentityInput: DeleteEmailIdentityInput
    DeleteEmailIdentityOutput: DeleteEmailIdentityOutput
    DeleteEmailIdentityPolicyInput: DeleteEmailIdentityPolicyInput
    DeleteEmailIdentityPolicyOutput: DeleteEmailIdentityPolicyOutput
    DeleteEmailTemplateInput: DeleteEmailTemplateInput
    DeleteEmailTemplateOutput: DeleteEmailTemplateOutput
    DeleteMultiRegionEndpointInput: DeleteMultiRegionEndpointInput
    DeleteMultiRegionEndpointOutput: DeleteMultiRegionEndpointOutput
    DeleteSuppressedDestinationInput: DeleteSuppressedDestinationInput
    DeleteSuppressedDestinationOutput: DeleteSuppressedDestinationOutput
    DeleteTenantInput: DeleteTenantInput
    DeleteTenantOutput: DeleteTenantOutput
    DeleteTenantResourceAssociationInput: DeleteTenantResourceAssociationInput
    DeleteTenantResourceAssociationOutput: DeleteTenantResourceAssociationOutput
    GetAccountInput: GetAccountInput
    GetAccountOutput: GetAccountOutput
    GetBlacklistReportsInput: GetBlacklistReportsInput
    GetBlacklistReportsOutput: GetBlacklistReportsOutput
    GetConfigurationSetInput: GetConfigurationSetInput
    GetConfigurationSetOutput: GetConfigurationSetOutput
    GetConfigurationSetEventDestinationsInput: GetConfigurationSetEventDestinationsInput
    GetConfigurationSetEventDestinationsOutput: GetConfigurationSetEventDestinationsOutput
    GetContactInput: GetContactInput
    GetContactOutput: GetContactOutput
    GetContactListInput: GetContactListInput
    GetContactListOutput: GetContactListOutput
    GetCustomVerificationEmailTemplateInput: GetCustomVerificationEmailTemplateInput
    GetCustomVerificationEmailTemplateOutput: GetCustomVerificationEmailTemplateOutput
    GetDedicatedIpInput: GetDedicatedIpInput
    GetDedicatedIpOutput: GetDedicatedIpOutput
    GetDedicatedIpPoolInput: GetDedicatedIpPoolInput
    GetDedicatedIpPoolOutput: GetDedicatedIpPoolOutput
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
    GetEmailAddressInsightsInput: GetEmailAddressInsightsInput
    GetEmailAddressInsightsOutput: GetEmailAddressInsightsOutput
    GetEmailIdentityInput: GetEmailIdentityInput
    GetEmailIdentityOutput: GetEmailIdentityOutput
    GetEmailIdentityPoliciesInput: GetEmailIdentityPoliciesInput
    GetEmailIdentityPoliciesOutput: GetEmailIdentityPoliciesOutput
    GetEmailTemplateInput: GetEmailTemplateInput
    GetEmailTemplateOutput: GetEmailTemplateOutput
    GetExportJobInput: GetExportJobInput
    GetExportJobOutput: GetExportJobOutput
    GetImportJobInput: GetImportJobInput
    GetImportJobOutput: GetImportJobOutput
    GetMessageInsightsInput: GetMessageInsightsInput
    GetMessageInsightsOutput: GetMessageInsightsOutput
    GetMultiRegionEndpointInput: GetMultiRegionEndpointInput
    GetMultiRegionEndpointOutput: GetMultiRegionEndpointOutput
    GetReputationEntityInput: GetReputationEntityInput
    GetReputationEntityOutput: GetReputationEntityOutput
    GetSuppressedDestinationInput: GetSuppressedDestinationInput
    GetSuppressedDestinationOutput: GetSuppressedDestinationOutput
    GetTenantInput: GetTenantInput
    GetTenantOutput: GetTenantOutput
    ListConfigurationSetsInput: ListConfigurationSetsInput
    ListConfigurationSetsOutput: ListConfigurationSetsOutput
    ListContactListsInput: ListContactListsInput
    ListContactListsOutput: ListContactListsOutput
    ListContactsInput: ListContactsInput
    ListContactsOutput: ListContactsOutput
    ListCustomVerificationEmailTemplatesInput: ListCustomVerificationEmailTemplatesInput
    ListCustomVerificationEmailTemplatesOutput: ListCustomVerificationEmailTemplatesOutput
    ListDedicatedIpPoolsInput: ListDedicatedIpPoolsInput
    ListDedicatedIpPoolsOutput: ListDedicatedIpPoolsOutput
    ListDeliverabilityTestReportsInput: ListDeliverabilityTestReportsInput
    ListDeliverabilityTestReportsOutput: ListDeliverabilityTestReportsOutput
    ListDomainDeliverabilityCampaignsInput: ListDomainDeliverabilityCampaignsInput
    ListDomainDeliverabilityCampaignsOutput: ListDomainDeliverabilityCampaignsOutput
    ListEmailIdentitiesInput: ListEmailIdentitiesInput
    ListEmailIdentitiesOutput: ListEmailIdentitiesOutput
    ListEmailTemplatesInput: ListEmailTemplatesInput
    ListEmailTemplatesOutput: ListEmailTemplatesOutput
    ListExportJobsInput: ListExportJobsInput
    ListExportJobsOutput: ListExportJobsOutput
    ListImportJobsInput: ListImportJobsInput
    ListImportJobsOutput: ListImportJobsOutput
    ListMultiRegionEndpointsInput: ListMultiRegionEndpointsInput
    ListMultiRegionEndpointsOutput: ListMultiRegionEndpointsOutput
    ListRecommendationsInput: ListRecommendationsInput
    ListRecommendationsOutput: ListRecommendationsOutput
    ListReputationEntitiesInput: ListReputationEntitiesInput
    ListReputationEntitiesOutput: ListReputationEntitiesOutput
    ListResourceTenantsInput: ListResourceTenantsInput
    ListResourceTenantsOutput: ListResourceTenantsOutput
    ListSuppressedDestinationsInput: ListSuppressedDestinationsInput
    ListSuppressedDestinationsOutput: ListSuppressedDestinationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTenantResourcesInput: ListTenantResourcesInput
    ListTenantResourcesOutput: ListTenantResourcesOutput
    ListTenantsInput: ListTenantsInput
    ListTenantsOutput: ListTenantsOutput
    PutAccountDedicatedIpWarmupAttributesInput: PutAccountDedicatedIpWarmupAttributesInput
    PutAccountDedicatedIpWarmupAttributesOutput: PutAccountDedicatedIpWarmupAttributesOutput
    PutAccountDetailsInput: PutAccountDetailsInput
    PutAccountDetailsOutput: PutAccountDetailsOutput
    PutAccountSendingAttributesInput: PutAccountSendingAttributesInput
    PutAccountSendingAttributesOutput: PutAccountSendingAttributesOutput
    PutAccountSuppressionAttributesInput: PutAccountSuppressionAttributesInput
    PutAccountSuppressionAttributesOutput: PutAccountSuppressionAttributesOutput
    PutAccountVdmAttributesInput: PutAccountVdmAttributesInput
    PutAccountVdmAttributesOutput: PutAccountVdmAttributesOutput
    PutConfigurationSetArchivingOptionsInput: PutConfigurationSetArchivingOptionsInput
    PutConfigurationSetArchivingOptionsOutput: PutConfigurationSetArchivingOptionsOutput
    PutConfigurationSetDeliveryOptionsInput: PutConfigurationSetDeliveryOptionsInput
    PutConfigurationSetDeliveryOptionsOutput: PutConfigurationSetDeliveryOptionsOutput
    PutConfigurationSetReputationOptionsInput: PutConfigurationSetReputationOptionsInput
    PutConfigurationSetReputationOptionsOutput: PutConfigurationSetReputationOptionsOutput
    PutConfigurationSetSendingOptionsInput: PutConfigurationSetSendingOptionsInput
    PutConfigurationSetSendingOptionsOutput: PutConfigurationSetSendingOptionsOutput
    PutConfigurationSetSuppressionOptionsInput: PutConfigurationSetSuppressionOptionsInput
    PutConfigurationSetSuppressionOptionsOutput: PutConfigurationSetSuppressionOptionsOutput
    PutConfigurationSetTrackingOptionsInput: PutConfigurationSetTrackingOptionsInput
    PutConfigurationSetTrackingOptionsOutput: PutConfigurationSetTrackingOptionsOutput
    PutConfigurationSetVdmOptionsInput: PutConfigurationSetVdmOptionsInput
    PutConfigurationSetVdmOptionsOutput: PutConfigurationSetVdmOptionsOutput
    PutDedicatedIpInPoolInput: PutDedicatedIpInPoolInput
    PutDedicatedIpInPoolOutput: PutDedicatedIpInPoolOutput
    PutDedicatedIpPoolScalingAttributesInput: PutDedicatedIpPoolScalingAttributesInput
    PutDedicatedIpPoolScalingAttributesOutput: PutDedicatedIpPoolScalingAttributesOutput
    PutDedicatedIpWarmupAttributesInput: PutDedicatedIpWarmupAttributesInput
    PutDedicatedIpWarmupAttributesOutput: PutDedicatedIpWarmupAttributesOutput
    PutDeliverabilityDashboardOptionInput: PutDeliverabilityDashboardOptionInput
    PutDeliverabilityDashboardOptionOutput: PutDeliverabilityDashboardOptionOutput
    PutEmailIdentityConfigurationSetAttributesInput: PutEmailIdentityConfigurationSetAttributesInput
    PutEmailIdentityConfigurationSetAttributesOutput: PutEmailIdentityConfigurationSetAttributesOutput
    PutEmailIdentityDkimAttributesInput: PutEmailIdentityDkimAttributesInput
    PutEmailIdentityDkimAttributesOutput: PutEmailIdentityDkimAttributesOutput
    PutEmailIdentityDkimSigningAttributesInput: PutEmailIdentityDkimSigningAttributesInput
    PutEmailIdentityDkimSigningAttributesOutput: PutEmailIdentityDkimSigningAttributesOutput
    PutEmailIdentityFeedbackAttributesInput: PutEmailIdentityFeedbackAttributesInput
    PutEmailIdentityFeedbackAttributesOutput: PutEmailIdentityFeedbackAttributesOutput
    PutEmailIdentityMailFromAttributesInput: PutEmailIdentityMailFromAttributesInput
    PutEmailIdentityMailFromAttributesOutput: PutEmailIdentityMailFromAttributesOutput
    PutSuppressedDestinationInput: PutSuppressedDestinationInput
    PutSuppressedDestinationOutput: PutSuppressedDestinationOutput
    SendBulkEmailInput: SendBulkEmailInput
    SendBulkEmailOutput: SendBulkEmailOutput
    SendCustomVerificationEmailInput: SendCustomVerificationEmailInput
    SendCustomVerificationEmailOutput: SendCustomVerificationEmailOutput
    SendEmailInput: SendEmailInput
    SendEmailOutput: SendEmailOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TestRenderEmailTemplateInput: TestRenderEmailTemplateInput
    TestRenderEmailTemplateOutput: TestRenderEmailTemplateOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateConfigurationSetEventDestinationInput: UpdateConfigurationSetEventDestinationInput
    UpdateConfigurationSetEventDestinationOutput: UpdateConfigurationSetEventDestinationOutput
    UpdateContactInput: UpdateContactInput
    UpdateContactOutput: UpdateContactOutput
    UpdateContactListInput: UpdateContactListInput
    UpdateContactListOutput: UpdateContactListOutput
    UpdateCustomVerificationEmailTemplateInput: UpdateCustomVerificationEmailTemplateInput
    UpdateCustomVerificationEmailTemplateOutput: UpdateCustomVerificationEmailTemplateOutput
    UpdateEmailIdentityPolicyInput: UpdateEmailIdentityPolicyInput
    UpdateEmailIdentityPolicyOutput: UpdateEmailIdentityPolicyOutput
    UpdateEmailTemplateInput: UpdateEmailTemplateInput
    UpdateEmailTemplateOutput: UpdateEmailTemplateOutput
    UpdateReputationEntityCustomerManagedStatusInput: UpdateReputationEntityCustomerManagedStatusInput
    UpdateReputationEntityCustomerManagedStatusOutput: UpdateReputationEntityCustomerManagedStatusOutput
    UpdateReputationEntityPolicyInput: UpdateReputationEntityPolicyInput
    UpdateReputationEntityPolicyOutput: UpdateReputationEntityPolicyOutput
end

return M
