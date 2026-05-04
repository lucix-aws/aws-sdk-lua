local record CreateAlertManagerDefinitionInput
    workspaceId: string
    data: string
    clientToken: string
end

local record CreateAlertManagerDefinitionOutput
    status: AlertManagerDefinitionStatus
end

local record CreateAnomalyDetectorInput
    workspaceId: string
    alias: string
    evaluationIntervalInSeconds: number
    missingDataAction: AnomalyDetectorMissingDataAction
    configuration: AnomalyDetectorConfiguration
    labels: {string : string}
    clientToken: string
    tags: {string : string}
end

local record CreateAnomalyDetectorOutput
    anomalyDetectorId: string
    arn: string
    status: AnomalyDetectorStatus
    tags: {string : string}
end

local record CreateLoggingConfigurationInput
    workspaceId: string
    logGroupArn: string
    clientToken: string
end

local record CreateLoggingConfigurationOutput
    status: LoggingConfigurationStatus
end

local record CreateQueryLoggingConfigurationInput
    workspaceId: string
    destinations: {LoggingDestination}
    clientToken: string
end

local record CreateQueryLoggingConfigurationOutput
    status: QueryLoggingConfigurationStatus
end

local record CreateRuleGroupsNamespaceInput
    workspaceId: string
    name: string
    data: string
    clientToken: string
    tags: {string : string}
end

local record CreateRuleGroupsNamespaceOutput
    name: string
    arn: string
    status: RuleGroupsNamespaceStatus
    tags: {string : string}
end

local record CreateScraperInput
    alias: string
    scrapeConfiguration: ScrapeConfiguration
    source: Source
    destination: Destination
    roleConfiguration: RoleConfiguration
    clientToken: string
    tags: {string : string}
end

local record CreateScraperOutput
    scraperId: string
    arn: string
    status: ScraperStatus
    tags: {string : string}
end

local record CreateWorkspaceInput
    alias: string
    clientToken: string
    tags: {string : string}
    kmsKeyArn: string
end

local record CreateWorkspaceOutput
    workspaceId: string
    arn: string
    status: WorkspaceStatus
    tags: {string : string}
    kmsKeyArn: string
end

local record DeleteAlertManagerDefinitionInput
    workspaceId: string
    clientToken: string
end

local record DeleteAlertManagerDefinitionOutput
end

local record DeleteAnomalyDetectorInput
    workspaceId: string
    anomalyDetectorId: string
    clientToken: string
end

local record DeleteAnomalyDetectorOutput
end

local record DeleteLoggingConfigurationInput
    workspaceId: string
    clientToken: string
end

local record DeleteLoggingConfigurationOutput
end

local record DeleteQueryLoggingConfigurationInput
    workspaceId: string
    clientToken: string
end

local record DeleteQueryLoggingConfigurationOutput
end

local record DeleteResourcePolicyInput
    workspaceId: string
    clientToken: string
    revisionId: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteRuleGroupsNamespaceInput
    workspaceId: string
    name: string
    clientToken: string
end

local record DeleteRuleGroupsNamespaceOutput
end

local record DeleteScraperInput
    scraperId: string
    clientToken: string
end

local record DeleteScraperOutput
    scraperId: string
    status: ScraperStatus
end

local record DeleteScraperLoggingConfigurationInput
    scraperId: string
    clientToken: string
end

local record DeleteScraperLoggingConfigurationOutput
end

local record DeleteWorkspaceInput
    workspaceId: string
    clientToken: string
end

local record DeleteWorkspaceOutput
end

local record DescribeAlertManagerDefinitionInput
    workspaceId: string
end

local record DescribeAlertManagerDefinitionOutput
    alertManagerDefinition: AlertManagerDefinitionDescription
end

local record DescribeAnomalyDetectorInput
    workspaceId: string
    anomalyDetectorId: string
end

local record DescribeAnomalyDetectorOutput
    anomalyDetector: AnomalyDetectorDescription
end

