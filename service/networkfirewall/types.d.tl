local record AcceptNetworkFirewallTransitGatewayAttachmentInput
    TransitGatewayAttachmentId: string
end

local record AcceptNetworkFirewallTransitGatewayAttachmentOutput
    TransitGatewayAttachmentId: string
    TransitGatewayAttachmentStatus: string
end

local record AssociateAvailabilityZonesInput
    UpdateToken: string
    FirewallArn: string
    FirewallName: string
    AvailabilityZoneMappings: {AvailabilityZoneMapping}
end

local record AssociateAvailabilityZonesOutput
    FirewallArn: string
    FirewallName: string
    AvailabilityZoneMappings: {AvailabilityZoneMapping}
    UpdateToken: string
end

local record AssociateFirewallPolicyInput
    UpdateToken: string
    FirewallArn: string
    FirewallName: string
    FirewallPolicyArn: string
end

local record AssociateFirewallPolicyOutput
    FirewallArn: string
    FirewallName: string
    FirewallPolicyArn: string
    UpdateToken: string
end

local record AssociateSubnetsInput
    UpdateToken: string
    FirewallArn: string
    FirewallName: string
    SubnetMappings: {SubnetMapping}
end

local record AssociateSubnetsOutput
    FirewallArn: string
    FirewallName: string
    SubnetMappings: {SubnetMapping}
    UpdateToken: string
end

local record AttachRuleGroupsToProxyConfigurationInput
    ProxyConfigurationName: string
    ProxyConfigurationArn: string
    RuleGroups: {ProxyRuleGroupAttachment}
    UpdateToken: string
end

local record AttachRuleGroupsToProxyConfigurationOutput
    ProxyConfiguration: ProxyConfiguration
    UpdateToken: string
end

local record CreateFirewallInput
    FirewallName: string
    FirewallPolicyArn: string
    VpcId: string
    SubnetMappings: {SubnetMapping}
    DeleteProtection: boolean
    SubnetChangeProtection: boolean
    FirewallPolicyChangeProtection: boolean
    Description: string
    Tags: {Tag}
    EncryptionConfiguration: EncryptionConfiguration
    EnabledAnalysisTypes: {string}
    TransitGatewayId: string
    AvailabilityZoneMappings: {AvailabilityZoneMapping}
    AvailabilityZoneChangeProtection: boolean
end

local record CreateFirewallOutput
    Firewall: Firewall
    FirewallStatus: FirewallStatus
end

local record CreateFirewallPolicyInput
    FirewallPolicyName: string
    FirewallPolicy: FirewallPolicy
    Description: string
    Tags: {Tag}
    DryRun: boolean
    EncryptionConfiguration: EncryptionConfiguration
end

local record CreateFirewallPolicyOutput
    UpdateToken: string
    FirewallPolicyResponse: FirewallPolicyResponse
end

local record CreateProxyInput
    ProxyName: string
    NatGatewayId: string
    ProxyConfigurationName: string
    ProxyConfigurationArn: string
    ListenerProperties: {ListenerPropertyRequest}
    TlsInterceptProperties: TlsInterceptPropertiesRequest
    Tags: {Tag}
end

local record CreateProxyOutput
    Proxy: Proxy
    UpdateToken: string
end

local record CreateProxyConfigurationInput
    ProxyConfigurationName: string
    Description: string
    RuleGroupNames: {string}
    RuleGroupArns: {string}
    DefaultRulePhaseActions: ProxyConfigDefaultRulePhaseActionsRequest
    Tags: {Tag}
end

local record CreateProxyConfigurationOutput
    ProxyConfiguration: ProxyConfiguration
    UpdateToken: string
end

local record CreateProxyRuleGroupInput
    ProxyRuleGroupName: string
    Description: string
    Rules: ProxyRulesByRequestPhase
    Tags: {Tag}
end

local record CreateProxyRuleGroupOutput
    ProxyRuleGroup: ProxyRuleGroup
    UpdateToken: string
end

local record CreateProxyRulesInput
    ProxyRuleGroupArn: string
    ProxyRuleGroupName: string
    Rules: CreateProxyRulesByRequestPhase
end

local record CreateProxyRulesOutput
    ProxyRuleGroup: ProxyRuleGroup
    UpdateToken: string
end

local record CreateRuleGroupInput
    RuleGroupName: string
    RuleGroup: RuleGroup
    Rules: string
    Type: string
    Description: string
    Capacity: number
    Tags: {Tag}
    DryRun: boolean
    EncryptionConfiguration: EncryptionConfiguration
    SourceMetadata: SourceMetadata
    AnalyzeRuleGroup: boolean
    SummaryConfiguration: SummaryConfiguration
end

local record CreateRuleGroupOutput
    UpdateToken: string
    RuleGroupResponse: RuleGroupResponse
end

