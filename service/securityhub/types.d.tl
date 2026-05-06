local record AcceptAdministratorInvitationInput
    AdministratorId: string
    InvitationId: string
end

local record AcceptAdministratorInvitationOutput
end

local record AcceptInvitationInput
    MasterId: string
    InvitationId: string
end

local record AcceptInvitationOutput
end

local record BatchDeleteAutomationRulesInput
    AutomationRulesArns: {string}
end

local record BatchDeleteAutomationRulesOutput
    ProcessedAutomationRules: {string}
    UnprocessedAutomationRules: {UnprocessedAutomationRule}
end

local record BatchDisableStandardsInput
    StandardsSubscriptionArns: {string}
end

local record BatchDisableStandardsOutput
    StandardsSubscriptions: {StandardsSubscription}
end

local record BatchEnableStandardsInput
    StandardsSubscriptionRequests: {StandardsSubscriptionRequest}
end

local record BatchEnableStandardsOutput
    StandardsSubscriptions: {StandardsSubscription}
end

local record BatchGetAutomationRulesInput
    AutomationRulesArns: {string}
end

local record BatchGetAutomationRulesOutput
    Rules: {AutomationRulesConfig}
    UnprocessedAutomationRules: {UnprocessedAutomationRule}
end

local record BatchGetConfigurationPolicyAssociationsInput
    ConfigurationPolicyAssociationIdentifiers: {ConfigurationPolicyAssociation}
end

local record BatchGetConfigurationPolicyAssociationsOutput
    ConfigurationPolicyAssociations: {ConfigurationPolicyAssociationSummary}
    UnprocessedConfigurationPolicyAssociations: {UnprocessedConfigurationPolicyAssociation}
end

local record BatchGetSecurityControlsInput
    SecurityControlIds: {string}
end

local record BatchGetSecurityControlsOutput
    SecurityControls: {SecurityControl}
    UnprocessedIds: {UnprocessedSecurityControl}
end

local record BatchGetStandardsControlAssociationsInput
    StandardsControlAssociationIds: {StandardsControlAssociationId}
end

local record BatchGetStandardsControlAssociationsOutput
    StandardsControlAssociationDetails: {StandardsControlAssociationDetail}
    UnprocessedAssociations: {UnprocessedStandardsControlAssociation}
end

local record BatchImportFindingsInput
    Findings: {AwsSecurityFinding}
end

local record BatchImportFindingsOutput
    FailedCount: number
    SuccessCount: number
    FailedFindings: {ImportFindingsError}
end

local record BatchUpdateAutomationRulesInput
    UpdateAutomationRulesRequestItems: {UpdateAutomationRulesRequestItem}
end

local record BatchUpdateAutomationRulesOutput
    ProcessedAutomationRules: {string}
    UnprocessedAutomationRules: {UnprocessedAutomationRule}
end

local record BatchUpdateFindingsInput
    FindingIdentifiers: {AwsSecurityFindingIdentifier}
    Note: NoteUpdate
    Severity: SeverityUpdate
    VerificationState: string
    Confidence: number
    Criticality: number
    Types: {string}
    UserDefinedFields: {string : string}
    Workflow: WorkflowUpdate
    RelatedFindings: {RelatedFinding}
end

local record BatchUpdateFindingsOutput
    ProcessedFindings: {AwsSecurityFindingIdentifier}
    UnprocessedFindings: {BatchUpdateFindingsUnprocessedFinding}
end

local record BatchUpdateFindingsV2Input
    MetadataUids: {string}
    FindingIdentifiers: {OcsfFindingIdentifier}
    Comment: string
    SeverityId: number
    StatusId: number
end

local record BatchUpdateFindingsV2Output
    ProcessedFindings: {BatchUpdateFindingsV2ProcessedFinding}
    UnprocessedFindings: {BatchUpdateFindingsV2UnprocessedFinding}
end

local record BatchUpdateStandardsControlAssociationsInput
    StandardsControlAssociationUpdates: {StandardsControlAssociationUpdate}
end

local record BatchUpdateStandardsControlAssociationsOutput
    UnprocessedAssociationUpdates: {UnprocessedStandardsControlAssociationUpdate}
end

local record CreateActionTargetInput
    Name: string
    Description: string
    Id: string
end

local record CreateActionTargetOutput
    ActionTargetArn: string
end

local record CreateAggregatorV2Input
    RegionLinkingMode: string
    LinkedRegions: {string}
    Tags: {string : string}
    ClientToken: string
end

local record CreateAggregatorV2Output
    AggregatorV2Arn: string
    AggregationRegion: string
    RegionLinkingMode: string
    LinkedRegions: {string}
end

local record CreateAutomationRuleInput
    Tags: {string : string}
    RuleStatus: string
    RuleOrder: number
    RuleName: string
    Description: string
    IsTerminal: boolean
    Criteria: AutomationRulesFindingFilters
    Actions: {AutomationRulesAction}
end

local record CreateAutomationRuleOutput
    RuleArn: string
end

