local record AssociateWebACLInput
    WebACLArn: string
    ResourceArn: string
end

local record AssociateWebACLOutput
end

local record CheckCapacityInput
    Scope: string
    Rules: {Rule}
end

local record CheckCapacityOutput
    Capacity: number
end

local record CreateAPIKeyInput
    Scope: string
    TokenDomains: {string}
end

local record CreateAPIKeyOutput
    APIKey: string
end

local record CreateIPSetInput
    Name: string
    Scope: string
    Description: string
    IPAddressVersion: string
    Addresses: {string}
    Tags: {Tag}
end

local record CreateIPSetOutput
    Summary: IPSetSummary
end

local record CreateRegexPatternSetInput
    Name: string
    Scope: string
    Description: string
    RegularExpressionList: {Regex}
    Tags: {Tag}
end

local record CreateRegexPatternSetOutput
    Summary: RegexPatternSetSummary
end

local record CreateRuleGroupInput
    Name: string
    Scope: string
    Capacity: number
    Description: string
    Rules: {Rule}
    VisibilityConfig: VisibilityConfig
    Tags: {Tag}
    CustomResponseBodies: {string : CustomResponseBody}
end

local record CreateRuleGroupOutput
    Summary: RuleGroupSummary
end

local record CreateWebACLInput
    Name: string
    Scope: string
    DefaultAction: DefaultAction
    Description: string
    Rules: {Rule}
    VisibilityConfig: VisibilityConfig
    DataProtectionConfig: DataProtectionConfig
    Tags: {Tag}
    CustomResponseBodies: {string : CustomResponseBody}
    CaptchaConfig: CaptchaConfig
    ChallengeConfig: ChallengeConfig
    TokenDomains: {string}
    AssociationConfig: AssociationConfig
    OnSourceDDoSProtectionConfig: OnSourceDDoSProtectionConfig
    ApplicationConfig: ApplicationConfig
end

local record CreateWebACLOutput
    Summary: WebACLSummary
end

local record DeleteAPIKeyInput
    Scope: string
    APIKey: string
end

local record DeleteAPIKeyOutput
end

local record DeleteFirewallManagerRuleGroupsInput
    WebACLArn: string
    WebACLLockToken: string
end

local record DeleteFirewallManagerRuleGroupsOutput
    NextWebACLLockToken: string
end

local record DeleteIPSetInput
    Name: string
    Scope: string
    Id: string
    LockToken: string
end

local record DeleteIPSetOutput
end

local record DeleteLoggingConfigurationInput
    ResourceArn: string
    LogType: string
    LogScope: string
end

local record DeleteLoggingConfigurationOutput
end

local record DeletePermissionPolicyInput
    ResourceArn: string
end

local record DeletePermissionPolicyOutput
end

local record DeleteRegexPatternSetInput
    Name: string
    Scope: string
    Id: string
    LockToken: string
end

local record DeleteRegexPatternSetOutput
end

local record DeleteRuleGroupInput
    Name: string
    Scope: string
    Id: string
    LockToken: string
end

local record DeleteRuleGroupOutput
end

local record DeleteWebACLInput
    Name: string
    Scope: string
    Id: string
    LockToken: string
end

local record DeleteWebACLOutput
end

local record DescribeAllManagedProductsInput
    Scope: string
end

local record DescribeAllManagedProductsOutput
    ManagedProducts: {ManagedProductDescriptor}
end

local record DescribeManagedProductsByVendorInput
    VendorName: string
    Scope: string
end

local record DescribeManagedProductsByVendorOutput
    ManagedProducts: {ManagedProductDescriptor}
end

local record DescribeManagedRuleGroupInput
    VendorName: string
    Name: string
    Scope: string
    VersionName: string
end

local record DescribeManagedRuleGroupOutput
    VersionName: string
    SnsTopicArn: string
    Capacity: number
    Rules: {RuleSummary}
    LabelNamespace: string
    AvailableLabels: {LabelSummary}
    ConsumedLabels: {LabelSummary}
end

local record DisassociateWebACLInput
    ResourceArn: string
end

local record DisassociateWebACLOutput
end

local record GenerateMobileSdkReleaseUrlInput
    Platform: string
    ReleaseVersion: string
end

local record GenerateMobileSdkReleaseUrlOutput
    Url: string
end