local record DescribeLoggingConfigurationInput
    workspaceId: string
end

local record DescribeLoggingConfigurationOutput
    loggingConfiguration: LoggingConfigurationMetadata
end

local record DescribeQueryLoggingConfigurationInput
    workspaceId: string
end

local record DescribeQueryLoggingConfigurationOutput
    queryLoggingConfiguration: QueryLoggingConfigurationMetadata
end

local record DescribeResourcePolicyInput
    workspaceId: string
end

local record DescribeResourcePolicyOutput
    policyDocument: string
    policyStatus: string
    revisionId: string
end

local record DescribeRuleGroupsNamespaceInput
    workspaceId: string
    name: string
end

local record DescribeRuleGroupsNamespaceOutput
    ruleGroupsNamespace: RuleGroupsNamespaceDescription
end

local record DescribeScraperInput
    scraperId: string
end

local record DescribeScraperOutput
    scraper: ScraperDescription
end

local record DescribeScraperLoggingConfigurationInput
    scraperId: string
end

local record DescribeScraperLoggingConfigurationOutput
    status: ScraperLoggingConfigurationStatus
    scraperId: string
    loggingDestination: ScraperLoggingDestination
    scraperComponents: {ScraperComponent}
    modifiedAt: number
end

local record DescribeWorkspaceInput
    workspaceId: string
end

local record DescribeWorkspaceOutput
    workspace: WorkspaceDescription
end

local record DescribeWorkspaceConfigurationInput
    workspaceId: string
end

local record DescribeWorkspaceConfigurationOutput
    workspaceConfiguration: WorkspaceConfigurationDescription
end

local record GetDefaultScraperConfigurationInput
end

local record GetDefaultScraperConfigurationOutput
    configuration: string
end

local record ListAnomalyDetectorsInput
    workspaceId: string
    alias: string
    maxResults: number
    nextToken: string
end

local record ListAnomalyDetectorsOutput
    anomalyDetectors: {AnomalyDetectorSummary}
    nextToken: string
end

local record ListRuleGroupsNamespacesInput
    workspaceId: string
    name: string
    nextToken: string
    maxResults: number
end

local record ListRuleGroupsNamespacesOutput
    ruleGroupsNamespaces: {RuleGroupsNamespaceSummary}
    nextToken: string
end

local record ListScrapersInput
    filters: {string : {string}}
    nextToken: string
    maxResults: number
end

