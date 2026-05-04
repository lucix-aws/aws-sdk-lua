local record CreateByteMatchSetInput
    Name: string
    ChangeToken: string
end

local record CreateByteMatchSetOutput
    ByteMatchSet: ByteMatchSet
    ChangeToken: string
end

local record CreateGeoMatchSetInput
    Name: string
    ChangeToken: string
end

local record CreateGeoMatchSetOutput
    GeoMatchSet: GeoMatchSet
    ChangeToken: string
end

local record CreateIPSetInput
    Name: string
    ChangeToken: string
end

local record CreateIPSetOutput
    IPSet: IPSet
    ChangeToken: string
end

local record CreateRateBasedRuleInput
    Name: string
    MetricName: string
    RateKey: string
    RateLimit: number
    ChangeToken: string
    Tags: {Tag}
end

local record CreateRateBasedRuleOutput
    Rule: RateBasedRule
    ChangeToken: string
end

local record CreateRegexMatchSetInput
    Name: string
    ChangeToken: string
end

local record CreateRegexMatchSetOutput
    RegexMatchSet: RegexMatchSet
    ChangeToken: string
end

local record CreateRegexPatternSetInput
    Name: string
    ChangeToken: string
end

local record CreateRegexPatternSetOutput
    RegexPatternSet: RegexPatternSet
    ChangeToken: string
end

local record CreateRuleInput
    Name: string
    MetricName: string
    ChangeToken: string
    Tags: {Tag}
end

local record CreateRuleOutput
    Rule: Rule
    ChangeToken: string
end

local record CreateRuleGroupInput
    Name: string
    MetricName: string
    ChangeToken: string
    Tags: {Tag}
end

local record CreateRuleGroupOutput
    RuleGroup: RuleGroup
    ChangeToken: string
end

local record CreateSizeConstraintSetInput
    Name: string
    ChangeToken: string
end

local record CreateSizeConstraintSetOutput
    SizeConstraintSet: SizeConstraintSet
    ChangeToken: string
end

local record CreateSqlInjectionMatchSetInput
    Name: string
    ChangeToken: string
end

local record CreateSqlInjectionMatchSetOutput
    SqlInjectionMatchSet: SqlInjectionMatchSet
    ChangeToken: string
end

local record CreateWebACLInput
    Name: string
    MetricName: string
    DefaultAction: WafAction
    ChangeToken: string
    Tags: {Tag}
end

local record CreateWebACLOutput
    WebACL: WebACL
    ChangeToken: string
end

local record CreateWebACLMigrationStackInput
    WebACLId: string
    S3BucketName: string
    IgnoreUnsupportedType: boolean
end

local record CreateWebACLMigrationStackOutput
    S3ObjectUrl: string
end

local record CreateXssMatchSetInput
    Name: string
    ChangeToken: string
end

local record CreateXssMatchSetOutput
    XssMatchSet: XssMatchSet
    ChangeToken: string
end

local record DeleteByteMatchSetInput
    ByteMatchSetId: string
    ChangeToken: string
end

local record DeleteByteMatchSetOutput
    ChangeToken: string
end

local record DeleteGeoMatchSetInput
    GeoMatchSetId: string
    ChangeToken: string
end

local record DeleteGeoMatchSetOutput
    ChangeToken: string
end

local record DeleteIPSetInput
    IPSetId: string
    ChangeToken: string
end

local record DeleteIPSetOutput
    ChangeToken: string
end

local record DeleteLoggingConfigurationInput
    ResourceArn: string
end

local record DeleteLoggingConfigurationOutput
end

local record DeletePermissionPolicyInput
    ResourceArn: string
end

local record DeletePermissionPolicyOutput
end

local record DeleteRateBasedRuleInput
    RuleId: string
    ChangeToken: string
end

local record DeleteRateBasedRuleOutput
    ChangeToken: string
end

local record DeleteRegexMatchSetInput
    RegexMatchSetId: string
    ChangeToken: string
end

local record DeleteRegexMatchSetOutput
    ChangeToken: string
end

