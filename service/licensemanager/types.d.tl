local record AcceptGrantInput
    GrantArn: string
end

local record AcceptGrantOutput
    GrantArn: string
    Status: string
    Version: string
end

local record CheckInLicenseInput
    LicenseConsumptionToken: string
    Beneficiary: string
end

local record CheckInLicenseOutput
end

local record CheckoutBorrowLicenseInput
    LicenseArn: string
    Entitlements: {EntitlementData}
    DigitalSignatureMethod: string
    NodeId: string
    CheckoutMetadata: {Metadata}
    ClientToken: string
end

local record CheckoutBorrowLicenseOutput
    LicenseArn: string
    LicenseConsumptionToken: string
    EntitlementsAllowed: {EntitlementData}
    NodeId: string
    SignedToken: string
    IssuedAt: string
    Expiration: string
    CheckoutMetadata: {Metadata}
end

local record CheckoutLicenseInput
    ProductSKU: string
    CheckoutType: string
    KeyFingerprint: string
    Entitlements: {EntitlementData}
    ClientToken: string
    Beneficiary: string
    NodeId: string
end

local record CheckoutLicenseOutput
    CheckoutType: string
    LicenseConsumptionToken: string
    EntitlementsAllowed: {EntitlementData}
    SignedToken: string
    NodeId: string
    IssuedAt: string
    Expiration: string
    LicenseArn: string
end

local record CreateGrantInput
    ClientToken: string
    GrantName: string
    LicenseArn: string
    Principals: {string}
    HomeRegion: string
    AllowedOperations: {string}
    Tags: {Tag}
end

local record CreateGrantOutput
    GrantArn: string
    Status: string
    Version: string
end

local record CreateGrantVersionInput
    ClientToken: string
    GrantArn: string
    GrantName: string
    AllowedOperations: {string}
    Status: string
    StatusReason: string
    SourceVersion: string
    Options: Options
end

local record CreateGrantVersionOutput
    GrantArn: string
    Status: string
    Version: string
end

local record CreateLicenseInput
    LicenseName: string
    ProductName: string
    ProductSKU: string
    Issuer: Issuer
    HomeRegion: string
    Validity: DatetimeRange
    Entitlements: {Entitlement}
    Beneficiary: string
    ConsumptionConfiguration: ConsumptionConfiguration
    LicenseMetadata: {Metadata}
    ClientToken: string
    Tags: {Tag}
end

local record CreateLicenseOutput
    LicenseArn: string
    Status: string
    Version: string
end

local record CreateLicenseAssetGroupInput
    Name: string
    Description: string
    LicenseAssetGroupConfigurations: {LicenseAssetGroupConfiguration}
    AssociatedLicenseAssetRulesetARNs: {string}
    Properties: {LicenseAssetGroupProperty}
    Tags: {Tag}
    ClientToken: string
end

local record CreateLicenseAssetGroupOutput
    LicenseAssetGroupArn: string
    Status: string
end

local record CreateLicenseAssetRulesetInput
    Name: string
    Description: string
    Rules: {LicenseAssetRule}
    Tags: {Tag}
    ClientToken: string
end

local record CreateLicenseAssetRulesetOutput
    LicenseAssetRulesetArn: string
end

local record CreateLicenseConfigurationInput
    Name: string
    Description: string
    LicenseCountingType: string
    LicenseCount: number
    LicenseCountHardLimit: boolean
    LicenseRules: {string}
    Tags: {Tag}
    DisassociateWhenNotFound: boolean
    ProductInformationList: {ProductInformation}
    LicenseExpiry: number
end

local record CreateLicenseConfigurationOutput
    LicenseConfigurationArn: string
end

local record CreateLicenseConversionTaskForResourceInput
    ResourceArn: string
    SourceLicenseContext: LicenseConversionContext
    DestinationLicenseContext: LicenseConversionContext
end

local record CreateLicenseConversionTaskForResourceOutput
    LicenseConversionTaskId: string