local record GetDecryptedAPIKeyInput
    Scope: string
    APIKey: string
end

local record GetDecryptedAPIKeyOutput
    TokenDomains: {string}
    CreationTimestamp: number
end

local record GetIPSetInput
    Name: string
    Scope: string
    Id: string
end

local record GetIPSetOutput
    IPSet: IPSet
    LockToken: string
end

local record GetLoggingConfigurationInput
    ResourceArn: string
    LogType: string
    LogScope: string
end

local record GetLoggingConfigurationOutput
    LoggingConfiguration: LoggingConfiguration
end

local record GetManagedRuleSetInput
    Name: string
    Scope: string
    Id: string
end

local record GetManagedRuleSetOutput
    ManagedRuleSet: ManagedRuleSet
    LockToken: string
end

local record GetMobileSdkReleaseInput
    Platform: string
    ReleaseVersion: string
end

local record GetMobileSdkReleaseOutput
    MobileSdkRelease: MobileSdkRelease
end

local record GetPermissionPolicyInput
    ResourceArn: string
end

local record GetPermissionPolicyOutput
    Policy: string
end

local record GetRateBasedStatementManagedKeysInput
    Scope: string
    WebACLName: string
    WebACLId: string
    RuleGroupRuleName: string
    RuleName: string
end

local record GetRateBasedStatementManagedKeysOutput
    ManagedKeysIPV4: RateBasedStatementManagedKeysIPSet
    ManagedKeysIPV6: RateBasedStatementManagedKeysIPSet
end

local record GetRegexPatternSetInput
    Name: string
    Scope: string
    Id: string
end

local record GetRegexPatternSetOutput
    RegexPatternSet: RegexPatternSet
    LockToken: string
end

local record GetRuleGroupInput
    Name: string
    Scope: string
    Id: string
    ARN: string
end

local record GetRuleGroupOutput
    RuleGroup: RuleGroup
    LockToken: string
end

local record GetSampledRequestsInput
    WebAclArn: string
    RuleMetricName: string
    Scope: string
    TimeWindow: TimeWindow
    MaxItems: number
end

local record GetSampledRequestsOutput
    SampledRequests: {SampledHTTPRequest}
    PopulationSize: number
    TimeWindow: TimeWindow
end

local record GetTopPathStatisticsByTrafficInput
    WebAclArn: string
    Scope: string
    UriPathPrefix: string
    TimeWindow: TimeWindow
    BotCategory: string
    BotOrganization: string
    BotName: string
    Limit: number
    NumberOfTopTrafficBotsPerPath: number
    NextMarker: string
end

local record GetTopPathStatisticsByTrafficOutput
    PathStatistics: {PathStatistics}
    TotalRequestCount: number
    NextMarker: string
    TopCategories: {PathStatistics}
end

local record GetWebACLInput
    Name: string
    Scope: string
    Id: string
    ARN: string
end

local record GetWebACLOutput
    WebACL: WebACL
    LockToken: string
    ApplicationIntegrationURL: string
end

local record GetWebACLForResourceInput
    ResourceArn: string
end

local record GetWebACLForResourceOutput
    WebACL: WebACL
end

local record ListAPIKeysInput
    Scope: string
    NextMarker: string
    Limit: number
end

local record ListAPIKeysOutput
    NextMarker: string
    APIKeySummaries: {APIKeySummary}
    ApplicationIntegrationURL: string
end

local record ListAvailableManagedRuleGroupsInput
    Scope: string
    NextMarker: string
    Limit: number
end

local record ListAvailableManagedRuleGroupsOutput
    NextMarker: string
    ManagedRuleGroups: {ManagedRuleGroupSummary}
end

local record ListAvailableManagedRuleGroupVersionsInput
    VendorName: string
    Name: string
    Scope: string
    NextMarker: string
    Limit: number
end

local record ListAvailableManagedRuleGroupVersionsOutput
    NextMarker: string
    Versions: {ManagedRuleGroupVersion}
    CurrentDefaultVersion: string
end

local record ListIPSetsInput
    Scope: string
    NextMarker: string
    Limit: number
end

local record ListIPSetsOutput
    NextMarker: string
    IPSets: {IPSetSummary}
end

local record ListLoggingConfigurationsInput
    Scope: string
    NextMarker: string
    Limit: number
    LogScope: string
end