local record DeleteRegexPatternSetInput
    RegexPatternSetId: string
    ChangeToken: string
end

local record DeleteRegexPatternSetOutput
    ChangeToken: string
end

local record DeleteRuleInput
    RuleId: string
    ChangeToken: string
end

local record DeleteRuleOutput
    ChangeToken: string
end

local record DeleteRuleGroupInput
    RuleGroupId: string
    ChangeToken: string
end

local record DeleteRuleGroupOutput
    ChangeToken: string
end

local record DeleteSizeConstraintSetInput
    SizeConstraintSetId: string
    ChangeToken: string
end

local record DeleteSizeConstraintSetOutput
    ChangeToken: string
end

local record DeleteSqlInjectionMatchSetInput
    SqlInjectionMatchSetId: string
    ChangeToken: string
end

local record DeleteSqlInjectionMatchSetOutput
    ChangeToken: string
end

local record DeleteWebACLInput
    WebACLId: string
    ChangeToken: string
end

local record DeleteWebACLOutput
    ChangeToken: string
end

local record DeleteXssMatchSetInput
    XssMatchSetId: string
    ChangeToken: string
end

local record DeleteXssMatchSetOutput
    ChangeToken: string
end

local record GetByteMatchSetInput
    ByteMatchSetId: string
end

local record GetByteMatchSetOutput
    ByteMatchSet: ByteMatchSet
end

local record GetChangeTokenInput
end

local record GetChangeTokenOutput
    ChangeToken: string
end

local record GetChangeTokenStatusInput
    ChangeToken: string
end

local record GetChangeTokenStatusOutput
    ChangeTokenStatus: string
end

local record GetGeoMatchSetInput
    GeoMatchSetId: string
end

local record GetGeoMatchSetOutput
    GeoMatchSet: GeoMatchSet
end

local record GetIPSetInput
    IPSetId: string
end

local record GetIPSetOutput
    IPSet: IPSet
end

local record GetLoggingConfigurationInput
    ResourceArn: string
end

local record GetLoggingConfigurationOutput
    LoggingConfiguration: LoggingConfiguration
end

local record GetPermissionPolicyInput
    ResourceArn: string
end

local record GetPermissionPolicyOutput
    Policy: string
end

local record GetRateBasedRuleInput
    RuleId: string
end

local record GetRateBasedRuleOutput
    Rule: RateBasedRule
end

local record GetRateBasedRuleManagedKeysInput
    RuleId: string
    NextMarker: string
end

local record GetRateBasedRuleManagedKeysOutput
    ManagedKeys: {string}
    NextMarker: string
end

local record GetRegexMatchSetInput
    RegexMatchSetId: string
end

local record GetRegexMatchSetOutput
    RegexMatchSet: RegexMatchSet
end

local record GetRegexPatternSetInput
    RegexPatternSetId: string
end

local record GetRegexPatternSetOutput
    RegexPatternSet: RegexPatternSet
end

local record GetRuleInput
    RuleId: string
end

local record GetRuleOutput
    Rule: Rule
end

local record GetRuleGroupInput
    RuleGroupId: string
end

local record GetRuleGroupOutput
    RuleGroup: RuleGroup
end

local record GetSampledRequestsInput
    WebAclId: string
    RuleId: string
    TimeWindow: TimeWindow
    MaxItems: number
end

local record GetSampledRequestsOutput
    SampledRequests: {SampledHTTPRequest}
    PopulationSize: number
    TimeWindow: TimeWindow
end

local record GetSizeConstraintSetInput
    SizeConstraintSetId: string
end

local record GetSizeConstraintSetOutput
    SizeConstraintSet: SizeConstraintSet
end

local record GetSqlInjectionMatchSetInput
    SqlInjectionMatchSetId: string
end

local record GetSqlInjectionMatchSetOutput
    SqlInjectionMatchSet: SqlInjectionMatchSet
end

local record GetWebACLInput
    WebACLId: string
end

local record GetWebACLOutput
    WebACL: WebACL
end

local record GetXssMatchSetInput
    XssMatchSetId: string
end