local record CreateTLSInspectionConfigurationInput
    TLSInspectionConfigurationName: string
    TLSInspectionConfiguration: TLSInspectionConfiguration
    Description: string
    Tags: {Tag}
    EncryptionConfiguration: EncryptionConfiguration
end

local record CreateTLSInspectionConfigurationOutput
    UpdateToken: string
    TLSInspectionConfigurationResponse: TLSInspectionConfigurationResponse
end

local record CreateVpcEndpointAssociationInput
    FirewallArn: string
    VpcId: string
    SubnetMapping: SubnetMapping
    Description: string
    Tags: {Tag}
end

local record CreateVpcEndpointAssociationOutput
    VpcEndpointAssociation: VpcEndpointAssociation
    VpcEndpointAssociationStatus: VpcEndpointAssociationStatus
end

local record DeleteFirewallInput
    FirewallName: string
    FirewallArn: string
end

local record DeleteFirewallOutput
    Firewall: Firewall
    FirewallStatus: FirewallStatus
end

local record DeleteFirewallPolicyInput
    FirewallPolicyName: string
    FirewallPolicyArn: string
end

local record DeleteFirewallPolicyOutput
    FirewallPolicyResponse: FirewallPolicyResponse
end

local record DeleteNetworkFirewallTransitGatewayAttachmentInput
    TransitGatewayAttachmentId: string
end

local record DeleteNetworkFirewallTransitGatewayAttachmentOutput
    TransitGatewayAttachmentId: string
    TransitGatewayAttachmentStatus: string
end

local record DeleteProxyInput
    NatGatewayId: string
    ProxyName: string
    ProxyArn: string
end

local record DeleteProxyOutput
    NatGatewayId: string
    ProxyName: string
    ProxyArn: string
end

local record DeleteProxyConfigurationInput
    ProxyConfigurationName: string
    ProxyConfigurationArn: string
end

local record DeleteProxyConfigurationOutput
    ProxyConfigurationName: string
    ProxyConfigurationArn: string
end

local record DeleteProxyRuleGroupInput
    ProxyRuleGroupName: string
    ProxyRuleGroupArn: string
end

local record DeleteProxyRuleGroupOutput
    ProxyRuleGroupName: string
    ProxyRuleGroupArn: string
end

local record DeleteProxyRulesInput
    ProxyRuleGroupArn: string
    ProxyRuleGroupName: string
    Rules: {string}
end

local record DeleteProxyRulesOutput
    ProxyRuleGroup: ProxyRuleGroup
end

local record DeleteResourcePolicyInput
    ResourceArn: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteRuleGroupInput
    RuleGroupName: string
    RuleGroupArn: string
    Type: string
end

local record DeleteRuleGroupOutput
    RuleGroupResponse: RuleGroupResponse
end

local record DeleteTLSInspectionConfigurationInput
    TLSInspectionConfigurationArn: string
    TLSInspectionConfigurationName: string
end

local record DeleteTLSInspectionConfigurationOutput
    TLSInspectionConfigurationResponse: TLSInspectionConfigurationResponse
end

local record DeleteVpcEndpointAssociationInput
    VpcEndpointAssociationArn: string
end

local record DeleteVpcEndpointAssociationOutput
    VpcEndpointAssociation: VpcEndpointAssociation
    VpcEndpointAssociationStatus: VpcEndpointAssociationStatus
end

local record DescribeFirewallInput
    FirewallName: string
    FirewallArn: string
end

local record DescribeFirewallOutput
    UpdateToken: string
    Firewall: Firewall
    FirewallStatus: FirewallStatus
end

local record DescribeFirewallMetadataInput
    FirewallArn: string
end

local record DescribeFirewallMetadataOutput
    FirewallArn: string
    FirewallPolicyArn: string
    Description: string
    Status: string
    SupportedAvailabilityZones: {string : AvailabilityZoneMetadata}
    TransitGatewayAttachmentId: string
end

local record DescribeFirewallPolicyInput
    FirewallPolicyName: string
    FirewallPolicyArn: string
end

local record DescribeFirewallPolicyOutput
    UpdateToken: string
    FirewallPolicyResponse: FirewallPolicyResponse
    FirewallPolicy: FirewallPolicy
end

local record DescribeFlowOperationInput
    FirewallArn: string
    AvailabilityZone: string
    VpcEndpointAssociationArn: string
    VpcEndpointId: string
    FlowOperationId: string
end

local record DescribeFlowOperationOutput
    FirewallArn: string
    AvailabilityZone: string
    VpcEndpointAssociationArn: string
    VpcEndpointId: string
    FlowOperationId: string
    FlowOperationType: string
    FlowOperationStatus: string
    StatusMessage: string
    FlowRequestTimestamp: number
    FlowOperation: FlowOperation
end

local record DescribeLoggingConfigurationInput
    FirewallArn: string
    FirewallName: string
end

local record DescribeLoggingConfigurationOutput
    FirewallArn: string
    LoggingConfiguration: LoggingConfiguration
    EnableMonitoringDashboard: boolean