local record CreateAutomationRuleV2Input
    RuleName: string
    RuleStatus: string
    Description: string
    RuleOrder: number
    Criteria: Criteria
    Actions: {AutomationRulesActionV2}
    Tags: {string : string}
    ClientToken: string
end

local record CreateAutomationRuleV2Output
    RuleArn: string
    RuleId: string
end

local record CreateConfigurationPolicyInput
    Name: string
    Description: string
    ConfigurationPolicy: Policy
    Tags: {string : string}
end

local record CreateConfigurationPolicyOutput
    Arn: string
    Id: string
    Name: string
    Description: string
    UpdatedAt: number
    CreatedAt: number
    ConfigurationPolicy: Policy
end

local record CreateConnectorV2Input
    Name: string
    Description: string
    Provider: ProviderConfiguration
    KmsKeyArn: string
    Tags: {string : string}
    ClientToken: string
end

local record CreateConnectorV2Output
    ConnectorArn: string
    ConnectorId: string
    AuthUrl: string
    ConnectorStatus: string
end

local record CreateFindingAggregatorInput
    RegionLinkingMode: string
    Regions: {string}
end

local record CreateFindingAggregatorOutput
    FindingAggregatorArn: string
    FindingAggregationRegion: string
    RegionLinkingMode: string
    Regions: {string}
end

local record CreateInsightInput
    Name: string
    Filters: AwsSecurityFindingFilters
    GroupByAttribute: string
end

local record CreateInsightOutput
    InsightArn: string
end

local record CreateMembersInput
    AccountDetails: {AccountDetails}
end

local record CreateMembersOutput
    UnprocessedAccounts: {Result}
end

local record CreateTicketV2Input
    ConnectorId: string
    FindingMetadataUid: string
    ClientToken: string
    Mode: string
end

local record CreateTicketV2Output
    TicketId: string
    TicketSrcUrl: string
end

local record DeclineInvitationsInput
    AccountIds: {string}
end

local record DeclineInvitationsOutput
    UnprocessedAccounts: {Result}
end

local record DeleteActionTargetInput
    ActionTargetArn: string
end

local record DeleteActionTargetOutput
    ActionTargetArn: string
end

local record DeleteAggregatorV2Input
    AggregatorV2Arn: string
end

local record DeleteAggregatorV2Output
end

local record DeleteAutomationRuleV2Input
    Identifier: string
end

local record DeleteAutomationRuleV2Output
end

local record DeleteConfigurationPolicyInput
    Identifier: string
end

local record DeleteConfigurationPolicyOutput
end

local record DeleteConnectorV2Input
    ConnectorId: string
end

local record DeleteConnectorV2Output
end

local record DeleteFindingAggregatorInput
    FindingAggregatorArn: string
end

local record DeleteFindingAggregatorOutput
end

local record DeleteInsightInput
    InsightArn: string
end

local record DeleteInsightOutput
    InsightArn: string
end

local record DeleteInvitationsInput
    AccountIds: {string}
end

local record DeleteInvitationsOutput
    UnprocessedAccounts: {Result}
end

local record DeleteMembersInput
    AccountIds: {string}
end

local record DeleteMembersOutput
    UnprocessedAccounts: {Result}
end

local record DescribeActionTargetsInput
    ActionTargetArns: {string}
    NextToken: string
    MaxResults: number
end

local record DescribeActionTargetsOutput
    ActionTargets: {ActionTarget}
    NextToken: string
end

local record DescribeHubInput
    HubArn: string
end

local record DescribeHubOutput
    HubArn: string
    SubscribedAt: string
    AutoEnableControls: boolean
    ControlFindingGenerator: string
end

local record DescribeOrganizationConfigurationInput
end

local record DescribeOrganizationConfigurationOutput
    AutoEnable: boolean
    MemberAccountLimitReached: boolean
    AutoEnableStandards: string
    OrganizationConfiguration: OrganizationConfiguration
end

local record DescribeProductsInput
    NextToken: string
    MaxResults: number
    ProductArn: string
end

local record DescribeProductsOutput
    Products: {Product}
    NextToken: string
end

local record DescribeProductsV2Input
    NextToken: string
    MaxResults: number
end

local record DescribeProductsV2Output
    ProductsV2: {ProductV2}
    NextToken: string
end

local record DescribeSecurityHubV2Input
end

local record DescribeSecurityHubV2Output
    HubV2Arn: string
    SubscribedAt: string
end

local record DescribeStandardsInput
    NextToken: string
    MaxResults: number
end

local record DescribeStandardsOutput
    Standards: {Standard}
    NextToken: string
end

local record DescribeStandardsControlsInput
    StandardsSubscriptionArn: string
    NextToken: string
    MaxResults: number
end

local record DescribeStandardsControlsOutput
    Controls: {StandardsControl}
    NextToken: string
end

local record DisableImportFindingsForProductInput
    ProductSubscriptionArn: string
end

local record DisableImportFindingsForProductOutput
end

local record DisableOrganizationAdminAccountInput
    AdminAccountId: string
    Feature: string
end

local record DisableOrganizationAdminAccountOutput
end