local record GetXssMatchSetOutput
    XssMatchSet: XssMatchSet
end

local record ListActivatedRulesInRuleGroupInput
    RuleGroupId: string
    NextMarker: string
    Limit: number
end

local record ListActivatedRulesInRuleGroupOutput
    NextMarker: string
    ActivatedRules: {ActivatedRule}
end

local record ListByteMatchSetsInput
    NextMarker: string
    Limit: number
end

local record ListByteMatchSetsOutput
    NextMarker: string
    ByteMatchSets: {ByteMatchSetSummary}
end

local record ListGeoMatchSetsInput
    NextMarker: string
    Limit: number
end

local record ListGeoMatchSetsOutput
    NextMarker: string
    GeoMatchSets: {GeoMatchSetSummary}
end

local record ListIPSetsInput
    NextMarker: string
    Limit: number
end

local record ListIPSetsOutput
    NextMarker: string
    IPSets: {IPSetSummary}
end

local record ListLoggingConfigurationsInput
    NextMarker: string
    Limit: number
end

local record ListLoggingConfigurationsOutput
    LoggingConfigurations: {LoggingConfiguration}
    NextMarker: string
end

local record ListRateBasedRulesInput
    NextMarker: string
    Limit: number
end

local record ListRateBasedRulesOutput
    NextMarker: string
    Rules: {RuleSummary}
end

local record ListRegexMatchSetsInput
    NextMarker: string
    Limit: number
end

local record ListRegexMatchSetsOutput
    NextMarker: string
    RegexMatchSets: {RegexMatchSetSummary}
end

local record ListRegexPatternSetsInput
    NextMarker: string
    Limit: number
end

local record ListRegexPatternSetsOutput
    NextMarker: string
    RegexPatternSets: {RegexPatternSetSummary}
end

local record ListRuleGroupsInput
    NextMarker: string
    Limit: number
end

local record ListRuleGroupsOutput
    NextMarker: string
    RuleGroups: {RuleGroupSummary}
end

local record ListRulesInput
    NextMarker: string
    Limit: number
end

local record ListRulesOutput
    NextMarker: string
    Rules: {RuleSummary}
end

local record ListSizeConstraintSetsInput
    NextMarker: string
    Limit: number
end

local record ListSizeConstraintSetsOutput
    NextMarker: string
    SizeConstraintSets: {SizeConstraintSetSummary}
end

local record ListSqlInjectionMatchSetsInput
    NextMarker: string
    Limit: number
end

local record ListSqlInjectionMatchSetsOutput
    NextMarker: string
    SqlInjectionMatchSets: {SqlInjectionMatchSetSummary}
end

local record ListSubscribedRuleGroupsInput
    NextMarker: string
    Limit: number
end

local record ListSubscribedRuleGroupsOutput
    NextMarker: string
    RuleGroups: {SubscribedRuleGroupSummary}
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
    NextMarker: string
    Limit: number
end

local record ListWebACLsOutput
    NextMarker: string
    WebACLs: {WebACLSummary}
end

local record ListXssMatchSetsInput
    NextMarker: string
    Limit: number
end

local record ListXssMatchSetsOutput
    NextMarker: string
    XssMatchSets: {XssMatchSetSummary}
end

local record PutLoggingConfigurationInput
    LoggingConfiguration: LoggingConfiguration
end

local record PutLoggingConfigurationOutput
    LoggingConfiguration: LoggingConfiguration
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

local record UpdateByteMatchSetInput
    ByteMatchSetId: string
    ChangeToken: string
    Updates: {ByteMatchSetUpdate}
end

local record UpdateByteMatchSetOutput
    ChangeToken: string
end

local record UpdateGeoMatchSetInput
    GeoMatchSetId: string
    ChangeToken: string
    Updates: {GeoMatchSetUpdate}
end

local record UpdateGeoMatchSetOutput
    ChangeToken: string
end

local record UpdateIPSetInput
    IPSetId: string
    ChangeToken: string
    Updates: {IPSetUpdate}
end

local record UpdateIPSetOutput
    ChangeToken: string
end