end

local record DescribeProxyInput
    ProxyName: string
    ProxyArn: string
end

local record DescribeProxyOutput
    Proxy: DescribeProxyResource
    UpdateToken: string
end

local record DescribeProxyConfigurationInput
    ProxyConfigurationName: string
    ProxyConfigurationArn: string
end

local record DescribeProxyConfigurationOutput
    ProxyConfiguration: ProxyConfiguration
    UpdateToken: string
end

local record DescribeProxyRuleInput
    ProxyRuleName: string
    ProxyRuleGroupName: string
    ProxyRuleGroupArn: string
end

local record DescribeProxyRuleOutput
    ProxyRule: ProxyRule
    UpdateToken: string
end

local record DescribeProxyRuleGroupInput
    ProxyRuleGroupName: string
    ProxyRuleGroupArn: string
end

local record DescribeProxyRuleGroupOutput
    ProxyRuleGroup: ProxyRuleGroup
    UpdateToken: string
end

local record DescribeResourcePolicyInput
    ResourceArn: string
end

local record DescribeResourcePolicyOutput
    Policy: string
end

local record DescribeRuleGroupInput
    RuleGroupName: string
    RuleGroupArn: string
    Type: string
    AnalyzeRuleGroup: boolean
end

local record DescribeRuleGroupOutput
    UpdateToken: string
    RuleGroup: RuleGroup
    RuleGroupResponse: RuleGroupResponse
end

local record DescribeRuleGroupMetadataInput
    RuleGroupName: string
    RuleGroupArn: string
    Type: string
end

local record DescribeRuleGroupMetadataOutput
    RuleGroupArn: string
    RuleGroupName: string
    Description: string
    Type: string
    Capacity: number
    StatefulRuleOptions: StatefulRuleOptions
    LastModifiedTime: number
    VendorName: string
    ProductId: string
    ListingName: string
end

local record DescribeRuleGroupSummaryInput
    RuleGroupName: string
    RuleGroupArn: string
    Type: string
end

local record DescribeRuleGroupSummaryOutput
    RuleGroupName: string
    Description: string
    Summary: Summary
end

local record DescribeTLSInspectionConfigurationInput
    TLSInspectionConfigurationArn: string
    TLSInspectionConfigurationName: string
end

local record DescribeTLSInspectionConfigurationOutput
    UpdateToken: string
    TLSInspectionConfiguration: TLSInspectionConfiguration
    TLSInspectionConfigurationResponse: TLSInspectionConfigurationResponse
end

local record DescribeVpcEndpointAssociationInput
    VpcEndpointAssociationArn: string
end

local record DescribeVpcEndpointAssociationOutput
    VpcEndpointAssociation: VpcEndpointAssociation
    VpcEndpointAssociationStatus: VpcEndpointAssociationStatus
end

local record DetachRuleGroupsFromProxyConfigurationInput
    ProxyConfigurationName: string
    ProxyConfigurationArn: string
    RuleGroupNames: {string}
    RuleGroupArns: {string}
    UpdateToken: string
end

local record DetachRuleGroupsFromProxyConfigurationOutput
    ProxyConfiguration: ProxyConfiguration
    UpdateToken: string
end

local record DisassociateAvailabilityZonesInput
    UpdateToken: string
    FirewallArn: string
    FirewallName: string
    AvailabilityZoneMappings: {AvailabilityZoneMapping}
end

local record DisassociateAvailabilityZonesOutput
    FirewallArn: string
    FirewallName: string
    AvailabilityZoneMappings: {AvailabilityZoneMapping}
    UpdateToken: string
end

local record DisassociateSubnetsInput
    UpdateToken: string
    FirewallArn: string
    FirewallName: string
    SubnetIds: {string}
end

local record DisassociateSubnetsOutput
    FirewallArn: string
    FirewallName: string
    SubnetMappings: {SubnetMapping}
    UpdateToken: string
end

local record GetAnalysisReportResultsInput
    FirewallName: string
    AnalysisReportId: string
    FirewallArn: string
    NextToken: string
    MaxResults: number
end

local record GetAnalysisReportResultsOutput
    Status: string
    StartTime: number
    EndTime: number
    ReportTime: number
    AnalysisType: string
    NextToken: string
    AnalysisReportResults: {AnalysisTypeReportResult}
end

local record ListAnalysisReportsInput
    FirewallName: string
    FirewallArn: string
    NextToken: string
    MaxResults: number
end

local record ListAnalysisReportsOutput
    AnalysisReports: {AnalysisReport}
    NextToken: string
end

local record ListFirewallPoliciesInput
    NextToken: string
    MaxResults: number
end

local record ListFirewallPoliciesOutput
    NextToken: string
    FirewallPolicies: {FirewallPolicyMetadata}
end

local record ListFirewallsInput
    NextToken: string
    VpcIds: {string}
    MaxResults: number
end