end

local record CreateLicenseManagerReportGeneratorInput
    ReportGeneratorName: string
    Type: {string}
    ReportContext: ReportContext
    ReportFrequency: ReportFrequency
    ClientToken: string
    Description: string
    Tags: {Tag}
end

local record CreateLicenseManagerReportGeneratorOutput
    LicenseManagerReportGeneratorArn: string
end

local record CreateLicenseVersionInput
    LicenseArn: string
    LicenseName: string
    ProductName: string
    Issuer: Issuer
    HomeRegion: string
    Validity: DatetimeRange
    LicenseMetadata: {Metadata}
    Entitlements: {Entitlement}
    ConsumptionConfiguration: ConsumptionConfiguration
    Status: string
    ClientToken: string
    SourceVersion: string
end

local record CreateLicenseVersionOutput
    LicenseArn: string
    Version: string
    Status: string
end

local record CreateTokenInput
    LicenseArn: string
    RoleArns: {string}
    ExpirationInDays: number
    TokenProperties: {string}
    ClientToken: string
end

local record CreateTokenOutput
    TokenId: string
    TokenType: string
    Token: string
end

local record DeleteGrantInput
    GrantArn: string
    StatusReason: string
    Version: string
end

local record DeleteGrantOutput
    GrantArn: string
    Status: string
    Version: string
end

local record DeleteLicenseInput
    LicenseArn: string
    SourceVersion: string
end

local record DeleteLicenseOutput
    Status: string
    DeletionDate: string
end

local record DeleteLicenseAssetGroupInput
    LicenseAssetGroupArn: string
end

local record DeleteLicenseAssetGroupOutput
    Status: string
end

local record DeleteLicenseAssetRulesetInput
    LicenseAssetRulesetArn: string
end

local record DeleteLicenseAssetRulesetOutput
end

local record DeleteLicenseConfigurationInput
    LicenseConfigurationArn: string
end

local record DeleteLicenseConfigurationOutput
end

local record DeleteLicenseManagerReportGeneratorInput
    LicenseManagerReportGeneratorArn: string
end

local record DeleteLicenseManagerReportGeneratorOutput
end

local record DeleteTokenInput
    TokenId: string
end

local record DeleteTokenOutput
end

local record ExtendLicenseConsumptionInput
    LicenseConsumptionToken: string
    DryRun: boolean
end

local record ExtendLicenseConsumptionOutput
    LicenseConsumptionToken: string
    Expiration: string
end

local record GetAccessTokenInput
    Token: string
    TokenProperties: {string}
end

local record GetAccessTokenOutput
    AccessToken: string
end

local record GetGrantInput
    GrantArn: string
    Version: string
end

local record GetGrantOutput
    Grant: Grant
end

local record GetLicenseInput
    LicenseArn: string
    Version: string
end

local record GetLicenseOutput
    License: License
end

local record GetLicenseAssetGroupInput
    LicenseAssetGroupArn: string
end

local record GetLicenseAssetGroupOutput
    LicenseAssetGroup: LicenseAssetGroup
end

local record GetLicenseAssetRulesetInput
    LicenseAssetRulesetArn: string
end

local record GetLicenseAssetRulesetOutput
    LicenseAssetRuleset: LicenseAssetRuleset
end

local record GetLicenseConfigurationInput
    LicenseConfigurationArn: string
end

local record GetLicenseConfigurationOutput
    LicenseConfigurationId: string
    LicenseConfigurationArn: string
    Name: string
    Description: string
    LicenseCountingType: string
    LicenseRules: {string}
    LicenseCount: number
    LicenseCountHardLimit: boolean
    ConsumedLicenses: number
    Status: string
    OwnerAccountId: string
    ConsumedLicenseSummaryList: {ConsumedLicenseSummary}
    ManagedResourceSummaryList: {ManagedResourceSummary}
    Tags: {Tag}
    ProductInformationList: {ProductInformation}
    AutomatedDiscoveryInformation: AutomatedDiscoveryInformation
    DisassociateWhenNotFound: boolean
    LicenseExpiry: number