local record UpdateRateBasedRuleInput
    RuleId: string
    ChangeToken: string
    Updates: {RuleUpdate}
    RateLimit: number
end

local record UpdateRateBasedRuleOutput
    ChangeToken: string
end

local record UpdateRegexMatchSetInput
    RegexMatchSetId: string
    Updates: {RegexMatchSetUpdate}
    ChangeToken: string
end

local record UpdateRegexMatchSetOutput
    ChangeToken: string
end

local record UpdateRegexPatternSetInput
    RegexPatternSetId: string
    Updates: {RegexPatternSetUpdate}
    ChangeToken: string
end

local record UpdateRegexPatternSetOutput
    ChangeToken: string
end

local record UpdateRuleInput
    RuleId: string
    ChangeToken: string
    Updates: {RuleUpdate}
end

local record UpdateRuleOutput
    ChangeToken: string
end

local record UpdateRuleGroupInput
    RuleGroupId: string
    Updates: {RuleGroupUpdate}
    ChangeToken: string
end

local record UpdateRuleGroupOutput
    ChangeToken: string
end

local record UpdateSizeConstraintSetInput
    SizeConstraintSetId: string
    ChangeToken: string
    Updates: {SizeConstraintSetUpdate}
end

local record UpdateSizeConstraintSetOutput
    ChangeToken: string
end

local record UpdateSqlInjectionMatchSetInput
    SqlInjectionMatchSetId: string
    ChangeToken: string
    Updates: {SqlInjectionMatchSetUpdate}
end

local record UpdateSqlInjectionMatchSetOutput
    ChangeToken: string
end

local record UpdateWebACLInput
    WebACLId: string
    ChangeToken: string
    Updates: {WebACLUpdate}
    DefaultAction: WafAction
end

local record UpdateWebACLOutput
    ChangeToken: string
end

local record UpdateXssMatchSetInput
    XssMatchSetId: string
    ChangeToken: string
    Updates: {XssMatchSetUpdate}
end

local record UpdateXssMatchSetOutput
    ChangeToken: string
end

local record WAFDisallowedNameException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFDisallowedNameException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFDisallowedNameException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFBadRequestException
    message: string
end

local record WAFDisallowedNameException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFTagOperationException
    message: string
end

local record WAFTagOperationInternalErrorException
    message: string
end

local record WAFDisallowedNameException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFDisallowedNameException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFBadRequestException
    message: string
end

local record WAFDisallowedNameException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFTagOperationException
    message: string
end

local record WAFTagOperationInternalErrorException
    message: string
end

local record WAFBadRequestException
    message: string
end

local record WAFDisallowedNameException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFTagOperationException
    message: string
end

local record WAFTagOperationInternalErrorException
    message: string
end

local record WAFDisallowedNameException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFDisallowedNameException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFBadRequestException
    message: string
end

local record WAFDisallowedNameException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFTagOperationException
    message: string
end

local record WAFTagOperationInternalErrorException
    message: string
end

local record WAFEntityMigrationException
    message: string
    MigrationErrorType: string
    MigrationErrorReason: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidOperationException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFDisallowedNameException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonEmptyEntityException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonEmptyEntityException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonEmptyEntityException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonEmptyEntityException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFTagOperationException
    message: string
end

local record WAFTagOperationInternalErrorException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonEmptyEntityException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonEmptyEntityException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonEmptyEntityException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFTagOperationException
    message: string
end

local record WAFTagOperationInternalErrorException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidOperationException
    message: string
end

local record WAFNonEmptyEntityException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFTagOperationException
    message: string
end

local record WAFTagOperationInternalErrorException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonEmptyEntityException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonEmptyEntityException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonEmptyEntityException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFTagOperationException
    message: string
end

local record WAFTagOperationInternalErrorException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonEmptyEntityException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInternalErrorException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInternalErrorException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFBadRequestException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFTagOperationException
    message: string
end

local record WAFTagOperationInternalErrorException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInternalErrorException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFServiceLinkedRoleErrorException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidPermissionPolicyException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFBadRequestException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFTagOperationException
    message: string
end