local record ListFirewallsOutput
    NextToken: string
    Firewalls: {FirewallMetadata}
end

local record ListFlowOperationResultsInput
    FirewallArn: string
    FlowOperationId: string
    NextToken: string
    MaxResults: number
    AvailabilityZone: string
    VpcEndpointId: string
    VpcEndpointAssociationArn: string
end

local record ListFlowOperationResultsOutput
    FirewallArn: string
    AvailabilityZone: string
    VpcEndpointAssociationArn: string
    VpcEndpointId: string
    FlowOperationId: string
    FlowOperationStatus: string
    StatusMessage: string
    FlowRequestTimestamp: number
    Flows: {Flow}
    NextToken: string
end

local record ListFlowOperationsInput
    FirewallArn: string
    AvailabilityZone: string
    VpcEndpointAssociationArn: string
    VpcEndpointId: string
    FlowOperationType: string
    NextToken: string
    MaxResults: number
end

local record ListFlowOperationsOutput
    FlowOperations: {FlowOperationMetadata}
    NextToken: string
end

local record ListProxiesInput
    NextToken: string
    MaxResults: number
end

local record ListProxiesOutput
    Proxies: {ProxyMetadata}
    NextToken: string
end

local record ListProxyConfigurationsInput
    NextToken: string
    MaxResults: number
end

local record ListProxyConfigurationsOutput
    ProxyConfigurations: {ProxyConfigurationMetadata}
    NextToken: string
end

local record ListProxyRuleGroupsInput
    NextToken: string
    MaxResults: number
end

local record ListProxyRuleGroupsOutput
    ProxyRuleGroups: {ProxyRuleGroupMetadata}
    NextToken: string
end

local record ListRuleGroupsInput
    NextToken: string
    MaxResults: number
    Scope: string
    ManagedType: string
    SubscriptionStatus: string
    Type: string
end

local record ListRuleGroupsOutput
    NextToken: string
    RuleGroups: {RuleGroupMetadata}
end

local record ListTagsForResourceInput
    NextToken: string
    MaxResults: number
    ResourceArn: string
end

local record ListTagsForResourceOutput
    NextToken: string
    Tags: {Tag}
end

local record ListTLSInspectionConfigurationsInput
    NextToken: string
    MaxResults: number
end

local record ListTLSInspectionConfigurationsOutput
    NextToken: string
    TLSInspectionConfigurations: {TLSInspectionConfigurationMetadata}
end

local record ListVpcEndpointAssociationsInput
    NextToken: string
    MaxResults: number
    FirewallArn: string
end

local record ListVpcEndpointAssociationsOutput
    NextToken: string
    VpcEndpointAssociations: {VpcEndpointAssociationMetadata}
end

local record PutResourcePolicyInput
    ResourceArn: string
    Policy: string
end

local record PutResourcePolicyOutput
end

local record RejectNetworkFirewallTransitGatewayAttachmentInput
    TransitGatewayAttachmentId: string
end

local record RejectNetworkFirewallTransitGatewayAttachmentOutput
    TransitGatewayAttachmentId: string
    TransitGatewayAttachmentStatus: string
end

local record StartAnalysisReportInput
    FirewallName: string
    FirewallArn: string
    AnalysisType: string
end

local record StartAnalysisReportOutput
    AnalysisReportId: string
end

local record StartFlowCaptureInput
    FirewallArn: string
    AvailabilityZone: string
    VpcEndpointAssociationArn: string
    VpcEndpointId: string
    MinimumFlowAgeInSeconds: number
    FlowFilters: {FlowFilter}
end

local record StartFlowCaptureOutput
    FirewallArn: string
    FlowOperationId: string
    FlowOperationStatus: string
end

local record StartFlowFlushInput
    FirewallArn: string
    AvailabilityZone: string
    VpcEndpointAssociationArn: string
    VpcEndpointId: string
    MinimumFlowAgeInSeconds: number
    FlowFilters: {FlowFilter}
end

local record StartFlowFlushOutput
    FirewallArn: string
    FlowOperationId: string
    FlowOperationStatus: string
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

local record UpdateAvailabilityZoneChangeProtectionInput
    UpdateToken: string
    FirewallArn: string
    FirewallName: string
    AvailabilityZoneChangeProtection: boolean
end

local record UpdateAvailabilityZoneChangeProtectionOutput
    UpdateToken: string
    FirewallArn: string
    FirewallName: string
    AvailabilityZoneChangeProtection: boolean
end

local record UpdateFirewallAnalysisSettingsInput
    EnabledAnalysisTypes: {string}
    FirewallArn: string
    FirewallName: string
    UpdateToken: string
end

local record UpdateFirewallAnalysisSettingsOutput
    EnabledAnalysisTypes: {string}
    FirewallArn: string
    FirewallName: string
    UpdateToken: string
end

local record UpdateFirewallDeleteProtectionInput
    UpdateToken: string
    FirewallArn: string
    FirewallName: string
    DeleteProtection: boolean