local record ListLoggingConfigurationsOutput
    LoggingConfigurations: {LoggingConfiguration}
    NextMarker: string
end

local record ListManagedRuleSetsInput
    Scope: string
    NextMarker: string
    Limit: number
end

local record ListManagedRuleSetsOutput
    NextMarker: string
    ManagedRuleSets: {ManagedRuleSetSummary}
end

local record ListMobileSdkReleasesInput
    Platform: string
    NextMarker: string
    Limit: number
end

local record ListMobileSdkReleasesOutput
    ReleaseSummaries: {ReleaseSummary}
    NextMarker: string
end

local record ListRegexPatternSetsInput
    Scope: string
    NextMarker: string
    Limit: number
end

local record ListRegexPatternSetsOutput
    NextMarker: string
    RegexPatternSets: {RegexPatternSetSummary}
end

local record ListResourcesForWebACLInput
    WebACLArn: string
    ResourceType: string
end

local record ListResourcesForWebACLOutput
    ResourceArns: {string}
end

local record ListRuleGroupsInput
    Scope: string
    NextMarker: string
    Limit: number
end

local record ListRuleGroupsOutput
    NextMarker: string
    RuleGroups: {RuleGroupSummary}
end

local record ListTagsForResourceInput
    NextMarker: string
    Limit: number
    ResourceARN: string
end

local record ListTagsForResourceOutput
    NextMarker: string
    TagInfoForResource: TagInfoForResource
end

local record ListWebACLsInput
    Scope: string
    NextMarker: string
    Limit: number
end

local record ListWebACLsOutput
    NextMarker: string
    WebACLs: {WebACLSummary}
end

local record PutLoggingConfigurationInput
    LoggingConfiguration: LoggingConfiguration
end

local record PutLoggingConfigurationOutput
    LoggingConfiguration: LoggingConfiguration
end

local record PutManagedRuleSetVersionsInput
    Name: string
    Scope: string
    Id: string
    LockToken: string
    RecommendedVersion: string
    VersionsToPublish: {string : VersionToPublish}
end

local record PutManagedRuleSetVersionsOutput
    NextLockToken: string
end

local record PutPermissionPolicyInput
    ResourceArn: string
    Policy: string
end

local record PutPermissionPolicyOutput
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateIPSetInput
    Name: string
    Scope: string
    Id: string
    Description: string
    Addresses: {string}
    LockToken: string
end

local record UpdateIPSetOutput
    NextLockToken: string
end

local record UpdateManagedRuleSetVersionExpiryDateInput
    Name: string
    Scope: string
    Id: string
    LockToken: string
    VersionToExpire: string
    ExpiryTimestamp: number
end

local record UpdateManagedRuleSetVersionExpiryDateOutput
    ExpiringVersion: string
    ExpiryTimestamp: number
    NextLockToken: string
end

local record UpdateRegexPatternSetInput
    Name: string
    Scope: string
    Id: string
    Description: string
    RegularExpressionList: {Regex}
    LockToken: string
end

local record UpdateRegexPatternSetOutput
    NextLockToken: string
end

local record UpdateRuleGroupInput
    Name: string
    Scope: string
    Id: string
    Description: string
    Rules: {Rule}
    VisibilityConfig: VisibilityConfig
    LockToken: string
    CustomResponseBodies: {string : CustomResponseBody}
end

local record UpdateRuleGroupOutput
    NextLockToken: string
end

local record UpdateWebACLInput
    Name: string
    Scope: string
    Id: string
    DefaultAction: DefaultAction
    Description: string
    Rules: {Rule}
    VisibilityConfig: VisibilityConfig
    DataProtectionConfig: DataProtectionConfig
    LockToken: string
    CustomResponseBodies: {string : CustomResponseBody}
    CaptchaConfig: CaptchaConfig
    ChallengeConfig: ChallengeConfig
    TokenDomains: {string}
    AssociationConfig: AssociationConfig
    OnSourceDDoSProtectionConfig: OnSourceDDoSProtectionConfig
    ApplicationConfig: ApplicationConfig
end

local record UpdateWebACLOutput
    NextLockToken: string
end

local record WAFFeatureNotIncludedInPricingPlanException
    Message: string
    DisallowedFeatures: {DisallowedFeature}
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFLimitsExceededException
    Message: string
    SourceType: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFUnavailableEntityException
    Message: string