local record WAFTagOperationInternalErrorException
    message: string
end

local record WAFBadRequestException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFTagOperationException
    message: string
end

local record WAFTagOperationInternalErrorException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidOperationException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFNonexistentContainerException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidOperationException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFNonexistentContainerException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidOperationException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFNonexistentContainerException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidOperationException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFNonexistentContainerException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFDisallowedNameException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidOperationException
    message: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFNonexistentContainerException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidOperationException
    message: string
end

local record WAFInvalidRegexPatternException
    message: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFNonexistentContainerException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidOperationException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFNonexistentContainerException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidOperationException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFNonexistentContainerException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidOperationException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFNonexistentContainerException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidOperationException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFNonexistentContainerException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidOperationException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFNonexistentContainerException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFReferencedItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local record WAFSubscriptionNotFoundException
    message: string
end

local record WAFInternalErrorException
    message: string
end

local record WAFInvalidAccountException
end

local record WAFInvalidOperationException
    message: string
end

local record WAFInvalidParameterException
    field: string
    parameter: string
    reason: string
end

local record WAFLimitsExceededException
    message: string
end

local record WAFNonexistentContainerException
    message: string
end

local record WAFNonexistentItemException
    message: string
end

local record WAFStaleDataException
    message: string
end

local type RateKey = "IP"

local type ChangeTokenStatus = "PROVISIONED" | "PENDING" | "INSYNC"