local record ListScrapersOutput
    scrapers: {ScraperSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListWorkspacesInput
    nextToken: string
    alias: string
    maxResults: number
end

local record ListWorkspacesOutput
    workspaces: {WorkspaceSummary}
    nextToken: string
end

local record PutAlertManagerDefinitionInput
    workspaceId: string
    data: string
    clientToken: string
end

local record PutAlertManagerDefinitionOutput
    status: AlertManagerDefinitionStatus
end

local record PutAnomalyDetectorInput
    workspaceId: string
    anomalyDetectorId: string
    evaluationIntervalInSeconds: number
    missingDataAction: AnomalyDetectorMissingDataAction
    configuration: AnomalyDetectorConfiguration
    labels: {string : string}
    clientToken: string
end

local record PutAnomalyDetectorOutput
    anomalyDetectorId: string
    arn: string
    status: AnomalyDetectorStatus
    tags: {string : string}
end

local record PutResourcePolicyInput
    workspaceId: string
    policyDocument: string
    clientToken: string
    revisionId: string
end

local record PutResourcePolicyOutput
    policyStatus: string
    revisionId: string
end

local record PutRuleGroupsNamespaceInput
    workspaceId: string
    name: string
    data: string
    clientToken: string
end

local record PutRuleGroupsNamespaceOutput
    name: string
    arn: string
    status: RuleGroupsNamespaceStatus
    tags: {string : string}
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

local record UpdateLoggingConfigurationInput
    workspaceId: string
    logGroupArn: string
    clientToken: string
end

local record UpdateLoggingConfigurationOutput
    status: LoggingConfigurationStatus
end

local record UpdateQueryLoggingConfigurationInput
    workspaceId: string
    destinations: {LoggingDestination}
    clientToken: string
end

local record UpdateQueryLoggingConfigurationOutput
    status: QueryLoggingConfigurationStatus
end

local record UpdateScraperInput
    scraperId: string
    alias: string
    scrapeConfiguration: ScrapeConfiguration
    destination: Destination
    roleConfiguration: RoleConfiguration
    clientToken: string
end

local record UpdateScraperOutput
    scraperId: string
    arn: string
    status: ScraperStatus
    tags: {string : string}
end

local record UpdateScraperLoggingConfigurationInput
    scraperId: string
    loggingDestination: ScraperLoggingDestination
    scraperComponents: {ScraperComponent}
end

local record UpdateScraperLoggingConfigurationOutput
    status: ScraperLoggingConfigurationStatus
end

local record UpdateWorkspaceAliasInput
    workspaceId: string
    alias: string
    clientToken: string
end

local record UpdateWorkspaceAliasOutput
end

local record UpdateWorkspaceConfigurationInput
    workspaceId: string
    clientToken: string
    limitsPerLabelSet: {LimitsPerLabelSet}
    retentionPeriodInDays: number
end

local record UpdateWorkspaceConfigurationOutput
    status: WorkspaceConfigurationStatus
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
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    serviceCode: string
    quotaCode: string
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record M
    CreateAlertManagerDefinitionInput: CreateAlertManagerDefinitionInput
    CreateAlertManagerDefinitionOutput: CreateAlertManagerDefinitionOutput
    CreateAnomalyDetectorInput: CreateAnomalyDetectorInput
    CreateAnomalyDetectorOutput: CreateAnomalyDetectorOutput
    CreateLoggingConfigurationInput: CreateLoggingConfigurationInput
    CreateLoggingConfigurationOutput: CreateLoggingConfigurationOutput
    CreateQueryLoggingConfigurationInput: CreateQueryLoggingConfigurationInput
    CreateQueryLoggingConfigurationOutput: CreateQueryLoggingConfigurationOutput
    CreateRuleGroupsNamespaceInput: CreateRuleGroupsNamespaceInput
    CreateRuleGroupsNamespaceOutput: CreateRuleGroupsNamespaceOutput
    CreateScraperInput: CreateScraperInput
    CreateScraperOutput: CreateScraperOutput
    CreateWorkspaceInput: CreateWorkspaceInput
    CreateWorkspaceOutput: CreateWorkspaceOutput
    DeleteAlertManagerDefinitionInput: DeleteAlertManagerDefinitionInput
    DeleteAlertManagerDefinitionOutput: DeleteAlertManagerDefinitionOutput
    DeleteAnomalyDetectorInput: DeleteAnomalyDetectorInput
    DeleteAnomalyDetectorOutput: DeleteAnomalyDetectorOutput
    DeleteLoggingConfigurationInput: DeleteLoggingConfigurationInput
    DeleteLoggingConfigurationOutput: DeleteLoggingConfigurationOutput
    DeleteQueryLoggingConfigurationInput: DeleteQueryLoggingConfigurationInput
    DeleteQueryLoggingConfigurationOutput: DeleteQueryLoggingConfigurationOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteRuleGroupsNamespaceInput: DeleteRuleGroupsNamespaceInput
    DeleteRuleGroupsNamespaceOutput: DeleteRuleGroupsNamespaceOutput
    DeleteScraperInput: DeleteScraperInput
    DeleteScraperOutput: DeleteScraperOutput
    DeleteScraperLoggingConfigurationInput: DeleteScraperLoggingConfigurationInput
    DeleteScraperLoggingConfigurationOutput: DeleteScraperLoggingConfigurationOutput
    DeleteWorkspaceInput: DeleteWorkspaceInput
    DeleteWorkspaceOutput: DeleteWorkspaceOutput
    DescribeAlertManagerDefinitionInput: DescribeAlertManagerDefinitionInput
    DescribeAlertManagerDefinitionOutput: DescribeAlertManagerDefinitionOutput
    DescribeAnomalyDetectorInput: DescribeAnomalyDetectorInput
    DescribeAnomalyDetectorOutput: DescribeAnomalyDetectorOutput
    DescribeLoggingConfigurationInput: DescribeLoggingConfigurationInput
    DescribeLoggingConfigurationOutput: DescribeLoggingConfigurationOutput
    DescribeQueryLoggingConfigurationInput: DescribeQueryLoggingConfigurationInput
    DescribeQueryLoggingConfigurationOutput: DescribeQueryLoggingConfigurationOutput
    DescribeResourcePolicyInput: DescribeResourcePolicyInput
    DescribeResourcePolicyOutput: DescribeResourcePolicyOutput
    DescribeRuleGroupsNamespaceInput: DescribeRuleGroupsNamespaceInput
    DescribeRuleGroupsNamespaceOutput: DescribeRuleGroupsNamespaceOutput
    DescribeScraperInput: DescribeScraperInput
    DescribeScraperOutput: DescribeScraperOutput
    DescribeScraperLoggingConfigurationInput: DescribeScraperLoggingConfigurationInput
    DescribeScraperLoggingConfigurationOutput: DescribeScraperLoggingConfigurationOutput
    DescribeWorkspaceInput: DescribeWorkspaceInput
    DescribeWorkspaceOutput: DescribeWorkspaceOutput
    DescribeWorkspaceConfigurationInput: DescribeWorkspaceConfigurationInput
    DescribeWorkspaceConfigurationOutput: DescribeWorkspaceConfigurationOutput
    GetDefaultScraperConfigurationInput: GetDefaultScraperConfigurationInput
    GetDefaultScraperConfigurationOutput: GetDefaultScraperConfigurationOutput
    ListAnomalyDetectorsInput: ListAnomalyDetectorsInput
    ListAnomalyDetectorsOutput: ListAnomalyDetectorsOutput
    ListRuleGroupsNamespacesInput: ListRuleGroupsNamespacesInput
    ListRuleGroupsNamespacesOutput: ListRuleGroupsNamespacesOutput
    ListScrapersInput: ListScrapersInput
    ListScrapersOutput: ListScrapersOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWorkspacesInput: ListWorkspacesInput
    ListWorkspacesOutput: ListWorkspacesOutput
    PutAlertManagerDefinitionInput: PutAlertManagerDefinitionInput
    PutAlertManagerDefinitionOutput: PutAlertManagerDefinitionOutput
    PutAnomalyDetectorInput: PutAnomalyDetectorInput
    PutAnomalyDetectorOutput: PutAnomalyDetectorOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    PutRuleGroupsNamespaceInput: PutRuleGroupsNamespaceInput
    PutRuleGroupsNamespaceOutput: PutRuleGroupsNamespaceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateLoggingConfigurationInput: UpdateLoggingConfigurationInput
    UpdateLoggingConfigurationOutput: UpdateLoggingConfigurationOutput
    UpdateQueryLoggingConfigurationInput: UpdateQueryLoggingConfigurationInput
    UpdateQueryLoggingConfigurationOutput: UpdateQueryLoggingConfigurationOutput
    UpdateScraperInput: UpdateScraperInput
    UpdateScraperOutput: UpdateScraperOutput
    UpdateScraperLoggingConfigurationInput: UpdateScraperLoggingConfigurationInput
    UpdateScraperLoggingConfigurationOutput: UpdateScraperLoggingConfigurationOutput
    UpdateWorkspaceAliasInput: UpdateWorkspaceAliasInput
    UpdateWorkspaceAliasOutput: UpdateWorkspaceAliasOutput
    UpdateWorkspaceConfigurationInput: UpdateWorkspaceConfigurationInput
    UpdateWorkspaceConfigurationOutput: UpdateWorkspaceConfigurationOutput
end

return M