local record DisableSecurityHubInput
end

local record DisableSecurityHubOutput
end

local record DisableSecurityHubV2Input
end

local record DisableSecurityHubV2Output
end

local record DisassociateFromAdministratorAccountInput
end

local record DisassociateFromAdministratorAccountOutput
end

local record DisassociateFromMasterAccountInput
end

local record DisassociateFromMasterAccountOutput
end

local record DisassociateMembersInput
    AccountIds: {string}
end

local record DisassociateMembersOutput
end

local record EnableImportFindingsForProductInput
    ProductArn: string
end

local record EnableImportFindingsForProductOutput
    ProductSubscriptionArn: string
end

local record EnableOrganizationAdminAccountInput
    AdminAccountId: string
    Feature: string
end

local record EnableOrganizationAdminAccountOutput
    AdminAccountId: string
    Feature: string
end

local record EnableSecurityHubInput
    Tags: {string : string}
    EnableDefaultStandards: boolean
    ControlFindingGenerator: string
end

local record EnableSecurityHubOutput
end

local record EnableSecurityHubV2Input
    Tags: {string : string}
end

local record EnableSecurityHubV2Output
    HubV2Arn: string
end

local record GetAdministratorAccountInput
end

local record GetAdministratorAccountOutput
    Administrator: Invitation
end

local record GetAggregatorV2Input
    AggregatorV2Arn: string
end

local record GetAggregatorV2Output
    AggregatorV2Arn: string
    AggregationRegion: string
    RegionLinkingMode: string
    LinkedRegions: {string}
end

local record GetAutomationRuleV2Input
    Identifier: string
end

local record GetAutomationRuleV2Output
    RuleArn: string
    RuleId: string
    RuleOrder: number
    RuleName: string
    RuleStatus: string
    Description: string
    Criteria: Criteria
    Actions: {AutomationRulesActionV2}
    CreatedAt: number
    UpdatedAt: number
end

local record GetConfigurationPolicyInput
    Identifier: string
end

local record GetConfigurationPolicyOutput
    Arn: string
    Id: string
    Name: string
    Description: string
    UpdatedAt: number
    CreatedAt: number
    ConfigurationPolicy: Policy
end

local record GetConfigurationPolicyAssociationInput
    Target: Target
end

local record GetConfigurationPolicyAssociationOutput
    ConfigurationPolicyId: string
    TargetId: string
    TargetType: string
    AssociationType: string
    UpdatedAt: number
    AssociationStatus: string
    AssociationStatusMessage: string
end

local record GetConnectorV2Input
    ConnectorId: string
end

local record GetConnectorV2Output
    ConnectorArn: string
    ConnectorId: string
    Name: string
    Description: string
    KmsKeyArn: string
    CreatedAt: number
    LastUpdatedAt: number
    Health: HealthCheck
    ProviderDetail: ProviderDetail
end

local record GetEnabledStandardsInput
    StandardsSubscriptionArns: {string}
    NextToken: string
    MaxResults: number
end

local record GetEnabledStandardsOutput
    StandardsSubscriptions: {StandardsSubscription}
    NextToken: string
end

local record GetFindingAggregatorInput
    FindingAggregatorArn: string
end

local record GetFindingAggregatorOutput
    FindingAggregatorArn: string
    FindingAggregationRegion: string
    RegionLinkingMode: string
    Regions: {string}
end

local record GetFindingHistoryInput
    FindingIdentifier: AwsSecurityFindingIdentifier
    StartTime: number
    EndTime: number
    NextToken: string
    MaxResults: number
end

local record GetFindingHistoryOutput
    Records: {FindingHistoryRecord}
    NextToken: string
end

local record GetFindingsInput
    Filters: AwsSecurityFindingFilters
    SortCriteria: {SortCriterion}
    NextToken: string
    MaxResults: number
end

local record GetFindingsOutput
    Findings: {AwsSecurityFinding}
    NextToken: string
end

local record GetFindingStatisticsV2Input
    GroupByRules: {GroupByRule}
    Scopes: FindingScopes
    SortOrder: string
    MaxStatisticResults: number
end

local record GetFindingStatisticsV2Output
    GroupByResults: {GroupByResult}
end

local record GetFindingsTrendsV2Input
    Filters: FindingsTrendsFilters
    StartTime: number
    EndTime: number
    NextToken: string
    MaxResults: number
end

local record GetFindingsTrendsV2Output
    Granularity: string
    TrendsMetrics: {TrendsMetricsResult}
    NextToken: string
end

local record GetFindingsV2Input
    Filters: OcsfFindingFilters
    Scopes: FindingScopes
    SortCriteria: {SortCriterion}
    NextToken: string
    MaxResults: number
end

local record GetFindingsV2Output
    Findings: {any}
    NextToken: string
end

local record GetInsightResultsInput
    InsightArn: string
end

local record GetInsightResultsOutput
    InsightResults: InsightResults
end

local record GetInsightsInput
    InsightArns: {string}
    NextToken: string
    MaxResults: number
end