end

local record UpdateFirewallDeleteProtectionOutput
    FirewallArn: string
    FirewallName: string
    DeleteProtection: boolean
    UpdateToken: string
end

local record UpdateFirewallDescriptionInput
    UpdateToken: string
    FirewallArn: string
    FirewallName: string
    Description: string
end

local record UpdateFirewallDescriptionOutput
    FirewallArn: string
    FirewallName: string
    Description: string
    UpdateToken: string
end

local record UpdateFirewallEncryptionConfigurationInput
    UpdateToken: string
    FirewallArn: string
    FirewallName: string
    EncryptionConfiguration: EncryptionConfiguration
end

local record UpdateFirewallEncryptionConfigurationOutput
    FirewallArn: string
    FirewallName: string
    UpdateToken: string
    EncryptionConfiguration: EncryptionConfiguration
end

local record UpdateFirewallPolicyInput
    UpdateToken: string
    FirewallPolicyArn: string
    FirewallPolicyName: string
    FirewallPolicy: FirewallPolicy
    Description: string
    DryRun: boolean
    EncryptionConfiguration: EncryptionConfiguration
end

local record UpdateFirewallPolicyOutput
    UpdateToken: string
    FirewallPolicyResponse: FirewallPolicyResponse
end

local record UpdateFirewallPolicyChangeProtectionInput
    UpdateToken: string
    FirewallArn: string
    FirewallName: string
    FirewallPolicyChangeProtection: boolean
end

local record UpdateFirewallPolicyChangeProtectionOutput
    UpdateToken: string
    FirewallArn: string
    FirewallName: string
    FirewallPolicyChangeProtection: boolean
end

local record UpdateLoggingConfigurationInput
    FirewallArn: string
    FirewallName: string
    LoggingConfiguration: LoggingConfiguration
    EnableMonitoringDashboard: boolean
end

local record UpdateLoggingConfigurationOutput
    FirewallArn: string
    FirewallName: string
    LoggingConfiguration: LoggingConfiguration
    EnableMonitoringDashboard: boolean
end

local record UpdateProxyInput
    NatGatewayId: string
    ProxyName: string
    ProxyArn: string
    ListenerPropertiesToAdd: {ListenerPropertyRequest}
    ListenerPropertiesToRemove: {ListenerPropertyRequest}
    TlsInterceptProperties: TlsInterceptPropertiesRequest
    UpdateToken: string
end

local record UpdateProxyOutput
    Proxy: Proxy
    UpdateToken: string
end

local record UpdateProxyConfigurationInput
    ProxyConfigurationName: string
    ProxyConfigurationArn: string
    DefaultRulePhaseActions: ProxyConfigDefaultRulePhaseActionsRequest
    UpdateToken: string
end

local record UpdateProxyConfigurationOutput
    ProxyConfiguration: ProxyConfiguration
    UpdateToken: string
end

local record UpdateProxyRuleInput
    ProxyRuleGroupName: string
    ProxyRuleGroupArn: string
    ProxyRuleName: string
    Description: string
    Action: string
    AddConditions: {ProxyRuleCondition}
    RemoveConditions: {ProxyRuleCondition}
    UpdateToken: string
end

local record UpdateProxyRuleOutput
    ProxyRule: ProxyRule
    RemovedConditions: {ProxyRuleCondition}
    UpdateToken: string
end

local record UpdateProxyRuleGroupPrioritiesInput
    ProxyConfigurationName: string
    ProxyConfigurationArn: string
    RuleGroups: {ProxyRuleGroupPriority}
    UpdateToken: string
end

local record UpdateProxyRuleGroupPrioritiesOutput
    ProxyRuleGroups: {ProxyRuleGroupPriorityResult}
    UpdateToken: string
end

local record UpdateProxyRulePrioritiesInput
    ProxyRuleGroupName: string
    ProxyRuleGroupArn: string
    RuleGroupRequestPhase: string
    Rules: {ProxyRulePriority}
    UpdateToken: string
end

local record UpdateProxyRulePrioritiesOutput
    ProxyRuleGroupName: string
    ProxyRuleGroupArn: string
    RuleGroupRequestPhase: string
    Rules: {ProxyRulePriority}
    UpdateToken: string
end

local record UpdateRuleGroupInput
    UpdateToken: string
    RuleGroupArn: string
    RuleGroupName: string
    RuleGroup: RuleGroup
    Rules: string
    Type: string
    Description: string
    DryRun: boolean
    EncryptionConfiguration: EncryptionConfiguration
    SourceMetadata: SourceMetadata
    AnalyzeRuleGroup: boolean
    SummaryConfiguration: SummaryConfiguration
end

local record UpdateRuleGroupOutput
    UpdateToken: string
    RuleGroupResponse: RuleGroupResponse
end

local record UpdateSubnetChangeProtectionInput
    UpdateToken: string
    FirewallArn: string
    FirewallName: string
    SubnetChangeProtection: boolean