end

local record WAFExpiredManagedRuleGroupVersionException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFInvalidResourceException
    Message: string
end

local record WAFLimitsExceededException
    Message: string
    SourceType: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFSubscriptionNotFoundException
    Message: string
end

local record WAFUnavailableEntityException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFLimitsExceededException
    Message: string
    SourceType: string
end

local record WAFDuplicateItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFLimitsExceededException
    Message: string
    SourceType: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFTagOperationException
    Message: string
end

local record WAFTagOperationInternalErrorException
    Message: string
end

local record WAFDuplicateItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFLimitsExceededException
    Message: string
    SourceType: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFTagOperationException
    Message: string
end

local record WAFTagOperationInternalErrorException
    Message: string
end

local record WAFDuplicateItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFLimitsExceededException
    Message: string
    SourceType: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFSubscriptionNotFoundException
    Message: string
end

local record WAFTagOperationException
    Message: string
end

local record WAFTagOperationInternalErrorException
    Message: string
end

local record WAFUnavailableEntityException
    Message: string
end

local record WAFConfigurationWarningException
    Message: string
end

local record WAFDuplicateItemException
    Message: string
end

local record WAFExpiredManagedRuleGroupVersionException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFInvalidResourceException
    Message: string
end

local record WAFLimitsExceededException
    Message: string
    SourceType: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFSubscriptionNotFoundException
    Message: string
end

local record WAFTagOperationException
    Message: string
end

local record WAFTagOperationInternalErrorException
    Message: string
end

local record WAFUnavailableEntityException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFAssociatedItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFTagOperationException
    Message: string
end

local record WAFTagOperationInternalErrorException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFAssociatedItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFTagOperationException
    Message: string
end

local record WAFTagOperationInternalErrorException
    Message: string
end

local record WAFAssociatedItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFTagOperationException
    Message: string
end

local record WAFTagOperationInternalErrorException
    Message: string
end

local record WAFAssociatedItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFTagOperationException
    Message: string
end

local record WAFTagOperationInternalErrorException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFExpiredManagedRuleGroupVersionException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFInvalidResourceException
    Message: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFInvalidResourceException
    Message: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFUnsupportedAggregateKeyTypeException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFFeatureNotIncludedInPricingPlanException
    Message: string
    DisallowedFeatures: {DisallowedFeature}
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFUnavailableEntityException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFInvalidResourceException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFTagOperationException
    Message: string
end

local record WAFTagOperationInternalErrorException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFFeatureNotIncludedInPricingPlanException
    Message: string
    DisallowedFeatures: {DisallowedFeature}
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFLimitsExceededException
    Message: string
    SourceType: string
end

local record WAFLogDestinationPermissionIssueException
    Message: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFServiceLinkedRoleErrorException
    message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFInvalidPermissionPolicyException
    Message: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFLimitsExceededException
    Message: string
    SourceType: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFTagOperationException
    Message: string
end

local record WAFTagOperationInternalErrorException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFTagOperationException
    Message: string
end

local record WAFTagOperationInternalErrorException
    Message: string
end

local record WAFDuplicateItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFLimitsExceededException
    Message: string
    SourceType: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFDuplicateItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFLimitsExceededException
    Message: string
    SourceType: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFConfigurationWarningException
    Message: string
end

local record WAFDuplicateItemException
    Message: string
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFLimitsExceededException
    Message: string
    SourceType: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFSubscriptionNotFoundException
    Message: string
end

local record WAFUnavailableEntityException
    Message: string
end

local record WAFConfigurationWarningException
    Message: string
end

local record WAFDuplicateItemException
    Message: string
end

local record WAFExpiredManagedRuleGroupVersionException
    Message: string
end

local record WAFFeatureNotIncludedInPricingPlanException
    Message: string
    DisallowedFeatures: {DisallowedFeature}
end

local record WAFInternalErrorException
    Message: string
end

local record WAFInvalidOperationException
    Message: string
end

local record WAFInvalidParameterException
    message: string
    Field: string
    Parameter: string
    Reason: string
end

local record WAFInvalidResourceException
    Message: string
end

local record WAFLimitsExceededException
    Message: string
    SourceType: string
end

local record WAFNonexistentItemException
    Message: string
end