local record GetInsightsOutput
    Insights: {Insight}
    NextToken: string
end

local record GetInvitationsCountInput
end

local record GetInvitationsCountOutput
    InvitationsCount: number
end

local record GetMasterAccountInput
end

local record GetMasterAccountOutput
    Master: Invitation
end

local record GetMembersInput
    AccountIds: {string}
end

local record GetMembersOutput
    Members: {Member}
    UnprocessedAccounts: {Result}
end

local record GetResourcesStatisticsV2Input
    GroupByRules: {ResourceGroupByRule}
    Scopes: ResourceScopes
    SortOrder: string
    MaxStatisticResults: number
end

local record GetResourcesStatisticsV2Output
    GroupByResults: {GroupByResult}
end

local record GetResourcesTrendsV2Input
    Filters: ResourcesTrendsFilters
    StartTime: number
    EndTime: number
    NextToken: string
    MaxResults: number
end

local record GetResourcesTrendsV2Output
    Granularity: string
    TrendsMetrics: {ResourcesTrendsMetricsResult}
    NextToken: string
end

local record GetResourcesV2Input
    Filters: ResourcesFilters
    Scopes: ResourceScopes
    SortCriteria: {SortCriterion}
    NextToken: string
    MaxResults: number
end

local record GetResourcesV2Output
    Resources: {ResourceResult}
    NextToken: string
end

local record GetSecurityControlDefinitionInput
    SecurityControlId: string
end

local record GetSecurityControlDefinitionOutput
    SecurityControlDefinition: SecurityControlDefinition
end

local record InviteMembersInput
    AccountIds: {string}
end

local record InviteMembersOutput
    UnprocessedAccounts: {Result}
end

local record ListAggregatorsV2Input
    NextToken: string
    MaxResults: number
end

local record ListAggregatorsV2Output
    AggregatorsV2: {AggregatorV2}
    NextToken: string
end

local record ListAutomationRulesInput
    NextToken: string
    MaxResults: number
end

local record ListAutomationRulesOutput
    AutomationRulesMetadata: {AutomationRulesMetadata}
    NextToken: string
end

local record ListAutomationRulesV2Input
    NextToken: string
    MaxResults: number
end

local record ListAutomationRulesV2Output
    Rules: {AutomationRulesMetadataV2}
    NextToken: string
end

local record ListConfigurationPoliciesInput
    NextToken: string
    MaxResults: number
end

local record ListConfigurationPoliciesOutput
    ConfigurationPolicySummaries: {ConfigurationPolicySummary}
    NextToken: string
end

local record ListConfigurationPolicyAssociationsInput
    NextToken: string
    MaxResults: number
    Filters: AssociationFilters
end

local record ListConfigurationPolicyAssociationsOutput
    ConfigurationPolicyAssociationSummaries: {ConfigurationPolicyAssociationSummary}
    NextToken: string
end

local record ListConnectorsV2Input
    NextToken: string
    MaxResults: number
    ProviderName: string
    ConnectorStatus: string
end

local record ListConnectorsV2Output
    NextToken: string
    Connectors: {ConnectorSummary}
end

local record ListEnabledProductsForImportInput
    NextToken: string
    MaxResults: number
end

local record ListEnabledProductsForImportOutput
    ProductSubscriptions: {string}
    NextToken: string
end

local record ListFindingAggregatorsInput
    NextToken: string
    MaxResults: number
end

local record ListFindingAggregatorsOutput
    FindingAggregators: {FindingAggregator}
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

local record ListMembersInput
    OnlyAssociated: boolean
    MaxResults: number
    NextToken: string
end

local record ListMembersOutput
    Members: {Member}
    NextToken: string
end

local record ListOrganizationAdminAccountsInput
    MaxResults: number
    NextToken: string
    Feature: string
end

local record ListOrganizationAdminAccountsOutput
    AdminAccounts: {AdminAccount}
    NextToken: string
    Feature: string
end

local record ListSecurityControlDefinitionsInput
    StandardsArn: string
    NextToken: string
    MaxResults: number
end

local record ListSecurityControlDefinitionsOutput
    SecurityControlDefinitions: {SecurityControlDefinition}
    NextToken: string
end

local record ListStandardsControlAssociationsInput
    SecurityControlId: string
    NextToken: string
    MaxResults: number
end