end

local record UpdateSubnetChangeProtectionOutput
    UpdateToken: string
    FirewallArn: string
    FirewallName: string
    SubnetChangeProtection: boolean
end

local record UpdateTLSInspectionConfigurationInput
    TLSInspectionConfigurationArn: string
    TLSInspectionConfigurationName: string
    TLSInspectionConfiguration: TLSInspectionConfiguration
    Description: string
    EncryptionConfiguration: EncryptionConfiguration
    UpdateToken: string
end

local record UpdateTLSInspectionConfigurationOutput
    UpdateToken: string
    TLSInspectionConfigurationResponse: TLSInspectionConfigurationResponse
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InsufficientCapacityException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InsufficientCapacityException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InsufficientCapacityException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InsufficientCapacityException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InsufficientCapacityException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InsufficientCapacityException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InsufficientCapacityException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidResourcePolicyException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidResourcePolicyException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceOwnerCheckException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceOwnerCheckException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceOwnerCheckException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceOwnerCheckException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record LogDestinationPermissionException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceOwnerCheckException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local type RuleGroupRequestPhase = "PRE_DNS" | "PRE_REQ" | "POST_RES"

local type FlowOperationStatus = "COMPLETED" | "IN_PROGRESS" | "FAILED" | "COMPLETED_WITH_ERRORS"

local type EnabledAnalysisType = "TLS_SNI" | "HTTP_HOST"

local type RuleGroupType = "STATELESS" | "STATEFUL" | "STATEFUL_DOMAIN"

local type FlowOperationType = "FLOW_FLUSH" | "FLOW_CAPTURE"

local type TransitGatewayAttachmentStatus = "CREATING" | "DELETING" | "DELETED" | "FAILED" | "ERROR" | "READY" | "PENDING_ACCEPTANCE" | "REJECTING" | "REJECTED"

local type ResourceManagedStatus = "MANAGED" | "ACCOUNT"

local type FirewallStatusValue = "PROVISIONING" | "DELETING" | "READY"

local type ProxyRulePhaseAction = "ALLOW" | "DENY" | "ALERT"

local type SubscriptionStatus = "NOT_SUBSCRIBED" | "SUBSCRIBED"

local type ResourceManagedType = "AWS_MANAGED_THREAT_SIGNATURES" | "AWS_MANAGED_DOMAIN_LISTS" | "ACTIVE_THREAT_DEFENSE" | "PARTNER_MANAGED"