local record WAFOptimisticLockException
    Message: string
end

local record WAFSubscriptionNotFoundException
    Message: string
end

local record WAFUnavailableEntityException
    Message: string
end

local type IPAddressVersion = "IPV4" | "IPV6"

local type LogScope = "CUSTOMER" | "SECURITY_LAKE" | "CLOUDWATCH_TELEMETRY_RULE_MANAGED"

local type LogType = "WAF_LOGS"

local type Platform = "IOS" | "ANDROID"

local type ResourceType = "APPLICATION_LOAD_BALANCER" | "API_GATEWAY" | "APPSYNC" | "COGNITO_USER_POOL" | "APP_RUNNER_SERVICE" | "VERIFIED_ACCESS_INSTANCE" | "AMPLIFY"

local type Scope = "CLOUDFRONT" | "REGIONAL"

local record M
    AssociateWebACLInput: AssociateWebACLInput
    AssociateWebACLOutput: AssociateWebACLOutput
    CheckCapacityInput: CheckCapacityInput
    CheckCapacityOutput: CheckCapacityOutput
    CreateAPIKeyInput: CreateAPIKeyInput
    CreateAPIKeyOutput: CreateAPIKeyOutput
    CreateIPSetInput: CreateIPSetInput
    CreateIPSetOutput: CreateIPSetOutput
    CreateRegexPatternSetInput: CreateRegexPatternSetInput
    CreateRegexPatternSetOutput: CreateRegexPatternSetOutput
    CreateRuleGroupInput: CreateRuleGroupInput
    CreateRuleGroupOutput: CreateRuleGroupOutput
    CreateWebACLInput: CreateWebACLInput
    CreateWebACLOutput: CreateWebACLOutput
    DeleteAPIKeyInput: DeleteAPIKeyInput
    DeleteAPIKeyOutput: DeleteAPIKeyOutput
    DeleteFirewallManagerRuleGroupsInput: DeleteFirewallManagerRuleGroupsInput
    DeleteFirewallManagerRuleGroupsOutput: DeleteFirewallManagerRuleGroupsOutput
    DeleteIPSetInput: DeleteIPSetInput
    DeleteIPSetOutput: DeleteIPSetOutput
    DeleteLoggingConfigurationInput: DeleteLoggingConfigurationInput
    DeleteLoggingConfigurationOutput: DeleteLoggingConfigurationOutput
    DeletePermissionPolicyInput: DeletePermissionPolicyInput
    DeletePermissionPolicyOutput: DeletePermissionPolicyOutput
    DeleteRegexPatternSetInput: DeleteRegexPatternSetInput
    DeleteRegexPatternSetOutput: DeleteRegexPatternSetOutput
    DeleteRuleGroupInput: DeleteRuleGroupInput
    DeleteRuleGroupOutput: DeleteRuleGroupOutput
    DeleteWebACLInput: DeleteWebACLInput
    DeleteWebACLOutput: DeleteWebACLOutput
    DescribeAllManagedProductsInput: DescribeAllManagedProductsInput
    DescribeAllManagedProductsOutput: DescribeAllManagedProductsOutput
    DescribeManagedProductsByVendorInput: DescribeManagedProductsByVendorInput
    DescribeManagedProductsByVendorOutput: DescribeManagedProductsByVendorOutput
    DescribeManagedRuleGroupInput: DescribeManagedRuleGroupInput
    DescribeManagedRuleGroupOutput: DescribeManagedRuleGroupOutput
    DisassociateWebACLInput: DisassociateWebACLInput
    DisassociateWebACLOutput: DisassociateWebACLOutput
    GenerateMobileSdkReleaseUrlInput: GenerateMobileSdkReleaseUrlInput
    GenerateMobileSdkReleaseUrlOutput: GenerateMobileSdkReleaseUrlOutput
    GetDecryptedAPIKeyInput: GetDecryptedAPIKeyInput
    GetDecryptedAPIKeyOutput: GetDecryptedAPIKeyOutput
    GetIPSetInput: GetIPSetInput
    GetIPSetOutput: GetIPSetOutput
    GetLoggingConfigurationInput: GetLoggingConfigurationInput
    GetLoggingConfigurationOutput: GetLoggingConfigurationOutput
    GetManagedRuleSetInput: GetManagedRuleSetInput
    GetManagedRuleSetOutput: GetManagedRuleSetOutput
    GetMobileSdkReleaseInput: GetMobileSdkReleaseInput
    GetMobileSdkReleaseOutput: GetMobileSdkReleaseOutput
    GetPermissionPolicyInput: GetPermissionPolicyInput
    GetPermissionPolicyOutput: GetPermissionPolicyOutput
    GetRateBasedStatementManagedKeysInput: GetRateBasedStatementManagedKeysInput
    GetRateBasedStatementManagedKeysOutput: GetRateBasedStatementManagedKeysOutput
    GetRegexPatternSetInput: GetRegexPatternSetInput
    GetRegexPatternSetOutput: GetRegexPatternSetOutput
    GetRuleGroupInput: GetRuleGroupInput
    GetRuleGroupOutput: GetRuleGroupOutput
    GetSampledRequestsInput: GetSampledRequestsInput
    GetSampledRequestsOutput: GetSampledRequestsOutput
    GetTopPathStatisticsByTrafficInput: GetTopPathStatisticsByTrafficInput
    GetTopPathStatisticsByTrafficOutput: GetTopPathStatisticsByTrafficOutput
    GetWebACLInput: GetWebACLInput
    GetWebACLOutput: GetWebACLOutput
    GetWebACLForResourceInput: GetWebACLForResourceInput
    GetWebACLForResourceOutput: GetWebACLForResourceOutput
    ListAPIKeysInput: ListAPIKeysInput
    ListAPIKeysOutput: ListAPIKeysOutput
    ListAvailableManagedRuleGroupsInput: ListAvailableManagedRuleGroupsInput
    ListAvailableManagedRuleGroupsOutput: ListAvailableManagedRuleGroupsOutput
    ListAvailableManagedRuleGroupVersionsInput: ListAvailableManagedRuleGroupVersionsInput
    ListAvailableManagedRuleGroupVersionsOutput: ListAvailableManagedRuleGroupVersionsOutput
    ListIPSetsInput: ListIPSetsInput
    ListIPSetsOutput: ListIPSetsOutput
    ListLoggingConfigurationsInput: ListLoggingConfigurationsInput
    ListLoggingConfigurationsOutput: ListLoggingConfigurationsOutput
    ListManagedRuleSetsInput: ListManagedRuleSetsInput
    ListManagedRuleSetsOutput: ListManagedRuleSetsOutput
    ListMobileSdkReleasesInput: ListMobileSdkReleasesInput
    ListMobileSdkReleasesOutput: ListMobileSdkReleasesOutput
    ListRegexPatternSetsInput: ListRegexPatternSetsInput
    ListRegexPatternSetsOutput: ListRegexPatternSetsOutput
    ListResourcesForWebACLInput: ListResourcesForWebACLInput
    ListResourcesForWebACLOutput: ListResourcesForWebACLOutput
    ListRuleGroupsInput: ListRuleGroupsInput
    ListRuleGroupsOutput: ListRuleGroupsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWebACLsInput: ListWebACLsInput
    ListWebACLsOutput: ListWebACLsOutput
    PutLoggingConfigurationInput: PutLoggingConfigurationInput
    PutLoggingConfigurationOutput: PutLoggingConfigurationOutput
    PutManagedRuleSetVersionsInput: PutManagedRuleSetVersionsInput
    PutManagedRuleSetVersionsOutput: PutManagedRuleSetVersionsOutput
    PutPermissionPolicyInput: PutPermissionPolicyInput
    PutPermissionPolicyOutput: PutPermissionPolicyOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateIPSetInput: UpdateIPSetInput
    UpdateIPSetOutput: UpdateIPSetOutput
    UpdateManagedRuleSetVersionExpiryDateInput: UpdateManagedRuleSetVersionExpiryDateInput
    UpdateManagedRuleSetVersionExpiryDateOutput: UpdateManagedRuleSetVersionExpiryDateOutput
    UpdateRegexPatternSetInput: UpdateRegexPatternSetInput
    UpdateRegexPatternSetOutput: UpdateRegexPatternSetOutput
    UpdateRuleGroupInput: UpdateRuleGroupInput
    UpdateRuleGroupOutput: UpdateRuleGroupOutput
    UpdateWebACLInput: UpdateWebACLInput
    UpdateWebACLOutput: UpdateWebACLOutput
end

return M