end

local record GetLicenseConversionTaskInput
    LicenseConversionTaskId: string
end

local record GetLicenseConversionTaskOutput
    LicenseConversionTaskId: string
    ResourceArn: string
    SourceLicenseContext: LicenseConversionContext
    DestinationLicenseContext: LicenseConversionContext
    StatusMessage: string
    Status: string
    StartTime: number
    LicenseConversionTime: number
    EndTime: number
end

local record GetLicenseManagerReportGeneratorInput
    LicenseManagerReportGeneratorArn: string
end

local record GetLicenseManagerReportGeneratorOutput
    ReportGenerator: ReportGenerator
end

local record GetLicenseUsageInput
    LicenseArn: string
end

local record GetLicenseUsageOutput
    LicenseUsage: LicenseUsage
end

local record GetServiceSettingsInput
end

local record GetServiceSettingsOutput
    S3BucketArn: string
    SnsTopicArn: string
    OrganizationConfiguration: OrganizationConfiguration
    EnableCrossAccountsDiscovery: boolean
    LicenseManagerResourceShareArn: string
    CrossRegionDiscoveryHomeRegion: string
    CrossRegionDiscoverySourceRegions: {string}
    ServiceStatus: ServiceStatus
end

local record ListAssetsForLicenseAssetGroupInput
    LicenseAssetGroupArn: string
    AssetType: string
    MaxResults: number
    NextToken: string
end

local record ListAssetsForLicenseAssetGroupOutput
    Assets: {Asset}
    NextToken: string
end

local record ListAssociationsForLicenseConfigurationInput
    LicenseConfigurationArn: string
    MaxResults: number
    NextToken: string
end

local record ListAssociationsForLicenseConfigurationOutput
    LicenseConfigurationAssociations: {LicenseConfigurationAssociation}
    NextToken: string
end

local record ListDistributedGrantsInput
    GrantArns: {string}
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record ListDistributedGrantsOutput
    Grants: {Grant}
    NextToken: string
end

local record ListFailuresForLicenseConfigurationOperationsInput
    LicenseConfigurationArn: string
    MaxResults: number
    NextToken: string
end

local record ListFailuresForLicenseConfigurationOperationsOutput
    LicenseOperationFailureList: {LicenseOperationFailure}
    NextToken: string
end

local record ListLicenseAssetGroupsInput
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record ListLicenseAssetGroupsOutput
    LicenseAssetGroups: {LicenseAssetGroup}
    NextToken: string
end

local record ListLicenseAssetRulesetsInput
    Filters: {Filter}
    ShowAWSManagedLicenseAssetRulesets: boolean
    MaxResults: number
    NextToken: string
end

local record ListLicenseAssetRulesetsOutput
    LicenseAssetRulesets: {LicenseAssetRuleset}
    NextToken: string
end

local record ListLicenseConfigurationsInput
    LicenseConfigurationArns: {string}
    MaxResults: number
    NextToken: string
    Filters: {Filter}
end

local record ListLicenseConfigurationsOutput
    LicenseConfigurations: {LicenseConfiguration}
    NextToken: string
end

local record ListLicenseConfigurationsForOrganizationInput
    LicenseConfigurationArns: {string}
    MaxResults: number
    NextToken: string
    Filters: {Filter}
end

local record ListLicenseConfigurationsForOrganizationOutput
    LicenseConfigurations: {LicenseConfiguration}
    NextToken: string
end

local record ListLicenseConversionTasksInput
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record ListLicenseConversionTasksOutput
    LicenseConversionTasks: {LicenseConversionTask}
    NextToken: string
end

local record ListLicenseManagerReportGeneratorsInput
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record ListLicenseManagerReportGeneratorsOutput
    ReportGenerators: {ReportGenerator}
    NextToken: string
end