local record ListStandardsControlAssociationsOutput
    StandardsControlAssociationSummaries: {StandardsControlAssociationSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record RegisterConnectorV2Input
    AuthCode: string
    AuthState: string
end

local record RegisterConnectorV2Output
    ConnectorArn: string
    ConnectorId: string
end

local record StartConfigurationPolicyAssociationInput
    ConfigurationPolicyIdentifier: string
    Target: Target
end

local record StartConfigurationPolicyAssociationOutput
    ConfigurationPolicyId: string
    TargetId: string
    TargetType: string
    AssociationType: string
    UpdatedAt: number
    AssociationStatus: string
    AssociationStatusMessage: string
end

local record StartConfigurationPolicyDisassociationInput
    Target: Target
    ConfigurationPolicyIdentifier: string
end

local record StartConfigurationPolicyDisassociationOutput
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateActionTargetInput
    ActionTargetArn: string
    Name: string
    Description: string
end

local record UpdateActionTargetOutput
end

local record UpdateAggregatorV2Input
    AggregatorV2Arn: string
    RegionLinkingMode: string
    LinkedRegions: {string}
end

local record UpdateAggregatorV2Output
    AggregatorV2Arn: string
    AggregationRegion: string
    RegionLinkingMode: string
    LinkedRegions: {string}
end

local record UpdateAutomationRuleV2Input
    Identifier: string
    RuleStatus: string
    RuleOrder: number
    Description: string
    RuleName: string
    Criteria: Criteria
    Actions: {AutomationRulesActionV2}
end

local record UpdateAutomationRuleV2Output
end

local record UpdateConfigurationPolicyInput
    Identifier: string
    Name: string
    Description: string
    UpdatedReason: string
    ConfigurationPolicy: Policy
end

local record UpdateConfigurationPolicyOutput
    Arn: string
    Id: string
    Name: string
    Description: string
    UpdatedAt: number
    CreatedAt: number
    ConfigurationPolicy: Policy
end

local record UpdateConnectorV2Input
    ConnectorId: string
    Description: string
    Provider: ProviderUpdateConfiguration
end

local record UpdateConnectorV2Output
end

local record UpdateFindingAggregatorInput
    FindingAggregatorArn: string
    RegionLinkingMode: string
    Regions: {string}
end

local record UpdateFindingAggregatorOutput
    FindingAggregatorArn: string
    FindingAggregationRegion: string
    RegionLinkingMode: string
    Regions: {string}
end

local record UpdateFindingsInput
    Filters: AwsSecurityFindingFilters
    Note: NoteUpdate
    RecordState: string
end

local record UpdateFindingsOutput
end

local record UpdateInsightInput
    InsightArn: string
    Name: string
    Filters: AwsSecurityFindingFilters
    GroupByAttribute: string
end

local record UpdateInsightOutput
end

local record UpdateOrganizationConfigurationInput
    AutoEnable: boolean
    AutoEnableStandards: string
    OrganizationConfiguration: OrganizationConfiguration
end

local record UpdateOrganizationConfigurationOutput
end

local record UpdateSecurityControlInput
    SecurityControlId: string
    Parameters: {string : ParameterConfiguration}
    LastUpdateReason: string
end

local record UpdateSecurityControlOutput
end

local record UpdateSecurityHubConfigurationInput
    AutoEnableControls: boolean
    ControlFindingGenerator: string
end

local record UpdateSecurityHubConfigurationOutput
end

local record UpdateStandardsControlInput
    StandardsControlArn: string
    ControlStatus: string
    DisabledReason: string
end

local record UpdateStandardsControlOutput
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceConflictException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ServiceQuotaExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ServiceQuotaExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceConflictException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ServiceQuotaExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceConflictException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceConflictException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceConflictException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceConflictException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceConflictException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record OrganizationalUnitNotFoundException
    Message: string
    Code: string
end

local record OrganizationNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record OrganizationalUnitNotFoundException
    Message: string
    Code: string
end

local record OrganizationNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record OrganizationalUnitNotFoundException
    Message: string
    Code: string
end

local record OrganizationNotFoundException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record OrganizationalUnitNotFoundException
    Message: string
    Code: string
end

local record OrganizationNotFoundException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceConflictException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceConflictException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceInUseException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalException
    Message: string
    Code: string
end

local record InvalidAccessException
    Message: string
    Code: string
end

local record InvalidInputException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local type ConfigurationPolicyAssociationStatus = "PENDING" | "SUCCESS" | "FAILED"

local type SortOrder = "asc" | "desc"

local type RuleStatus = "ENABLED" | "DISABLED"

local type AutoEnableStandards = "NONE" | "DEFAULT"

local type TargetType = "ACCOUNT" | "ORGANIZATIONAL_UNIT" | "ROOT"

local type ConnectorStatus = "CONNECTED" | "FAILED_TO_CONNECT" | "PENDING_CONFIGURATION" | "PENDING_AUTHORIZATION"

local type TicketCreationMode = "DRYRUN"

local type AssociationType = "INHERITED" | "APPLIED"

local type GranularityField = "Daily" | "Weekly" | "Monthly"

local type VerificationState = "UNKNOWN" | "TRUE_POSITIVE" | "FALSE_POSITIVE" | "BENIGN_POSITIVE"

local type ControlStatus = "ENABLED" | "DISABLED"

local type RecordState = "ACTIVE" | "ARCHIVED"

local type SecurityHubFeature = "SecurityHub" | "SecurityHubV2"

local type ControlFindingGenerator = "STANDARD_CONTROL" | "SECURITY_CONTROL"

local type RuleStatusV2 = "ENABLED" | "DISABLED"

local type ConnectorProviderName = "JIRA_CLOUD" | "SERVICENOW"

local record M
    AcceptAdministratorInvitationInput: AcceptAdministratorInvitationInput
    AcceptAdministratorInvitationOutput: AcceptAdministratorInvitationOutput
    AcceptInvitationInput: AcceptInvitationInput
    AcceptInvitationOutput: AcceptInvitationOutput
    BatchDeleteAutomationRulesInput: BatchDeleteAutomationRulesInput
    BatchDeleteAutomationRulesOutput: BatchDeleteAutomationRulesOutput
    BatchDisableStandardsInput: BatchDisableStandardsInput
    BatchDisableStandardsOutput: BatchDisableStandardsOutput
    BatchEnableStandardsInput: BatchEnableStandardsInput
    BatchEnableStandardsOutput: BatchEnableStandardsOutput
    BatchGetAutomationRulesInput: BatchGetAutomationRulesInput
    BatchGetAutomationRulesOutput: BatchGetAutomationRulesOutput
    BatchGetConfigurationPolicyAssociationsInput: BatchGetConfigurationPolicyAssociationsInput
    BatchGetConfigurationPolicyAssociationsOutput: BatchGetConfigurationPolicyAssociationsOutput
    BatchGetSecurityControlsInput: BatchGetSecurityControlsInput
    BatchGetSecurityControlsOutput: BatchGetSecurityControlsOutput
    BatchGetStandardsControlAssociationsInput: BatchGetStandardsControlAssociationsInput
    BatchGetStandardsControlAssociationsOutput: BatchGetStandardsControlAssociationsOutput
    BatchImportFindingsInput: BatchImportFindingsInput
    BatchImportFindingsOutput: BatchImportFindingsOutput
    BatchUpdateAutomationRulesInput: BatchUpdateAutomationRulesInput
    BatchUpdateAutomationRulesOutput: BatchUpdateAutomationRulesOutput
    BatchUpdateFindingsInput: BatchUpdateFindingsInput
    BatchUpdateFindingsOutput: BatchUpdateFindingsOutput
    BatchUpdateFindingsV2Input: BatchUpdateFindingsV2Input
    BatchUpdateFindingsV2Output: BatchUpdateFindingsV2Output
    BatchUpdateStandardsControlAssociationsInput: BatchUpdateStandardsControlAssociationsInput
    BatchUpdateStandardsControlAssociationsOutput: BatchUpdateStandardsControlAssociationsOutput
    CreateActionTargetInput: CreateActionTargetInput
    CreateActionTargetOutput: CreateActionTargetOutput
    CreateAggregatorV2Input: CreateAggregatorV2Input
    CreateAggregatorV2Output: CreateAggregatorV2Output
    CreateAutomationRuleInput: CreateAutomationRuleInput
    CreateAutomationRuleOutput: CreateAutomationRuleOutput
    CreateAutomationRuleV2Input: CreateAutomationRuleV2Input
    CreateAutomationRuleV2Output: CreateAutomationRuleV2Output
    CreateConfigurationPolicyInput: CreateConfigurationPolicyInput
    CreateConfigurationPolicyOutput: CreateConfigurationPolicyOutput
    CreateConnectorV2Input: CreateConnectorV2Input
    CreateConnectorV2Output: CreateConnectorV2Output
    CreateFindingAggregatorInput: CreateFindingAggregatorInput
    CreateFindingAggregatorOutput: CreateFindingAggregatorOutput
    CreateInsightInput: CreateInsightInput
    CreateInsightOutput: CreateInsightOutput
    CreateMembersInput: CreateMembersInput
    CreateMembersOutput: CreateMembersOutput
    CreateTicketV2Input: CreateTicketV2Input
    CreateTicketV2Output: CreateTicketV2Output
    DeclineInvitationsInput: DeclineInvitationsInput
    DeclineInvitationsOutput: DeclineInvitationsOutput
    DeleteActionTargetInput: DeleteActionTargetInput
    DeleteActionTargetOutput: DeleteActionTargetOutput
    DeleteAggregatorV2Input: DeleteAggregatorV2Input
    DeleteAggregatorV2Output: DeleteAggregatorV2Output
    DeleteAutomationRuleV2Input: DeleteAutomationRuleV2Input
    DeleteAutomationRuleV2Output: DeleteAutomationRuleV2Output
    DeleteConfigurationPolicyInput: DeleteConfigurationPolicyInput
    DeleteConfigurationPolicyOutput: DeleteConfigurationPolicyOutput
    DeleteConnectorV2Input: DeleteConnectorV2Input
    DeleteConnectorV2Output: DeleteConnectorV2Output
    DeleteFindingAggregatorInput: DeleteFindingAggregatorInput
    DeleteFindingAggregatorOutput: DeleteFindingAggregatorOutput
    DeleteInsightInput: DeleteInsightInput
    DeleteInsightOutput: DeleteInsightOutput
    DeleteInvitationsInput: DeleteInvitationsInput
    DeleteInvitationsOutput: DeleteInvitationsOutput
    DeleteMembersInput: DeleteMembersInput
    DeleteMembersOutput: DeleteMembersOutput
    DescribeActionTargetsInput: DescribeActionTargetsInput
    DescribeActionTargetsOutput: DescribeActionTargetsOutput
    DescribeHubInput: DescribeHubInput
    DescribeHubOutput: DescribeHubOutput
    DescribeOrganizationConfigurationInput: DescribeOrganizationConfigurationInput
    DescribeOrganizationConfigurationOutput: DescribeOrganizationConfigurationOutput
    DescribeProductsInput: DescribeProductsInput
    DescribeProductsOutput: DescribeProductsOutput
    DescribeProductsV2Input: DescribeProductsV2Input
    DescribeProductsV2Output: DescribeProductsV2Output
    DescribeSecurityHubV2Input: DescribeSecurityHubV2Input
    DescribeSecurityHubV2Output: DescribeSecurityHubV2Output
    DescribeStandardsInput: DescribeStandardsInput
    DescribeStandardsOutput: DescribeStandardsOutput
    DescribeStandardsControlsInput: DescribeStandardsControlsInput
    DescribeStandardsControlsOutput: DescribeStandardsControlsOutput
    DisableImportFindingsForProductInput: DisableImportFindingsForProductInput
    DisableImportFindingsForProductOutput: DisableImportFindingsForProductOutput
    DisableOrganizationAdminAccountInput: DisableOrganizationAdminAccountInput
    DisableOrganizationAdminAccountOutput: DisableOrganizationAdminAccountOutput
    DisableSecurityHubInput: DisableSecurityHubInput
    DisableSecurityHubOutput: DisableSecurityHubOutput
    DisableSecurityHubV2Input: DisableSecurityHubV2Input
    DisableSecurityHubV2Output: DisableSecurityHubV2Output
    DisassociateFromAdministratorAccountInput: DisassociateFromAdministratorAccountInput
    DisassociateFromAdministratorAccountOutput: DisassociateFromAdministratorAccountOutput
    DisassociateFromMasterAccountInput: DisassociateFromMasterAccountInput
    DisassociateFromMasterAccountOutput: DisassociateFromMasterAccountOutput
    DisassociateMembersInput: DisassociateMembersInput
    DisassociateMembersOutput: DisassociateMembersOutput
    EnableImportFindingsForProductInput: EnableImportFindingsForProductInput
    EnableImportFindingsForProductOutput: EnableImportFindingsForProductOutput
    EnableOrganizationAdminAccountInput: EnableOrganizationAdminAccountInput
    EnableOrganizationAdminAccountOutput: EnableOrganizationAdminAccountOutput
    EnableSecurityHubInput: EnableSecurityHubInput
    EnableSecurityHubOutput: EnableSecurityHubOutput
    EnableSecurityHubV2Input: EnableSecurityHubV2Input
    EnableSecurityHubV2Output: EnableSecurityHubV2Output
    GetAdministratorAccountInput: GetAdministratorAccountInput
    GetAdministratorAccountOutput: GetAdministratorAccountOutput
    GetAggregatorV2Input: GetAggregatorV2Input
    GetAggregatorV2Output: GetAggregatorV2Output
    GetAutomationRuleV2Input: GetAutomationRuleV2Input
    GetAutomationRuleV2Output: GetAutomationRuleV2Output
    GetConfigurationPolicyInput: GetConfigurationPolicyInput
    GetConfigurationPolicyOutput: GetConfigurationPolicyOutput
    GetConfigurationPolicyAssociationInput: GetConfigurationPolicyAssociationInput
    GetConfigurationPolicyAssociationOutput: GetConfigurationPolicyAssociationOutput
    GetConnectorV2Input: GetConnectorV2Input
    GetConnectorV2Output: GetConnectorV2Output
    GetEnabledStandardsInput: GetEnabledStandardsInput
    GetEnabledStandardsOutput: GetEnabledStandardsOutput
    GetFindingAggregatorInput: GetFindingAggregatorInput
    GetFindingAggregatorOutput: GetFindingAggregatorOutput
    GetFindingHistoryInput: GetFindingHistoryInput
    GetFindingHistoryOutput: GetFindingHistoryOutput
    GetFindingsInput: GetFindingsInput
    GetFindingsOutput: GetFindingsOutput
    GetFindingStatisticsV2Input: GetFindingStatisticsV2Input
    GetFindingStatisticsV2Output: GetFindingStatisticsV2Output
    GetFindingsTrendsV2Input: GetFindingsTrendsV2Input
    GetFindingsTrendsV2Output: GetFindingsTrendsV2Output
    GetFindingsV2Input: GetFindingsV2Input
    GetFindingsV2Output: GetFindingsV2Output
    GetInsightResultsInput: GetInsightResultsInput
    GetInsightResultsOutput: GetInsightResultsOutput
    GetInsightsInput: GetInsightsInput
    GetInsightsOutput: GetInsightsOutput
    GetInvitationsCountInput: GetInvitationsCountInput
    GetInvitationsCountOutput: GetInvitationsCountOutput
    GetMasterAccountInput: GetMasterAccountInput
    GetMasterAccountOutput: GetMasterAccountOutput
    GetMembersInput: GetMembersInput
    GetMembersOutput: GetMembersOutput
    GetResourcesStatisticsV2Input: GetResourcesStatisticsV2Input
    GetResourcesStatisticsV2Output: GetResourcesStatisticsV2Output
    GetResourcesTrendsV2Input: GetResourcesTrendsV2Input
    GetResourcesTrendsV2Output: GetResourcesTrendsV2Output
    GetResourcesV2Input: GetResourcesV2Input
    GetResourcesV2Output: GetResourcesV2Output
    GetSecurityControlDefinitionInput: GetSecurityControlDefinitionInput
    GetSecurityControlDefinitionOutput: GetSecurityControlDefinitionOutput
    InviteMembersInput: InviteMembersInput
    InviteMembersOutput: InviteMembersOutput
    ListAggregatorsV2Input: ListAggregatorsV2Input
    ListAggregatorsV2Output: ListAggregatorsV2Output
    ListAutomationRulesInput: ListAutomationRulesInput
    ListAutomationRulesOutput: ListAutomationRulesOutput
    ListAutomationRulesV2Input: ListAutomationRulesV2Input
    ListAutomationRulesV2Output: ListAutomationRulesV2Output
    ListConfigurationPoliciesInput: ListConfigurationPoliciesInput
    ListConfigurationPoliciesOutput: ListConfigurationPoliciesOutput
    ListConfigurationPolicyAssociationsInput: ListConfigurationPolicyAssociationsInput
    ListConfigurationPolicyAssociationsOutput: ListConfigurationPolicyAssociationsOutput
    ListConnectorsV2Input: ListConnectorsV2Input
    ListConnectorsV2Output: ListConnectorsV2Output
    ListEnabledProductsForImportInput: ListEnabledProductsForImportInput
    ListEnabledProductsForImportOutput: ListEnabledProductsForImportOutput
    ListFindingAggregatorsInput: ListFindingAggregatorsInput
    ListFindingAggregatorsOutput: ListFindingAggregatorsOutput
    ListInvitationsInput: ListInvitationsInput
    ListInvitationsOutput: ListInvitationsOutput
    ListMembersInput: ListMembersInput
    ListMembersOutput: ListMembersOutput
    ListOrganizationAdminAccountsInput: ListOrganizationAdminAccountsInput
    ListOrganizationAdminAccountsOutput: ListOrganizationAdminAccountsOutput
    ListSecurityControlDefinitionsInput: ListSecurityControlDefinitionsInput
    ListSecurityControlDefinitionsOutput: ListSecurityControlDefinitionsOutput
    ListStandardsControlAssociationsInput: ListStandardsControlAssociationsInput
    ListStandardsControlAssociationsOutput: ListStandardsControlAssociationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RegisterConnectorV2Input: RegisterConnectorV2Input
    RegisterConnectorV2Output: RegisterConnectorV2Output
    StartConfigurationPolicyAssociationInput: StartConfigurationPolicyAssociationInput
    StartConfigurationPolicyAssociationOutput: StartConfigurationPolicyAssociationOutput
    StartConfigurationPolicyDisassociationInput: StartConfigurationPolicyDisassociationInput
    StartConfigurationPolicyDisassociationOutput: StartConfigurationPolicyDisassociationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateActionTargetInput: UpdateActionTargetInput
    UpdateActionTargetOutput: UpdateActionTargetOutput
    UpdateAggregatorV2Input: UpdateAggregatorV2Input
    UpdateAggregatorV2Output: UpdateAggregatorV2Output
    UpdateAutomationRuleV2Input: UpdateAutomationRuleV2Input
    UpdateAutomationRuleV2Output: UpdateAutomationRuleV2Output
    UpdateConfigurationPolicyInput: UpdateConfigurationPolicyInput
    UpdateConfigurationPolicyOutput: UpdateConfigurationPolicyOutput
    UpdateConnectorV2Input: UpdateConnectorV2Input
    UpdateConnectorV2Output: UpdateConnectorV2Output
    UpdateFindingAggregatorInput: UpdateFindingAggregatorInput
    UpdateFindingAggregatorOutput: UpdateFindingAggregatorOutput
    UpdateFindingsInput: UpdateFindingsInput
    UpdateFindingsOutput: UpdateFindingsOutput
    UpdateInsightInput: UpdateInsightInput
    UpdateInsightOutput: UpdateInsightOutput
    UpdateOrganizationConfigurationInput: UpdateOrganizationConfigurationInput
    UpdateOrganizationConfigurationOutput: UpdateOrganizationConfigurationOutput
    UpdateSecurityControlInput: UpdateSecurityControlInput
    UpdateSecurityControlOutput: UpdateSecurityControlOutput
    UpdateSecurityHubConfigurationInput: UpdateSecurityHubConfigurationInput
    UpdateSecurityHubConfigurationOutput: UpdateSecurityHubConfigurationOutput
    UpdateStandardsControlInput: UpdateStandardsControlInput
    UpdateStandardsControlOutput: UpdateStandardsControlOutput
end

return M