local record M
    AcceptNetworkFirewallTransitGatewayAttachmentInput: AcceptNetworkFirewallTransitGatewayAttachmentInput
    AcceptNetworkFirewallTransitGatewayAttachmentOutput: AcceptNetworkFirewallTransitGatewayAttachmentOutput
    AssociateAvailabilityZonesInput: AssociateAvailabilityZonesInput
    AssociateAvailabilityZonesOutput: AssociateAvailabilityZonesOutput
    AssociateFirewallPolicyInput: AssociateFirewallPolicyInput
    AssociateFirewallPolicyOutput: AssociateFirewallPolicyOutput
    AssociateSubnetsInput: AssociateSubnetsInput
    AssociateSubnetsOutput: AssociateSubnetsOutput
    AttachRuleGroupsToProxyConfigurationInput: AttachRuleGroupsToProxyConfigurationInput
    AttachRuleGroupsToProxyConfigurationOutput: AttachRuleGroupsToProxyConfigurationOutput
    CreateFirewallInput: CreateFirewallInput
    CreateFirewallOutput: CreateFirewallOutput
    CreateFirewallPolicyInput: CreateFirewallPolicyInput
    CreateFirewallPolicyOutput: CreateFirewallPolicyOutput
    CreateProxyInput: CreateProxyInput
    CreateProxyOutput: CreateProxyOutput
    CreateProxyConfigurationInput: CreateProxyConfigurationInput
    CreateProxyConfigurationOutput: CreateProxyConfigurationOutput
    CreateProxyRuleGroupInput: CreateProxyRuleGroupInput
    CreateProxyRuleGroupOutput: CreateProxyRuleGroupOutput
    CreateProxyRulesInput: CreateProxyRulesInput
    CreateProxyRulesOutput: CreateProxyRulesOutput
    CreateRuleGroupInput: CreateRuleGroupInput
    CreateRuleGroupOutput: CreateRuleGroupOutput
    CreateTLSInspectionConfigurationInput: CreateTLSInspectionConfigurationInput
    CreateTLSInspectionConfigurationOutput: CreateTLSInspectionConfigurationOutput
    CreateVpcEndpointAssociationInput: CreateVpcEndpointAssociationInput
    CreateVpcEndpointAssociationOutput: CreateVpcEndpointAssociationOutput
    DeleteFirewallInput: DeleteFirewallInput
    DeleteFirewallOutput: DeleteFirewallOutput
    DeleteFirewallPolicyInput: DeleteFirewallPolicyInput
    DeleteFirewallPolicyOutput: DeleteFirewallPolicyOutput
    DeleteNetworkFirewallTransitGatewayAttachmentInput: DeleteNetworkFirewallTransitGatewayAttachmentInput
    DeleteNetworkFirewallTransitGatewayAttachmentOutput: DeleteNetworkFirewallTransitGatewayAttachmentOutput
    DeleteProxyInput: DeleteProxyInput
    DeleteProxyOutput: DeleteProxyOutput
    DeleteProxyConfigurationInput: DeleteProxyConfigurationInput
    DeleteProxyConfigurationOutput: DeleteProxyConfigurationOutput
    DeleteProxyRuleGroupInput: DeleteProxyRuleGroupInput
    DeleteProxyRuleGroupOutput: DeleteProxyRuleGroupOutput
    DeleteProxyRulesInput: DeleteProxyRulesInput
    DeleteProxyRulesOutput: DeleteProxyRulesOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteRuleGroupInput: DeleteRuleGroupInput
    DeleteRuleGroupOutput: DeleteRuleGroupOutput
    DeleteTLSInspectionConfigurationInput: DeleteTLSInspectionConfigurationInput
    DeleteTLSInspectionConfigurationOutput: DeleteTLSInspectionConfigurationOutput
    DeleteVpcEndpointAssociationInput: DeleteVpcEndpointAssociationInput
    DeleteVpcEndpointAssociationOutput: DeleteVpcEndpointAssociationOutput
    DescribeFirewallInput: DescribeFirewallInput
    DescribeFirewallOutput: DescribeFirewallOutput
    DescribeFirewallMetadataInput: DescribeFirewallMetadataInput
    DescribeFirewallMetadataOutput: DescribeFirewallMetadataOutput
    DescribeFirewallPolicyInput: DescribeFirewallPolicyInput
    DescribeFirewallPolicyOutput: DescribeFirewallPolicyOutput
    DescribeFlowOperationInput: DescribeFlowOperationInput
    DescribeFlowOperationOutput: DescribeFlowOperationOutput
    DescribeLoggingConfigurationInput: DescribeLoggingConfigurationInput
    DescribeLoggingConfigurationOutput: DescribeLoggingConfigurationOutput
    DescribeProxyInput: DescribeProxyInput
    DescribeProxyOutput: DescribeProxyOutput
    DescribeProxyConfigurationInput: DescribeProxyConfigurationInput
    DescribeProxyConfigurationOutput: DescribeProxyConfigurationOutput
    DescribeProxyRuleInput: DescribeProxyRuleInput
    DescribeProxyRuleOutput: DescribeProxyRuleOutput
    DescribeProxyRuleGroupInput: DescribeProxyRuleGroupInput
    DescribeProxyRuleGroupOutput: DescribeProxyRuleGroupOutput
    DescribeResourcePolicyInput: DescribeResourcePolicyInput
    DescribeResourcePolicyOutput: DescribeResourcePolicyOutput
    DescribeRuleGroupInput: DescribeRuleGroupInput
    DescribeRuleGroupOutput: DescribeRuleGroupOutput
    DescribeRuleGroupMetadataInput: DescribeRuleGroupMetadataInput
    DescribeRuleGroupMetadataOutput: DescribeRuleGroupMetadataOutput
    DescribeRuleGroupSummaryInput: DescribeRuleGroupSummaryInput
    DescribeRuleGroupSummaryOutput: DescribeRuleGroupSummaryOutput
    DescribeTLSInspectionConfigurationInput: DescribeTLSInspectionConfigurationInput
    DescribeTLSInspectionConfigurationOutput: DescribeTLSInspectionConfigurationOutput
    DescribeVpcEndpointAssociationInput: DescribeVpcEndpointAssociationInput
    DescribeVpcEndpointAssociationOutput: DescribeVpcEndpointAssociationOutput
    DetachRuleGroupsFromProxyConfigurationInput: DetachRuleGroupsFromProxyConfigurationInput
    DetachRuleGroupsFromProxyConfigurationOutput: DetachRuleGroupsFromProxyConfigurationOutput
    DisassociateAvailabilityZonesInput: DisassociateAvailabilityZonesInput
    DisassociateAvailabilityZonesOutput: DisassociateAvailabilityZonesOutput
    DisassociateSubnetsInput: DisassociateSubnetsInput
    DisassociateSubnetsOutput: DisassociateSubnetsOutput
    GetAnalysisReportResultsInput: GetAnalysisReportResultsInput
    GetAnalysisReportResultsOutput: GetAnalysisReportResultsOutput
    ListAnalysisReportsInput: ListAnalysisReportsInput
    ListAnalysisReportsOutput: ListAnalysisReportsOutput
    ListFirewallPoliciesInput: ListFirewallPoliciesInput
    ListFirewallPoliciesOutput: ListFirewallPoliciesOutput
    ListFirewallsInput: ListFirewallsInput
    ListFirewallsOutput: ListFirewallsOutput
    ListFlowOperationResultsInput: ListFlowOperationResultsInput
    ListFlowOperationResultsOutput: ListFlowOperationResultsOutput
    ListFlowOperationsInput: ListFlowOperationsInput
    ListFlowOperationsOutput: ListFlowOperationsOutput
    ListProxiesInput: ListProxiesInput
    ListProxiesOutput: ListProxiesOutput
    ListProxyConfigurationsInput: ListProxyConfigurationsInput
    ListProxyConfigurationsOutput: ListProxyConfigurationsOutput
    ListProxyRuleGroupsInput: ListProxyRuleGroupsInput
    ListProxyRuleGroupsOutput: ListProxyRuleGroupsOutput
    ListRuleGroupsInput: ListRuleGroupsInput
    ListRuleGroupsOutput: ListRuleGroupsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTLSInspectionConfigurationsInput: ListTLSInspectionConfigurationsInput
    ListTLSInspectionConfigurationsOutput: ListTLSInspectionConfigurationsOutput
    ListVpcEndpointAssociationsInput: ListVpcEndpointAssociationsInput
    ListVpcEndpointAssociationsOutput: ListVpcEndpointAssociationsOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    RejectNetworkFirewallTransitGatewayAttachmentInput: RejectNetworkFirewallTransitGatewayAttachmentInput
    RejectNetworkFirewallTransitGatewayAttachmentOutput: RejectNetworkFirewallTransitGatewayAttachmentOutput
    StartAnalysisReportInput: StartAnalysisReportInput
    StartAnalysisReportOutput: StartAnalysisReportOutput
    StartFlowCaptureInput: StartFlowCaptureInput
    StartFlowCaptureOutput: StartFlowCaptureOutput
    StartFlowFlushInput: StartFlowFlushInput
    StartFlowFlushOutput: StartFlowFlushOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAvailabilityZoneChangeProtectionInput: UpdateAvailabilityZoneChangeProtectionInput
    UpdateAvailabilityZoneChangeProtectionOutput: UpdateAvailabilityZoneChangeProtectionOutput
    UpdateFirewallAnalysisSettingsInput: UpdateFirewallAnalysisSettingsInput
    UpdateFirewallAnalysisSettingsOutput: UpdateFirewallAnalysisSettingsOutput
    UpdateFirewallDeleteProtectionInput: UpdateFirewallDeleteProtectionInput
    UpdateFirewallDeleteProtectionOutput: UpdateFirewallDeleteProtectionOutput
    UpdateFirewallDescriptionInput: UpdateFirewallDescriptionInput
    UpdateFirewallDescriptionOutput: UpdateFirewallDescriptionOutput
    UpdateFirewallEncryptionConfigurationInput: UpdateFirewallEncryptionConfigurationInput
    UpdateFirewallEncryptionConfigurationOutput: UpdateFirewallEncryptionConfigurationOutput
    UpdateFirewallPolicyInput: UpdateFirewallPolicyInput
    UpdateFirewallPolicyOutput: UpdateFirewallPolicyOutput
    UpdateFirewallPolicyChangeProtectionInput: UpdateFirewallPolicyChangeProtectionInput
    UpdateFirewallPolicyChangeProtectionOutput: UpdateFirewallPolicyChangeProtectionOutput
    UpdateLoggingConfigurationInput: UpdateLoggingConfigurationInput
    UpdateLoggingConfigurationOutput: UpdateLoggingConfigurationOutput
    UpdateProxyInput: UpdateProxyInput
    UpdateProxyOutput: UpdateProxyOutput
    UpdateProxyConfigurationInput: UpdateProxyConfigurationInput
    UpdateProxyConfigurationOutput: UpdateProxyConfigurationOutput
    UpdateProxyRuleInput: UpdateProxyRuleInput
    UpdateProxyRuleOutput: UpdateProxyRuleOutput
    UpdateProxyRuleGroupPrioritiesInput: UpdateProxyRuleGroupPrioritiesInput
    UpdateProxyRuleGroupPrioritiesOutput: UpdateProxyRuleGroupPrioritiesOutput
    UpdateProxyRulePrioritiesInput: UpdateProxyRulePrioritiesInput
    UpdateProxyRulePrioritiesOutput: UpdateProxyRulePrioritiesOutput
    UpdateRuleGroupInput: UpdateRuleGroupInput
    UpdateRuleGroupOutput: UpdateRuleGroupOutput
    UpdateSubnetChangeProtectionInput: UpdateSubnetChangeProtectionInput
    UpdateSubnetChangeProtectionOutput: UpdateSubnetChangeProtectionOutput
    UpdateTLSInspectionConfigurationInput: UpdateTLSInspectionConfigurationInput
    UpdateTLSInspectionConfigurationOutput: UpdateTLSInspectionConfigurationOutput
end

return M