local record M
    CreateByteMatchSetInput: CreateByteMatchSetInput
    CreateByteMatchSetOutput: CreateByteMatchSetOutput
    CreateGeoMatchSetInput: CreateGeoMatchSetInput
    CreateGeoMatchSetOutput: CreateGeoMatchSetOutput
    CreateIPSetInput: CreateIPSetInput
    CreateIPSetOutput: CreateIPSetOutput
    CreateRateBasedRuleInput: CreateRateBasedRuleInput
    CreateRateBasedRuleOutput: CreateRateBasedRuleOutput
    CreateRegexMatchSetInput: CreateRegexMatchSetInput
    CreateRegexMatchSetOutput: CreateRegexMatchSetOutput
    CreateRegexPatternSetInput: CreateRegexPatternSetInput
    CreateRegexPatternSetOutput: CreateRegexPatternSetOutput
    CreateRuleInput: CreateRuleInput
    CreateRuleOutput: CreateRuleOutput
    CreateRuleGroupInput: CreateRuleGroupInput
    CreateRuleGroupOutput: CreateRuleGroupOutput
    CreateSizeConstraintSetInput: CreateSizeConstraintSetInput
    CreateSizeConstraintSetOutput: CreateSizeConstraintSetOutput
    CreateSqlInjectionMatchSetInput: CreateSqlInjectionMatchSetInput
    CreateSqlInjectionMatchSetOutput: CreateSqlInjectionMatchSetOutput
    CreateWebACLInput: CreateWebACLInput
    CreateWebACLOutput: CreateWebACLOutput
    CreateWebACLMigrationStackInput: CreateWebACLMigrationStackInput
    CreateWebACLMigrationStackOutput: CreateWebACLMigrationStackOutput
    CreateXssMatchSetInput: CreateXssMatchSetInput
    CreateXssMatchSetOutput: CreateXssMatchSetOutput
    DeleteByteMatchSetInput: DeleteByteMatchSetInput
    DeleteByteMatchSetOutput: DeleteByteMatchSetOutput
    DeleteGeoMatchSetInput: DeleteGeoMatchSetInput
    DeleteGeoMatchSetOutput: DeleteGeoMatchSetOutput
    DeleteIPSetInput: DeleteIPSetInput
    DeleteIPSetOutput: DeleteIPSetOutput
    DeleteLoggingConfigurationInput: DeleteLoggingConfigurationInput
    DeleteLoggingConfigurationOutput: DeleteLoggingConfigurationOutput
    DeletePermissionPolicyInput: DeletePermissionPolicyInput
    DeletePermissionPolicyOutput: DeletePermissionPolicyOutput
    DeleteRateBasedRuleInput: DeleteRateBasedRuleInput
    DeleteRateBasedRuleOutput: DeleteRateBasedRuleOutput
    DeleteRegexMatchSetInput: DeleteRegexMatchSetInput
    DeleteRegexMatchSetOutput: DeleteRegexMatchSetOutput
    DeleteRegexPatternSetInput: DeleteRegexPatternSetInput
    DeleteRegexPatternSetOutput: DeleteRegexPatternSetOutput
    DeleteRuleInput: DeleteRuleInput
    DeleteRuleOutput: DeleteRuleOutput
    DeleteRuleGroupInput: DeleteRuleGroupInput
    DeleteRuleGroupOutput: DeleteRuleGroupOutput
    DeleteSizeConstraintSetInput: DeleteSizeConstraintSetInput
    DeleteSizeConstraintSetOutput: DeleteSizeConstraintSetOutput
    DeleteSqlInjectionMatchSetInput: DeleteSqlInjectionMatchSetInput
    DeleteSqlInjectionMatchSetOutput: DeleteSqlInjectionMatchSetOutput
    DeleteWebACLInput: DeleteWebACLInput
    DeleteWebACLOutput: DeleteWebACLOutput
    DeleteXssMatchSetInput: DeleteXssMatchSetInput
    DeleteXssMatchSetOutput: DeleteXssMatchSetOutput
    GetByteMatchSetInput: GetByteMatchSetInput
    GetByteMatchSetOutput: GetByteMatchSetOutput
    GetChangeTokenInput: GetChangeTokenInput
    GetChangeTokenOutput: GetChangeTokenOutput
    GetChangeTokenStatusInput: GetChangeTokenStatusInput
    GetChangeTokenStatusOutput: GetChangeTokenStatusOutput
    GetGeoMatchSetInput: GetGeoMatchSetInput
    GetGeoMatchSetOutput: GetGeoMatchSetOutput
    GetIPSetInput: GetIPSetInput
    GetIPSetOutput: GetIPSetOutput
    GetLoggingConfigurationInput: GetLoggingConfigurationInput
    GetLoggingConfigurationOutput: GetLoggingConfigurationOutput
    GetPermissionPolicyInput: GetPermissionPolicyInput
    GetPermissionPolicyOutput: GetPermissionPolicyOutput
    GetRateBasedRuleInput: GetRateBasedRuleInput
    GetRateBasedRuleOutput: GetRateBasedRuleOutput
    GetRateBasedRuleManagedKeysInput: GetRateBasedRuleManagedKeysInput
    GetRateBasedRuleManagedKeysOutput: GetRateBasedRuleManagedKeysOutput
    GetRegexMatchSetInput: GetRegexMatchSetInput
    GetRegexMatchSetOutput: GetRegexMatchSetOutput
    GetRegexPatternSetInput: GetRegexPatternSetInput
    GetRegexPatternSetOutput: GetRegexPatternSetOutput
    GetRuleInput: GetRuleInput
    GetRuleOutput: GetRuleOutput
    GetRuleGroupInput: GetRuleGroupInput
    GetRuleGroupOutput: GetRuleGroupOutput
    GetSampledRequestsInput: GetSampledRequestsInput
    GetSampledRequestsOutput: GetSampledRequestsOutput
    GetSizeConstraintSetInput: GetSizeConstraintSetInput
    GetSizeConstraintSetOutput: GetSizeConstraintSetOutput
    GetSqlInjectionMatchSetInput: GetSqlInjectionMatchSetInput
    GetSqlInjectionMatchSetOutput: GetSqlInjectionMatchSetOutput
    GetWebACLInput: GetWebACLInput
    GetWebACLOutput: GetWebACLOutput
    GetXssMatchSetInput: GetXssMatchSetInput
    GetXssMatchSetOutput: GetXssMatchSetOutput
    ListActivatedRulesInRuleGroupInput: ListActivatedRulesInRuleGroupInput
    ListActivatedRulesInRuleGroupOutput: ListActivatedRulesInRuleGroupOutput
    ListByteMatchSetsInput: ListByteMatchSetsInput
    ListByteMatchSetsOutput: ListByteMatchSetsOutput
    ListGeoMatchSetsInput: ListGeoMatchSetsInput
    ListGeoMatchSetsOutput: ListGeoMatchSetsOutput
    ListIPSetsInput: ListIPSetsInput
    ListIPSetsOutput: ListIPSetsOutput
    ListLoggingConfigurationsInput: ListLoggingConfigurationsInput
    ListLoggingConfigurationsOutput: ListLoggingConfigurationsOutput
    ListRateBasedRulesInput: ListRateBasedRulesInput
    ListRateBasedRulesOutput: ListRateBasedRulesOutput
    ListRegexMatchSetsInput: ListRegexMatchSetsInput
    ListRegexMatchSetsOutput: ListRegexMatchSetsOutput
    ListRegexPatternSetsInput: ListRegexPatternSetsInput
    ListRegexPatternSetsOutput: ListRegexPatternSetsOutput
    ListRuleGroupsInput: ListRuleGroupsInput
    ListRuleGroupsOutput: ListRuleGroupsOutput
    ListRulesInput: ListRulesInput
    ListRulesOutput: ListRulesOutput
    ListSizeConstraintSetsInput: ListSizeConstraintSetsInput
    ListSizeConstraintSetsOutput: ListSizeConstraintSetsOutput
    ListSqlInjectionMatchSetsInput: ListSqlInjectionMatchSetsInput
    ListSqlInjectionMatchSetsOutput: ListSqlInjectionMatchSetsOutput
    ListSubscribedRuleGroupsInput: ListSubscribedRuleGroupsInput
    ListSubscribedRuleGroupsOutput: ListSubscribedRuleGroupsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWebACLsInput: ListWebACLsInput
    ListWebACLsOutput: ListWebACLsOutput
    ListXssMatchSetsInput: ListXssMatchSetsInput
    ListXssMatchSetsOutput: ListXssMatchSetsOutput
    PutLoggingConfigurationInput: PutLoggingConfigurationInput
    PutLoggingConfigurationOutput: PutLoggingConfigurationOutput
    PutPermissionPolicyInput: PutPermissionPolicyInput
    PutPermissionPolicyOutput: PutPermissionPolicyOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateByteMatchSetInput: UpdateByteMatchSetInput
    UpdateByteMatchSetOutput: UpdateByteMatchSetOutput
    UpdateGeoMatchSetInput: UpdateGeoMatchSetInput
    UpdateGeoMatchSetOutput: UpdateGeoMatchSetOutput
    UpdateIPSetInput: UpdateIPSetInput
    UpdateIPSetOutput: UpdateIPSetOutput
    UpdateRateBasedRuleInput: UpdateRateBasedRuleInput
    UpdateRateBasedRuleOutput: UpdateRateBasedRuleOutput
    UpdateRegexMatchSetInput: UpdateRegexMatchSetInput
    UpdateRegexMatchSetOutput: UpdateRegexMatchSetOutput
    UpdateRegexPatternSetInput: UpdateRegexPatternSetInput
    UpdateRegexPatternSetOutput: UpdateRegexPatternSetOutput
    UpdateRuleInput: UpdateRuleInput
    UpdateRuleOutput: UpdateRuleOutput
    UpdateRuleGroupInput: UpdateRuleGroupInput
    UpdateRuleGroupOutput: UpdateRuleGroupOutput
    UpdateSizeConstraintSetInput: UpdateSizeConstraintSetInput
    UpdateSizeConstraintSetOutput: UpdateSizeConstraintSetOutput
    UpdateSqlInjectionMatchSetInput: UpdateSqlInjectionMatchSetInput
    UpdateSqlInjectionMatchSetOutput: UpdateSqlInjectionMatchSetOutput
    UpdateWebACLInput: UpdateWebACLInput
    UpdateWebACLOutput: UpdateWebACLOutput
    UpdateXssMatchSetInput: UpdateXssMatchSetInput
    UpdateXssMatchSetOutput: UpdateXssMatchSetOutput
end

return M