local record ListLicensesInput
    LicenseArns: {string}
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record ListLicensesOutput
    Licenses: {License}
    NextToken: string
end

local record ListLicenseSpecificationsForResourceInput
    ResourceArn: string
    MaxResults: number
    NextToken: string
end

local record ListLicenseSpecificationsForResourceOutput
    LicenseSpecifications: {LicenseSpecification}
    NextToken: string
end

local record ListLicenseVersionsInput
    LicenseArn: string
    NextToken: string
    MaxResults: number
end

local record ListLicenseVersionsOutput
    Licenses: {License}
    NextToken: string
end

local record ListReceivedGrantsInput
    GrantArns: {string}
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record ListReceivedGrantsOutput
    Grants: {Grant}
    NextToken: string
end

local record ListReceivedGrantsForOrganizationInput
    LicenseArn: string
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record ListReceivedGrantsForOrganizationOutput
    Grants: {Grant}
    NextToken: string
end

local record ListReceivedLicensesInput
    LicenseArns: {string}
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record ListReceivedLicensesOutput
    Licenses: {GrantedLicense}
    NextToken: string
end

local record ListReceivedLicensesForOrganizationInput
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record ListReceivedLicensesForOrganizationOutput
    Licenses: {GrantedLicense}
    NextToken: string
end

local record ListResourceInventoryInput
    MaxResults: number
    NextToken: string
    Filters: {InventoryFilter}
end

local record ListResourceInventoryOutput
    ResourceInventoryList: {ResourceInventory}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ListTokensInput
    TokenIds: {string}
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record ListTokensOutput
    Tokens: {TokenData}
    NextToken: string
end

local record ListUsageForLicenseConfigurationInput
    LicenseConfigurationArn: string
    MaxResults: number
    NextToken: string
    Filters: {Filter}
end

local record ListUsageForLicenseConfigurationOutput
    LicenseConfigurationUsageList: {LicenseConfigurationUsage}
    NextToken: string
end

local record RejectGrantInput
    GrantArn: string
end

local record RejectGrantOutput
    GrantArn: string
    Status: string
    Version: string
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

local record UpdateLicenseAssetGroupInput
    Name: string
    Description: string
    LicenseAssetGroupConfigurations: {LicenseAssetGroupConfiguration}
    AssociatedLicenseAssetRulesetARNs: {string}
    Properties: {LicenseAssetGroupProperty}
    LicenseAssetGroupArn: string
    Status: string
    ClientToken: string
end

local record UpdateLicenseAssetGroupOutput
    LicenseAssetGroupArn: string
    Status: string
end

local record UpdateLicenseAssetRulesetInput
    Name: string
    Description: string
    Rules: {LicenseAssetRule}
    LicenseAssetRulesetArn: string
    ClientToken: string
end

local record UpdateLicenseAssetRulesetOutput
    LicenseAssetRulesetArn: string
end

local record UpdateLicenseConfigurationInput
    LicenseConfigurationArn: string
    LicenseConfigurationStatus: string
    LicenseRules: {string}
    LicenseCount: number
    LicenseCountHardLimit: boolean
    Name: string
    Description: string
    ProductInformationList: {ProductInformation}
    DisassociateWhenNotFound: boolean
    LicenseExpiry: number
end

local record UpdateLicenseConfigurationOutput
end

local record UpdateLicenseManagerReportGeneratorInput
    LicenseManagerReportGeneratorArn: string
    ReportGeneratorName: string
    Type: {string}
    ReportContext: ReportContext
    ReportFrequency: ReportFrequency
    ClientToken: string
    Description: string
end

local record UpdateLicenseManagerReportGeneratorOutput
end

local record UpdateLicenseSpecificationsForResourceInput
    ResourceArn: string
    AddLicenseSpecifications: {LicenseSpecification}
    RemoveLicenseSpecifications: {LicenseSpecification}
end

local record UpdateLicenseSpecificationsForResourceOutput
end

local record UpdateServiceSettingsInput
    S3BucketArn: string
    SnsTopicArn: string
    OrganizationConfiguration: OrganizationConfiguration
    EnableCrossAccountsDiscovery: boolean
    EnabledDiscoverySourceRegions: {string}
end

local record UpdateServiceSettingsOutput
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record EntitlementNotAllowedException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record NoEntitlementsAllowedException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record RedirectException
    Location: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record UnsupportedDigitalSignatureMethodException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record NoEntitlementsAllowedException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record RedirectException
    Location: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record UnsupportedDigitalSignatureMethodException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record RedirectException
    Location: string
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record ConflictException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record RedirectException
    Location: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record RedirectException
    Location: string
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record RedirectException
    Location: string
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record RedirectException
    Location: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record FilterLimitExceededException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record FilterLimitExceededException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record FilterLimitExceededException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record FailedDependencyException
    Message: string
    ErrorCode: string
end

local record FilterLimitExceededException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record FilterLimitExceededException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record InvalidResourceStateException
    Message: string
end

local record LicenseUsageException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AuthorizationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record RateLimitExceededException
    Message: string
end

local record ServerInternalException
    Message: string
end

local record ValidationException
    Message: string
end

local type LicenseConfigurationStatus = "AVAILABLE" | "DISABLED"

local type LicenseDeletionStatus = "PENDING_DELETE" | "DELETED"

local type LicenseConversionTaskStatus = "IN_PROGRESS" | "SUCCEEDED" | "FAILED"

local type TokenType = "REFRESH_TOKEN"

local type DigitalSignatureMethod = "JWT_PS384"

local type LicenseCountingType = "vCPU" | "Instance" | "Core" | "Socket"

local type CheckoutType = "PROVISIONAL" | "PERPETUAL"

local type GrantStatus = "PENDING_WORKFLOW" | "PENDING_ACCEPT" | "REJECTED" | "ACTIVE" | "FAILED_WORKFLOW" | "DELETED" | "PENDING_DELETE" | "DISABLED" | "WORKFLOW_COMPLETED"

local type LicenseStatus = "AVAILABLE" | "PENDING_AVAILABLE" | "DEACTIVATED" | "SUSPENDED" | "EXPIRED" | "PENDING_DELETE" | "DELETED"

local type LicenseAssetGroupStatus = "ACTIVE" | "DISABLED" | "DELETED"

local record M
    AcceptGrantInput: AcceptGrantInput
    AcceptGrantOutput: AcceptGrantOutput
    CheckInLicenseInput: CheckInLicenseInput
    CheckInLicenseOutput: CheckInLicenseOutput
    CheckoutBorrowLicenseInput: CheckoutBorrowLicenseInput
    CheckoutBorrowLicenseOutput: CheckoutBorrowLicenseOutput
    CheckoutLicenseInput: CheckoutLicenseInput
    CheckoutLicenseOutput: CheckoutLicenseOutput
    CreateGrantInput: CreateGrantInput
    CreateGrantOutput: CreateGrantOutput
    CreateGrantVersionInput: CreateGrantVersionInput
    CreateGrantVersionOutput: CreateGrantVersionOutput
    CreateLicenseInput: CreateLicenseInput
    CreateLicenseOutput: CreateLicenseOutput
    CreateLicenseAssetGroupInput: CreateLicenseAssetGroupInput
    CreateLicenseAssetGroupOutput: CreateLicenseAssetGroupOutput
    CreateLicenseAssetRulesetInput: CreateLicenseAssetRulesetInput
    CreateLicenseAssetRulesetOutput: CreateLicenseAssetRulesetOutput
    CreateLicenseConfigurationInput: CreateLicenseConfigurationInput
    CreateLicenseConfigurationOutput: CreateLicenseConfigurationOutput
    CreateLicenseConversionTaskForResourceInput: CreateLicenseConversionTaskForResourceInput
    CreateLicenseConversionTaskForResourceOutput: CreateLicenseConversionTaskForResourceOutput
    CreateLicenseManagerReportGeneratorInput: CreateLicenseManagerReportGeneratorInput
    CreateLicenseManagerReportGeneratorOutput: CreateLicenseManagerReportGeneratorOutput
    CreateLicenseVersionInput: CreateLicenseVersionInput
    CreateLicenseVersionOutput: CreateLicenseVersionOutput
    CreateTokenInput: CreateTokenInput
    CreateTokenOutput: CreateTokenOutput
    DeleteGrantInput: DeleteGrantInput
    DeleteGrantOutput: DeleteGrantOutput
    DeleteLicenseInput: DeleteLicenseInput
    DeleteLicenseOutput: DeleteLicenseOutput
    DeleteLicenseAssetGroupInput: DeleteLicenseAssetGroupInput
    DeleteLicenseAssetGroupOutput: DeleteLicenseAssetGroupOutput
    DeleteLicenseAssetRulesetInput: DeleteLicenseAssetRulesetInput
    DeleteLicenseAssetRulesetOutput: DeleteLicenseAssetRulesetOutput
    DeleteLicenseConfigurationInput: DeleteLicenseConfigurationInput
    DeleteLicenseConfigurationOutput: DeleteLicenseConfigurationOutput
    DeleteLicenseManagerReportGeneratorInput: DeleteLicenseManagerReportGeneratorInput
    DeleteLicenseManagerReportGeneratorOutput: DeleteLicenseManagerReportGeneratorOutput
    DeleteTokenInput: DeleteTokenInput
    DeleteTokenOutput: DeleteTokenOutput
    ExtendLicenseConsumptionInput: ExtendLicenseConsumptionInput
    ExtendLicenseConsumptionOutput: ExtendLicenseConsumptionOutput
    GetAccessTokenInput: GetAccessTokenInput
    GetAccessTokenOutput: GetAccessTokenOutput
    GetGrantInput: GetGrantInput
    GetGrantOutput: GetGrantOutput
    GetLicenseInput: GetLicenseInput
    GetLicenseOutput: GetLicenseOutput
    GetLicenseAssetGroupInput: GetLicenseAssetGroupInput
    GetLicenseAssetGroupOutput: GetLicenseAssetGroupOutput
    GetLicenseAssetRulesetInput: GetLicenseAssetRulesetInput
    GetLicenseAssetRulesetOutput: GetLicenseAssetRulesetOutput
    GetLicenseConfigurationInput: GetLicenseConfigurationInput
    GetLicenseConfigurationOutput: GetLicenseConfigurationOutput
    GetLicenseConversionTaskInput: GetLicenseConversionTaskInput
    GetLicenseConversionTaskOutput: GetLicenseConversionTaskOutput
    GetLicenseManagerReportGeneratorInput: GetLicenseManagerReportGeneratorInput
    GetLicenseManagerReportGeneratorOutput: GetLicenseManagerReportGeneratorOutput
    GetLicenseUsageInput: GetLicenseUsageInput
    GetLicenseUsageOutput: GetLicenseUsageOutput
    GetServiceSettingsInput: GetServiceSettingsInput
    GetServiceSettingsOutput: GetServiceSettingsOutput
    ListAssetsForLicenseAssetGroupInput: ListAssetsForLicenseAssetGroupInput
    ListAssetsForLicenseAssetGroupOutput: ListAssetsForLicenseAssetGroupOutput
    ListAssociationsForLicenseConfigurationInput: ListAssociationsForLicenseConfigurationInput
    ListAssociationsForLicenseConfigurationOutput: ListAssociationsForLicenseConfigurationOutput
    ListDistributedGrantsInput: ListDistributedGrantsInput
    ListDistributedGrantsOutput: ListDistributedGrantsOutput
    ListFailuresForLicenseConfigurationOperationsInput: ListFailuresForLicenseConfigurationOperationsInput
    ListFailuresForLicenseConfigurationOperationsOutput: ListFailuresForLicenseConfigurationOperationsOutput
    ListLicenseAssetGroupsInput: ListLicenseAssetGroupsInput
    ListLicenseAssetGroupsOutput: ListLicenseAssetGroupsOutput
    ListLicenseAssetRulesetsInput: ListLicenseAssetRulesetsInput
    ListLicenseAssetRulesetsOutput: ListLicenseAssetRulesetsOutput
    ListLicenseConfigurationsInput: ListLicenseConfigurationsInput
    ListLicenseConfigurationsOutput: ListLicenseConfigurationsOutput
    ListLicenseConfigurationsForOrganizationInput: ListLicenseConfigurationsForOrganizationInput
    ListLicenseConfigurationsForOrganizationOutput: ListLicenseConfigurationsForOrganizationOutput
    ListLicenseConversionTasksInput: ListLicenseConversionTasksInput
    ListLicenseConversionTasksOutput: ListLicenseConversionTasksOutput
    ListLicenseManagerReportGeneratorsInput: ListLicenseManagerReportGeneratorsInput
    ListLicenseManagerReportGeneratorsOutput: ListLicenseManagerReportGeneratorsOutput
    ListLicensesInput: ListLicensesInput
    ListLicensesOutput: ListLicensesOutput
    ListLicenseSpecificationsForResourceInput: ListLicenseSpecificationsForResourceInput
    ListLicenseSpecificationsForResourceOutput: ListLicenseSpecificationsForResourceOutput
    ListLicenseVersionsInput: ListLicenseVersionsInput
    ListLicenseVersionsOutput: ListLicenseVersionsOutput
    ListReceivedGrantsInput: ListReceivedGrantsInput
    ListReceivedGrantsOutput: ListReceivedGrantsOutput
    ListReceivedGrantsForOrganizationInput: ListReceivedGrantsForOrganizationInput
    ListReceivedGrantsForOrganizationOutput: ListReceivedGrantsForOrganizationOutput
    ListReceivedLicensesInput: ListReceivedLicensesInput
    ListReceivedLicensesOutput: ListReceivedLicensesOutput
    ListReceivedLicensesForOrganizationInput: ListReceivedLicensesForOrganizationInput
    ListReceivedLicensesForOrganizationOutput: ListReceivedLicensesForOrganizationOutput
    ListResourceInventoryInput: ListResourceInventoryInput
    ListResourceInventoryOutput: ListResourceInventoryOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTokensInput: ListTokensInput
    ListTokensOutput: ListTokensOutput
    ListUsageForLicenseConfigurationInput: ListUsageForLicenseConfigurationInput
    ListUsageForLicenseConfigurationOutput: ListUsageForLicenseConfigurationOutput
    RejectGrantInput: RejectGrantInput
    RejectGrantOutput: RejectGrantOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateLicenseAssetGroupInput: UpdateLicenseAssetGroupInput
    UpdateLicenseAssetGroupOutput: UpdateLicenseAssetGroupOutput
    UpdateLicenseAssetRulesetInput: UpdateLicenseAssetRulesetInput
    UpdateLicenseAssetRulesetOutput: UpdateLicenseAssetRulesetOutput
    UpdateLicenseConfigurationInput: UpdateLicenseConfigurationInput
    UpdateLicenseConfigurationOutput: UpdateLicenseConfigurationOutput
    UpdateLicenseManagerReportGeneratorInput: UpdateLicenseManagerReportGeneratorInput
    UpdateLicenseManagerReportGeneratorOutput: UpdateLicenseManagerReportGeneratorOutput
    UpdateLicenseSpecificationsForResourceInput: UpdateLicenseSpecificationsForResourceInput
    UpdateLicenseSpecificationsForResourceOutput: UpdateLicenseSpecificationsForResourceOutput
    UpdateServiceSettingsInput: UpdateServiceSettingsInput
    UpdateServiceSettingsOutput: UpdateServiceSettingsOutput
end

return M
